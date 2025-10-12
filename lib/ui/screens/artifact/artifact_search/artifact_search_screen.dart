import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/data/wonder_data.dart';
import 'package:wonders/models/firestore_artifact.dart';
import 'package:wonders/services/firestore_artifact_service.dart';
import 'package:wonders/ui/common/app_icons.dart';
import 'package:wonders/ui/common/controls/app_header.dart';
import 'package:wonders/ui/common/controls/app_loading_indicator.dart';
import 'package:wonders/ui/common/static_text_scale.dart';
import 'package:wonders/ui/common/utils/app_haptics.dart';
import 'package:wonders/ui/screens/artifact/artifact_search/time_range_selector/expanding_time_range_selector.dart';

part 'widgets/_result_tile.dart';
part 'widgets/_results_grid.dart';
part 'widgets/_search_input.dart';

class ArtifactSearchScreen extends StatefulWidget {
  const ArtifactSearchScreen({super.key, required this.type});
  final WonderType type;

  @override
  State<ArtifactSearchScreen> createState() => _ArtifactSearchScreenState();
}

class _ArtifactSearchScreenState extends State<ArtifactSearchScreen> {
  final _firestoreService = FirestoreArtifactService();
  late final Stream<List<FirestoreArtifact>> _stream = _firestoreService.getAllArtifacts();

  String _query = '';
  late double _startYear, _endYear;
  WonderData? _wonder;

  late final PanelController panelController = PanelController(settingsLogic.isSearchPanelOpen.value)
    ..addListener(_handlePanelControllerChanged);
  late final SearchVizController vizController;

  @override
  void initState() {
    super.initState();
    try {
      _wonder = wondersLogic.getData(widget.type);
    } catch (e) {
      _wonder = null;
    }
    _startYear = (_wonder?.artifactStartYr ?? wondersLogic.timelineStartYear ?? 0) * 1.0;
    _endYear = (_wonder?.artifactEndYr ?? wondersLogic.timelineEndYear ?? 0) * 1.0;

    vizController = SearchVizController(
      [],
      minYear: wondersLogic.timelineStartYear,
      maxYear: wondersLogic.timelineEndYear,
    );

    panelController.addListener(() => AppHaptics.lightImpact());
  }

  @override
  void dispose() {
    panelController.dispose();
    vizController.dispose();
    super.dispose();
  }

  void _handleSearchSubmitted(String query) => setState(() => _query = query);
  void _handleTimelineChanged(double start, double end) => setState(() {
        _startYear = start;
        _endYear = end;
      });
  void _handleResultPressed(FirestoreArtifact artifact) => context.go(ScreenPaths.artifact(artifact.id));
  void _handlePanelControllerChanged() => settingsLogic.isSearchPanelOpen.value = panelController.value;

