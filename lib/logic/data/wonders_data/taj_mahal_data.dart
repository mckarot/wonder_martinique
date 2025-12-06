import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/data/wonder_data.dart';
import 'package:wonders/logic/data/wonders_data/search/search_data.dart';

part 'search/taj_mahal_search_data.dart';

class TajMahalData extends WonderData {
  TajMahalData()
      : super(
          searchData: _searchData, // included as a part from ./search/
          searchSuggestions: _searchSuggestions, // included as a part from ./search/
          type: WonderType.tajMahal,
          title: $strings.tajMahalTitle,
          subTitle: $strings.tajMahalSubTitle,
          regionTitle: $strings.tajMahalRegionTitle,
          videoId: '8FiKUMJ1Pbs',
          startYr: 1632,
          endYr: 1653,
          artifactStartYr: 1600,
          artifactEndYr: 1700,
          artifactCulture: $strings.tajMahalArtifactCulture,
          artifactGeolocation: $strings.tajMahalArtifactGeolocation,
          lat: 14.490998347217978,
          lng: -61.08015193763347,
          unsplashCollectionId: '684IRta86_c',
          pullQuote1Top: $strings.tajMahalPullQuote1Top,
          pullQuote1Bottom: $strings.tajMahalPullQuote1Bottom,
          pullQuote1Author: $strings.tajMahalPullQuote1Author,
          pullQuote2: $strings.tajMahalPullQuote2,
          pullQuote2Author: $strings.tajMahalPullQuote2Author,
          callout1: $strings.tajMahalCallout1,
          callout2: $strings.tajMahalCallout2,
          videoCaption: $strings.tajMahalVideoCaption,
          mapCaption: $strings.tajMahalMapCaption,
          historyInfo1: $strings.tajMahalHistoryInfo1,
          historyInfo2: $strings.tajMahalHistoryInfo2,
          constructionInfo1: $strings.tajMahalConstructionInfo1,
          constructionInfo2: $strings.tajMahalConstructionInfo2,
          locationInfo1: $strings.tajMahalLocationInfo1,
          locationInfo2: $strings.tajMahalLocationInfo2,
    highlightArtifacts: const [
      'taj-mahal-mughal-painting',
      'taj-mahal-marble-inlay-box',
      'taj-mahal-jade-wine-cup',
      'taj-mahal-shah-jahan-dagger',
    ],
    localImagePaths: const [
      'assets/images/wonder_galleries/taj_mahal/4.jpg',
      'assets/images/wonder_galleries/taj_mahal/5.jpg',
      'assets/images/wonder_galleries/taj_mahal/2.jpg',
      'assets/images/wonder_galleries/taj_mahal/3.jpg',
      'assets/images/wonder_galleries/taj_mahal/1.jpg',
    ],
    events: const {},
  );
}
