import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/data/wonder_data.dart';
import 'package:wonders/logic/data/wonders_data/search/search_data.dart';

part 'search/colosseum_search_data.dart';

class ColosseumData extends WonderData {
  ColosseumData()
      : super(
          searchData: _searchData, // included as a part from ./search/
          searchSuggestions: _searchSuggestions, // included as a part from ./search/
          type: WonderType.colosseum,
          title: $strings.colosseumTitle,
          subTitle: $strings.colosseumSubTitle,
          regionTitle: $strings.colosseumRegionTitle,
          videoId: 'GXoEpNjgKzg',
          startYr: 70,
          endYr: 80,
          artifactStartYr: 0,
          artifactEndYr: 500,
          artifactCulture: $strings.colosseumArtifactCulture,
          artifactGeolocation: $strings.colosseumArtifactGeolocation,
          lat: 14.770549,
          lng: -60.893170,
          unsplashCollectionId: 'VPdti8Kjq9o',
          pullQuote1Top: $strings.colosseumPullQuote1Top,
          pullQuote1Bottom: $strings.colosseumPullQuote1Bottom,
          pullQuote1Author: '',
          pullQuote2: $strings.colosseumPullQuote2,
          pullQuote2Author: $strings.colosseumPullQuote2Author,
          callout1: $strings.colosseumCallout1,
          callout2: $strings.colosseumCallout2,
          videoCaption: $strings.colosseumVideoCaption,
          mapCaption: $strings.colosseumMapCaption,
          historyInfo1: $strings.colosseumHistoryInfo1,
          historyInfo2: $strings.colosseumHistoryInfo2,
          constructionInfo1: $strings.colosseumConstructionInfo1,
          constructionInfo2: $strings.colosseumConstructionInfo2,
          locationInfo1: $strings.colosseumLocationInfo1,
          locationInfo2: $strings.colosseumLocationInfo2,
    highlightArtifacts: const [
      'colosseum-roman-coin',
      'colosseum-gladiator-helmet',
      'colosseum-oil-lamp',
      'colosseum-travertine-block',
    ],
    localImagePaths: const [
      'assets/images/wonder_galleries/colosseum/334a26ffcc8.jpg',
      'assets/images/wonder_galleries/colosseum/egrhst.jpg',
      'assets/images/wonder_galleries/colosseum/6a65aef.jpg',
      'assets/images/wonder_galleries/colosseum/4.jpg',
      'assets/images/wonder_galleries/colosseum/5.jpg',
      'assets/images/wonder_galleries/colosseum/65aef.jpg',
      'assets/images/wonder_galleries/colosseum/2.jpg',
      'assets/images/wonder_galleries/colosseum/3.jpg',
      'assets/images/wonder_galleries/colosseum/1.jpg',
    ],
    events: const {},
  );
}