  @override
  Widget build(BuildContext context) {
    if (_wonder == null) {
      return const Scaffold(body: Center(child: Text('Wonder data not found.')));
    }
    final wonder = _wonder!;

    return StreamBuilder<List<FirestoreArtifact>>(
      stream: _stream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(body: Center(child: Text('Error loading artifacts.')));
        }
        if (!snapshot.hasData) {
          return const Scaffold(body: Center(child: AppLoadingIndicator()));
        }

        final allArtifacts = snapshot.data!;
        
        // Apply text search
        final searchResults = allArtifacts.where((artifact) {
          if (_query.isEmpty) return true;
          final q = RegExp('\\b$_query{s?}\\b', caseSensitive: false);
          return artifact.title.contains(q) ||
              artifact.description.contains(q) ||
              artifact.culture.contains(q);
        }).toList();

        // Apply year filter
        final filteredResults = searchResults.where((artifact) {
          return artifact.objectBeginYear >= _startYear && artifact.objectBeginYear <= _endYear;
        }).toList();

        // Update visualization controller
        vizController.value = searchResults.map((a) => (year: a.objectBeginYear)).toList();
        vizController.color = Color.lerp($styles.colors.accent1, $styles.colors.black, 0.2)!;

        Widget content = Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppHeader(title: $strings.artifactsSearchTitleBrowse, subtitle: wonder.title),
            Container(
              color: $styles.colors.black,
              padding: EdgeInsets.fromLTRB($styles.insets.sm, $styles.insets.sm, $styles.insets.sm, 0),
              child: _SearchInput(onSubmit: _handleSearchSubmitted, wonder: wonder),
            ),
            Container(
              color: $styles.colors.black,
              padding: EdgeInsets.all($styles.insets.xs * 1.5),
              child: _buildStatusText(context, searchResults.length, filteredResults.length),
            ),
            Expanded(
              child: RepaintBoundary(
                child: filteredResults.isEmpty
                    ? _buildEmptyIndicator(context, searchResults.isEmpty)
                    : _ResultsGrid(
                        searchResults: filteredResults,
                        onPressed: _handleResultPressed,
                      ),
              ),
            ),
          ],
        );

        return Scaffold(
          body: Stack(
            children: [
              Positioned.fill(child: ColoredBox(color: $styles.colors.greyStrong, child: content)),
              Positioned.fill(
                child: RepaintBoundary(
                  child: ExpandingTimeRangeSelector(
                    wonder: wonder,
                    startYear: _startYear,
                    endYear: _endYear,
                    panelController: panelController,
                    vizController: vizController,
                    onChanged: _handleTimelineChanged,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildStatusText(BuildContext context, int searchResultsCount, int filteredResultsCount) {
    final TextStyle statusStyle = $styles.text.body.copyWith(color: $styles.colors.accent1);
    if (searchResultsCount == 0) {
      return StaticTextScale(
        child: Text(
          $strings.artifactsSearchLabelNotFound,
          textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
          style: statusStyle,
          textAlign: TextAlign.center,
        ),
      );
    }
    return MergeSemantics(
      child: StaticTextScale(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Gap($styles.insets.sm),
          Text(
            $strings.artifactsSearchLabelFound(searchResultsCount, filteredResultsCount),
            textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
            style: statusStyle,
          ),
          AppBtn.basic(
            semanticLabel: $strings.artifactsSearchButtonToggle,
            onPressed: () => panelController.toggle(),
            enableFeedback: false, // handled when panelController changes.
            child: Text(
              $strings.artifactsSearchSemanticTimeframe,
              textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
              style: statusStyle.copyWith(decoration: TextDecoration.underline),
            ),
          ),
          Gap($styles.insets.sm),
        ]),
      ),
    );
  }

  Widget _buildEmptyIndicator(BuildContext context, bool searchResultsEmpty) {
    final strings = $strings;
    String text =
        '${strings.artifactsSearchLabelAdjust} ${searchResultsEmpty ? strings.artifactsSearchLabelSearch : strings.artifactsSearchLabelTimeframe}';
    IconData icon = searchResultsEmpty ? Icons.search_outlined : Icons.edit_calendar_outlined;
    Color color = $styles.colors.greyMedium;
    Widget widget = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        Icon(icon, size: $styles.insets.xl, color: color.withOpacity(0.5)),
        Gap($styles.insets.xs),
        Text(text, style: $styles.text.body.copyWith(color: color)),
        const Spacer(flex: 3),
      ],
    );
    if (!searchResultsEmpty) {
      widget = GestureDetector(child: widget, onTap: () => panelController.toggle());
    }
    return widget;
  }
}

class PanelController extends ValueNotifier<bool> {
  PanelController(super.value);
  void toggle() => value = !value;
}

// this is basically a ValueNotifier, but it always notifies when the value is assigned, w/o checking equality.
class SearchVizController extends ChangeNotifier {
  SearchVizController(
    List<({int year})> value, {
    required this.minYear,
    required this.maxYear,
    this.color = Colors.black,
  }) : _value = value;

  Color color;
  final int minYear;
  final int maxYear;

  List<({int year})> _value;
  List<({int year})> get value => _value;
  set value(List<({int year})> value) {
    if (_value != value) {
      _value = value;
      notifyListeners();
    }
  }
}
