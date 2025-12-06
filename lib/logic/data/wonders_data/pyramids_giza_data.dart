import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/data/wonder_data.dart';
import 'package:wonders/logic/data/wonders_data/search/search_data.dart';

part 'search/pyramids_giza_search_data.dart';

class PyramidsGizaData extends WonderData {
  PyramidsGizaData()
      : super(
          searchData: _searchData, // included as a part from ./search/
          searchSuggestions: _searchSuggestions, // included as a part from ./search/
          type: WonderType.pyramidsGiza,
          title: $strings.pyramidsGizaTitle,
          subTitle: $strings.pyramidsGizaSubTitle,
          regionTitle: $strings.pyramidsGizaRegionTitle,
          videoId: 'lJKX3Y7Vqvs',
          startYr: -2600,
          endYr: -2500,
          artifactStartYr: -2800,
          artifactEndYr: -2300,
          artifactCulture: $strings.pyramidsGizaArtifactCulture,
          artifactGeolocation: $strings.pyramidsGizaArtifactGeolocation,
          lat: 29.9792,
          lng: 31.1342,
          unsplashCollectionId: 'CSEvB5Tza9E',
          pullQuote1Top: $strings.pyramidsGizaPullQuote1Top,
          pullQuote1Bottom: $strings.pyramidsGizaPullQuote1Bottom,
          pullQuote1Author: '',
          pullQuote2: $strings.pyramidsGizaPullQuote2,
          pullQuote2Author: $strings.pyramidsGizaPullQuote2Author,
          callout1: $strings.pyramidsGizaCallout1,
          callout2: $strings.pyramidsGizaCallout2,
          videoCaption: $strings.pyramidsGizaVideoCaption,
          mapCaption: $strings.pyramidsGizaMapCaption,
          historyInfo1: $strings.pyramidsGizaHistoryInfo1,
          historyInfo2: $strings.pyramidsGizaHistoryInfo2,
          constructionInfo1: $strings.pyramidsGizaConstructionInfo1,
          constructionInfo2: $strings.pyramidsGizaConstructionInfo2,
          locationInfo1: $strings.pyramidsGizaLocationInfo1,
          locationInfo2: $strings.pyramidsGizaLocationInfo2,
    highlightArtifacts: const [
      'pyramids-giza-khufu-ship',
      'pyramids-giza-mummy-mask',
      'pyramids-giza-canopic-jars',
      'pyramids-giza-hieroglyphic-tablet',
    ],
    localImagePaths: const [
      'assets/images/wonder_galleries/pyramids/4.jpg',
      'assets/images/wonder_galleries/pyramids/5.jpg',
      'assets/images/wonder_galleries/pyramids/2.jpg',
      'assets/images/wonder_galleries/pyramids/3.jpg',
      'assets/images/wonder_galleries/pyramids/1.jpg',
    ],
    events: const {},
  );
}
