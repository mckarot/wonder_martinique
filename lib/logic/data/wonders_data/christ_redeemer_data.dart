import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/data/wonder_data.dart';
import 'package:wonders/logic/data/wonders_data/search/search_data.dart';

part 'search/christ_redeemer_search_data.dart';

class ChristRedeemerData extends WonderData {
  ChristRedeemerData()
      : super(
          searchData: _searchData, // included as a part from ./search/
          searchSuggestions: _searchSuggestions, // included as a part from ./search/
          type: WonderType.christRedeemer,
          title: $strings.christRedeemerTitle,
          subTitle: $strings.christRedeemerSubTitle,
          regionTitle: $strings.christRedeemerRegionTitle,
          videoId: 'k_615AauSds',
          startYr: 1922,
          endYr: 1931,
          artifactStartYr: 1600,
          artifactEndYr: 2100,
          artifactCulture: '',
          artifactGeolocation: $strings.christRedeemerArtifactGeolocation,
          lat: 14.808611,
          lng: -61.174168,
          unsplashCollectionId: 'dPgX5iK8Ufo',
          pullQuote1Top: $strings.christRedeemerPullQuote1Top,
          pullQuote1Bottom: $strings.christRedeemerPullQuote1Bottom,
          pullQuote1Author: '',
          pullQuote2: $strings.christRedeemerPullQuote2,
          pullQuote2Author: $strings.christRedeemerPullQuote2Author,
          callout1: $strings.christRedeemerCallout1,
          callout2: $strings.christRedeemerCallout2,
          videoCaption: $strings.christRedeemerVideoCaption,
          mapCaption: $strings.christRedeemerMapCaption,
          historyInfo1: $strings.christRedeemerHistoryInfo1,
          historyInfo2: $strings.christRedeemerHistoryInfo2,
          constructionInfo1: $strings.christRedeemerConstructionInfo1,
          constructionInfo2: $strings.christRedeemerConstructionInfo2,
          locationInfo1: $strings.christRedeemerLocationInfo1,
          locationInfo2: $strings.christRedeemerLocationInfo2,
    highlightArtifacts: const [
      'christ-the-redeemer-mosaic',
      'christ-the-redeemer-postcard',
      'christ-the-redeemer-sign',
      'christ-the-redeemer-soapstone',
    ],
    localImagePaths: const [
      'assets/images/wonder_galleries/christ_the_redeemer/4.jpg',
      'assets/images/wonder_galleries/christ_the_redeemer/5.jpg',
      'assets/images/wonder_galleries/christ_the_redeemer/2.jpg',
      'assets/images/wonder_galleries/christ_the_redeemer/3.jpg',
      'assets/images/wonder_galleries/christ_the_redeemer/1.jpg',
    ],
    events: const {},
  );
}
