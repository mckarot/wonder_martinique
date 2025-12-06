import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/data/wonder_data.dart';
import 'package:wonders/logic/data/wonders_data/search/search_data.dart';

part 'search/petra_search_data.dart';

class PetraData extends WonderData {
  PetraData()
      : super(
          searchData: _searchData, // included as a part from ./search/
          searchSuggestions: _searchSuggestions, // included as a part from ./search/
          type: WonderType.petra,
          title: $strings.petraTitle,
          subTitle: $strings.petraSubTitle,
          regionTitle: $strings.petraRegionTitle,
          videoId: 'ezDiSkOU0wc',
          startYr: -312,
          endYr: 100,
          artifactStartYr: -500,
          artifactEndYr: 500,
          artifactCulture: $strings.petraArtifactCulture,
          artifactGeolocation: $strings.petraArtifactGeolocation,
          lat: 30.328830750209903,
          lng: 35.44398203484667,
          unsplashCollectionId: 'qWQJbDvCMW8',
          pullQuote1Top: $strings.petraPullQuote1Top,
          pullQuote1Bottom: $strings.petraPullQuote1Bottom,
          pullQuote1Author: $strings.petraPullQuote1Author,
          pullQuote2: $strings.petraPullQuote2,
          pullQuote2Author: $strings.petraPullQuote2Author,
          callout1: $strings.petraCallout1,
          callout2: $strings.petraCallout2,
          videoCaption: $strings.petraVideoCaption,
          mapCaption: $strings.petraMapCaption,
          historyInfo1: $strings.petraHistoryInfo1,
          historyInfo2: $strings.petraHistoryInfo2,
          constructionInfo1: $strings.petraConstructionInfo1,
          constructionInfo2: $strings.petraConstructionInfo2,
          locationInfo1: $strings.petraLocationInfo1,
          locationInfo2: $strings.petraLocationInfo2,
    highlightArtifacts: const [
      'petra-nabataean-pottery',
      'petra-limestone-relief',
      'petra-camel-figurine',
      'petra-roman-glass-perfume-bottle',
    ],
    localImagePaths: const [
      'assets/images/wonder_galleries/petra/4.jpg',
      'assets/images/wonder_galleries/petra/5.jpg',
      'assets/images/wonder_galleries/petra/2.jpg',
      'assets/images/wonder_galleries/petra/3.jpg',
      'assets/images/wonder_galleries/petra/1.jpg',
    ],
    events: const {},
  );
}
