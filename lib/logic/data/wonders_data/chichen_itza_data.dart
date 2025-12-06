import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/data/wonder_data.dart';
import 'package:wonders/logic/data/wonders_data/search/search_data.dart';

part 'search/chichen_itza_search_data.dart';

class ChichenItzaData extends WonderData {
  ChichenItzaData()
      : super(
          searchData: _searchData, // included as a part from ./search/
          searchSuggestions: _searchSuggestions, // included as a part from ./search/
          type: WonderType.chichenItza,
          title: $strings.chichenItzaTitle,
          subTitle: $strings.chichenItzaSubTitle,
          regionTitle: $strings.chichenItzaRegionTitle,
          videoId: '0u30uIo5QBo',
          startYr: 550,
          endYr: 1550,
          artifactStartYr: 500,
          artifactEndYr: 1600,
          artifactCulture: $strings.chichenItzaArtifactCulture,
          artifactGeolocation: $strings.chichenItzaArtifactGeolocation,
          lat: 14.444206064215724,
          lng: -61.03943882842828,
          unsplashCollectionId: 'SUK0tuMnLLw',
          pullQuote1Top: $strings.chichenItzaPullQuote1Top,
          pullQuote1Bottom: $strings.chichenItzaPullQuote1Bottom,
          pullQuote1Author: '',
          pullQuote2: $strings.chichenItzaPullQuote2,
          pullQuote2Author: $strings.chichenItzaPullQuote2Author,
          callout1: $strings.chichenItzaCallout1,
          callout2: $strings.chichenItzaCallout2,
          videoCaption: $strings.chichenItzaVideoCaption,
          mapCaption: $strings.chichenItzaMapCaption,
          historyInfo1: $strings.chichenItzaHistoryInfo1,
          historyInfo2: $strings.chichenItzaHistoryInfo2,
          constructionInfo1: $strings.chichenItzaConstructionInfo1,
          constructionInfo2: $strings.chichenItzaConstructionInfo2,
          locationInfo1: $strings.chichenItzaLocationInfo1,
          locationInfo2: $strings.chichenItzaLocationInfo2,
    highlightArtifacts: const [
      'chichen-itza-chac-mool',
      'chichen-itza-obsidian-blade',
      'chichen-itza-quetzalcoatl',
      'chichen-itza-limestone-carving',
    ],
    localImagePaths: const [
      'assets/images/wonder_galleries/chichen_itza/4.jpg',
      'assets/images/wonder_galleries/chichen_itza/5.jpg',
      'assets/images/wonder_galleries/chichen_itza/2.jpg',
      'assets/images/wonder_galleries/chichen_itza/3.jpg',
      'assets/images/wonder_galleries/chichen_itza/1.jpg',
    ],
    events: const {},
  );
}
