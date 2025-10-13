import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/data/wonder_data.dart';
import 'package:wonders/logic/data/wonders_data/search/search_data.dart';

part 'search/great_wall_search_data.dart';

class GreatWallData extends WonderData {
  GreatWallData()
      : super(
          searchData: _searchData, // included as a part from ./search/
          searchSuggestions: _searchSuggestions, // included as a part from ./search/
          type: WonderType.greatWall,
          title: $strings.greatWallTitle,
          subTitle: $strings.greatWallSubTitle,
          regionTitle: $strings.greatWallRegionTitle,
          videoId: 'do1Go22Wu8o',
          startYr: -700,
          endYr: 1644,
          artifactStartYr: -700,
          artifactEndYr: 1650,
          artifactCulture: $strings.greatWallArtifactCulture,
          artifactGeolocation: $strings.greatWallArtifactGeolocation,
          lat: 40.43199751120627,
          lng: 116.57040708482984,
          unsplashCollectionId: 'Kg_h04xvZEo',
          pullQuote1Top: $strings.greatWallPullQuote1Top,
          pullQuote1Bottom: $strings.greatWallPullQuote1Bottom,
          pullQuote1Author: '', //No key because it doesn't generate for empty values
          pullQuote2: $strings.greatWallPullQuote2,
          pullQuote2Author: $strings.greatWallPullQuote2Author,
          callout1: $strings.greatWallCallout1,
          callout2: $strings.greatWallCallout2,
          videoCaption: $strings.greatWallVideoCaption,
          mapCaption: $strings.greatWallMapCaption,
          historyInfo1: $strings.greatWallHistoryInfo1,
          historyInfo2: $strings.greatWallHistoryInfo2,
          constructionInfo1: $strings.greatWallConstructionInfo1,
          constructionInfo2: $strings.greatWallConstructionInfo2,
          locationInfo1: $strings.greatWallLocationInfo1,
          locationInfo2: $strings.greatWallLocationInfo2,
    highlightArtifacts: const [
      'great-wall-ming-vase',
      'great-wall-sancai-horse',
      'great-wall-jade-pendant',
      'great-wall-stone-soldier',
    ],
    localImagePaths: const [
      'assets/images/wonder_galleries/great_wall_of_china/1.jpg',
      'assets/images/wonder_galleries/great_wall_of_china/2.jpg',
      'assets/images/wonder_galleries/great_wall_of_china/3.jpg',
      'assets/images/wonder_galleries/great_wall_of_china/4.jpg',
      'assets/images/wonder_galleries/great_wall_of_china/5.jpg',
    ],
    events: const {
      -221: 'Qin Shi Huang unifies China and begins construction of the Great Wall.',
      -206: 'The Han Dynasty expands and fortifies the wall.',
      1368: 'The Ming Dynasty rebuilds and strengthens the wall to its most famous state.',
      1644: 'The fall of the Ming Dynasty marks the end of the wall as a major military defense.',
      1987: 'The Great Wall is declared a UNESCO World Heritage site.',
    },
  );
}
