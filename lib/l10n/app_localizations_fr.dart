// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'Wonder Martinique';

  @override
  String get localeSwapButton => '简体中文';

  @override
  String animatedArrowSemanticSwipe(Object title) {
    return 'Explorer les détails sur $title.';
  }

  @override
  String get appBarTitleFactsHistory => 'Faits et Histoire';

  @override
  String get appBarTitleConstruction => 'Construction';

  @override
  String get appBarTitleLocation => 'Informations sur le lieu';

  @override
  String get bottomScrubberSemanticScrubber => 'curseur';

  @override
  String get bottomScrubberSemanticTimeline =>
      'Curseur de chronologie, faites glisser horizontalement pour naviguer dans la chronologie.';

  @override
  String collectionLabelDiscovered(Object percentage) {
    return '$percentage% découvert';
  }

  @override
  String collectionLabelCount(Object count, Object total) {
    return '$count sur $total';
  }

  @override
  String get collectionButtonReset => 'Réinitialiser la collection';

  @override
  String get eventsListButtonOpenGlobal => 'Ouvrir la chronologie mondiale';

  @override
  String newlyDiscoveredSemanticNew(Object count, Object suffix) {
    return '$count nouvel$suffix objet$suffix à explorer. Faites défiler vers le nouvel objet';
  }

  @override
  String newlyDiscoveredLabelNew(Object count, Object suffix) {
    return '$count nouvel$suffix objet$suffix à explorer';
  }

  @override
  String get resultsPopupEnglishContent =>
      'Ce contenu est fourni par l\'API de la collection du Metropolitan Museum of Art, et n\'est disponible qu\'en anglais.';

  @override
  String get resultsSemanticDismiss => 'masquer le message';

  @override
  String get scrollingContentSemanticYoutube => 'Vignette Youtube';

  @override
  String get scrollingContentSemanticOpen =>
      'Ouvrir la vue cartographique en plein écran';

  @override
  String get searchInputTitleSuggestions => 'Suggestions';

  @override
  String get searchInputHintSearch => 'Recherche (ex. type ou matériau)';

  @override
  String get searchInputSemanticClear => 'effacer la recherche';

  @override
  String timelineSemanticDate(Object fromDate, Object endDate) {
    return '$fromDate à $endDate';
  }

  @override
  String titleLabelDate(Object fromDate, Object endDate) {
    return '$fromDate à $endDate';
  }

  @override
  String get appModalsButtonOk => 'Ok';

  @override
  String get appModalsButtonCancel => 'Annuler';

  @override
  String get appPageDefaultTitlePage => 'page';

  @override
  String appPageSemanticSwipe(Object pageTitle, Object current, Object total) {
    return '$pageTitle $current sur $total.';
  }

  @override
  String get artifactsTitleArtifacts => 'ARTÉFACTS';

  @override
  String semanticsPrevious(Object title) {
    return 'Précédent $title';
  }

  @override
  String semanticsNext(Object title) {
    return 'Suivant $title';
  }

  @override
  String get artifactsSemanticsPrevious => 'Artefact précédent';

  @override
  String get artifactsSemanticsNext => 'Artefact suivant';

  @override
  String get artifactsSemanticArtifact => 'Artefact';

  @override
  String get artifactsButtonBrowse => 'Parcourir tous les artefacts';

  @override
  String get artifactDetailsLabelDate => 'Date';

  @override
  String get artifactDetailsLabelPeriod => 'Période';

  @override
  String get artifactDetailsLabelGeography => 'Géographie';

  @override
  String get artifactDetailsLabelMedium => 'Médium';

  @override
  String get artifactDetailsLabelDimension => 'Dimension';

  @override
  String get artifactDetailsLabelClassification => 'Classification';

  @override
  String get artifactDetailsSemanticThumbnail => 'image miniature';

  @override
  String artifactDetailsErrorNotFound(Object artifactId) {
    return 'Impossible de trouver les informations pour l\'artefact $artifactId ';
  }

  @override
  String get artifactsSearchTitleBrowse => 'Parcourir les artefacts';

  @override
  String get artifactsSearchLabelNotFound => 'Aucun artefact trouvé';

  @override
  String get artifactsSearchButtonToggle => 'Basculer la période';

  @override
  String get artifactsSearchSemanticTimeframe => 'période';

  @override
  String artifactsSearchLabelFound(Object numFound, Object numResults) {
    return '$numFound artefacts trouvés, $numResults dans ';
  }

  @override
  String get artifactsSearchLabelAdjust => 'Ajustez vos';

  @override
  String get artifactsSearchLabelSearch => 'termes de recherche';

  @override
  String get artifactsSearchLabelTimeframe => 'période';

  @override
  String get circleButtonsSemanticClose => 'fermer';

  @override
  String get circleButtonsSemanticBack => 'retour';

  @override
  String get collectibleFoundTitleArtifactDiscovered => 'Artefact découvert';

  @override
  String get collectibleFoundButtonViewCollection => 'voir dans ma collection';

  @override
  String get collectibleItemSemanticCollectible => 'objet collectionnable';

  @override
  String get collectionTitleCollection => 'Collection';

  @override
  String get collectionPopupResetConfirm =>
      'Êtes-vous sûr de vouloir réinitialiser votre collection ?';

  @override
  String get eightWaySemanticSwipeDetector =>
      'détecteur de balayage à huit directions';

  @override
  String get expandingTimeSelectorSemanticSelector => 'sélecteur de période';

  @override
  String get fullscreenImageViewerSemanticFull =>
      'image plein écran, aucune description disponible';

  @override
  String get homeMenuButtonExplore => 'Explorer la chronologie';

  @override
  String get homeMenuButtonView => 'Voir votre collection';

  @override
  String get homeMenuButtonAbout => 'À propos de cette application';

  @override
  String get homeMenuAboutWonderous =>
      'Wonderous est une vitrine visuelle des huit merveilles du monde. ';

  @override
  String homeMenuAboutBuilt(Object flutterUrl, Object gskinnerUrl) {
    return 'Construit avec $flutterUrl par l\'équipe de $gskinnerUrl.';
  }

  @override
  String homeMenuAboutLearn(Object wonderousUrl) {
    return 'En savoir plus sur $wonderousUrl.';
  }

  @override
  String homeMenuAboutSource(Object githubUrl) {
    return 'Pour voir le code source de cette application, veuillez visiter le $githubUrl.';
  }

  @override
  String get homeMenuAboutRepo => 'Dépôt github de Wonderous';

  @override
  String get homeMenuAboutFlutter => 'Flutter';

  @override
  String get homeMenuAboutGskinner => 'gskinner';

  @override
  String get homeMenuAboutApp => 'wonderous.app';

  @override
  String homeMenuAboutPublic(Object metUrl) {
    return 'Œuvres d\'art du domaine public de $metUrl.';
  }

  @override
  String get homeMenuAboutMet => 'Le Metropolitan Museum of Art, New York';

  @override
  String homeMenuAboutPhotography(Object unsplashUrl) {
    return 'Photographie de $unsplashUrl.';
  }

  @override
  String get homeMenuAboutUnsplash => 'Unsplash';

  @override
  String get introTitleJourney => 'Voyage dans le passé';

  @override
  String get introDescriptionNavigate =>
      'Naviguez à l\'intersection du temps, de l\'art et de la culture.';

  @override
  String get introTitleExplore => 'Explorer des lieux';

  @override
  String get introDescriptionUncover =>
      'Découvrez des structures humaines remarquables du monde entier.';

  @override
  String get introTitleDiscover => 'Découvrir des artefacts';

  @override
  String get introDescriptionLearn =>
      'Apprenez-en davantage sur les cultures à travers le temps en examinant ce qu\'elles ont laissé derrière elles.';

  @override
  String get introSemanticNavigate => 'Naviguer';

  @override
  String get introSemanticSwipeLeft => 'Balayez vers la gauche pour continuer';

  @override
  String get introSemanticEnterApp => 'Entrer dans l\'application';

  @override
  String get introSemanticWonderous => 'Wonderous';

  @override
  String get labelledToggleSemanticToggle => 'basculer';

  @override
  String get photoGallerySemanticCollectible => 'collectionnable !';

  @override
  String photoGallerySemanticFocus(Object photoIndex, Object photoTotal) {
    return 'Photo $photoIndex sur $photoTotal. Appuyez pour mettre au point.';
  }

  @override
  String photoGallerySemanticFullscreen(Object photoIndex, Object photoTotal) {
    return 'Photo $photoIndex sur $photoTotal. Appuyez pour ouvrir la vue plein écran.';
  }

  @override
  String get eraPrehistory => 'Préhistoire';

  @override
  String get eraClassical => 'Ère classique';

  @override
  String get eraEarlyModern => 'Ère moderne précoce';

  @override
  String get eraModern => 'Ère moderne';

  @override
  String get yearBCE => 'Avant J.-C.';

  @override
  String get yearCE => 'Après J.-C.';

  @override
  String yearFormat(Object date, Object era) {
    return '$date $era';
  }

  @override
  String get year => 'Année';

  @override
  String timelineLabelConstruction(Object title) {
    return 'La construction de $title commence.';
  }

  @override
  String get timelineTitleGlobalTimeline => 'Chronologie mondiale';

  @override
  String get wallpaperModalSave =>
      'Enregistrer cette affiche dans votre galerie de photos ?';

  @override
  String get wallpaperModalSaving =>
      'Enregistrement de l\'image. Veuillez patienter...';

  @override
  String get wallpaperModalSaveComplete => 'Enregistrement terminé !';

  @override
  String get wallpaperSemanticSharePhoto => 'partager la photo';

  @override
  String get wallpaperSemanticTakePhoto => 'prendre une photo';

  @override
  String get wallpaperCheckboxShowTitle => 'Afficher le titre';

  @override
  String get wonderDetailsTabLabelInformation => 'informations et histoire';

  @override
  String get wonderDetailsTabLabelImages => 'galerie photo';

  @override
  String get wonderDetailsTabLabelArtifacts => 'artefacts';

  @override
  String get wonderDetailsTabLabelEvents => 'événements';

  @override
  String get wonderDetailsTabSemanticBack =>
      'retour à la sélection des merveilles';

  @override
  String get homeSemanticOpenMain => 'Ouvrir le menu principal';

  @override
  String get homeSemanticWonder => 'merveille';

  @override
  String get chichenItzaTitle => 'Chichen Itza';

  @override
  String get chichenItzaSubTitle => 'La grande cité maya';

  @override
  String get chichenItzaRegionTitle => 'Yucatan, Mexique';

  @override
  String get chichenItzaArtifactCulture => 'Maya';

  @override
  String get chichenItzaArtifactGeolocation => 'Amérique du Nord et centrale';

  @override
  String get chichenItzaPullQuote1Top => 'La beauté entre';

  @override
  String get chichenItzaPullQuote1Bottom => 'les cieux et l\'au-delà';

  @override
  String get chichenItzaPullQuote2 =>
      'La vision maya et toltec du monde et de l\'univers se révèle dans leurs monuments de pierre et leurs œuvres artistiques.';

  @override
  String get chichenItzaPullQuote2Author => 'UNESCO';

  @override
  String get chichenItzaCallout1 =>
      'Le site présente une multitude de styles architecturaux, rappelant les styles du centre du Mexique ainsi que les styles Puuc et Chenes des basses terres mayas du nord.';

  @override
  String get chichenItzaCallout2 =>
      'La ville comprenait une superficie d\'au moins 1,9 mile carré (5 km carrés) d\'architecture densément regroupée.';

  @override
  String get chichenItzaVideoCaption =>
      '« Maya ancien 101 | National Geographic. » Youtube, téléchargé par National Geographic.';

  @override
  String get chichenItzaMapCaption =>
      'Carte montrant l\'emplacement de Chichen Itza dans l\'État du Yucatán, Mexique.';

  @override
  String get chichenItzaHistoryInfo1 =>
      'Chichen Itza était une capitale régionale puissante contrôlant le nord et le centre du Yucatán. La première date hiéroglyphique découverte à Chichen Itza équivaut à 832 EC, tandis que la dernière date connue a été enregistrée dans le temple Osario en 998 EC.\nDominant la plateforme nord de Chichen Itza se trouve le célèbre temple de Kukulcán. Le temple a été identifié par les premiers Espagnols qui l\'ont vu, comme El Castillo (« le château »), et il est régulièrement désigné ainsi.';

  @override
  String get chichenItzaHistoryInfo2 =>
      'La ville était considérée comme ayant la population la plus diverse du monde maya, un facteur qui aurait pu contribuer à cette variété architecturale.';

  @override
  String get chichenItzaConstructionInfo1 =>
      'Les structures de Chichen Itza ont été construites à partir de blocs de calcaire parfaitement taillés qui s\'ajustent parfaitement sans mortier. Beaucoup de ces bâtiments en pierre étaient originalement peints en rouge, vert, bleu et violet selon la disponibilité des pigments.\nLa pyramide à gradins El Castillo s\'élève à environ 98 pieds (30 m) de haut et se compose d\'une série de neuf terrasses carrées, chacune mesurant environ 8,4 pieds (2,57 m) de haut, avec un temple de 20 pieds (6 m) de haut au sommet.';

  @override
  String get chichenItzaConstructionInfo2 =>
      'Elle a été construite sur un terrain accidenté, qui a été artificiellement nivelé pour supporter des structures telles que la pyramide Castillo. Les bâtiments importants du centre étaient reliés par un réseau dense de routes pavées appelées sacbeob.';

  @override
  String get chichenItzaLocationInfo1 =>
      'Chichen Itza est situé dans la partie orientale de l\'État du Yucatán au Mexique. À proximité, quatre grandes dolines, appelées cenotes, auraient pu fournir de l\'eau abondante toute l\'année à Chichen, ce qui en faisait un endroit attrayant pour la colonisation.';

  @override
  String get chichenItzaLocationInfo2 =>
      'Parmi ces cenotes, le « Cenote Sagrado » ou Cenote Sacré, était utilisé pour le sacrifice d\'objets précieux et d\'êtres humains comme forme d\'adoration au dieu maya de la pluie Chaac.';

  @override
  String get chichenItza600ce =>
      'Chichen Itza s\'élève au rang de centre régional vers la fin de la période classique précoce';

  @override
  String get chichenItza832ce =>
      'La première date hiéroglyphique découverte à Chichen Itza';

  @override
  String get chichenItza998ce =>
      'Dernière date connue enregistrée dans le temple Osario';

  @override
  String get chichenItza1100ce => 'Chichen Itza décline comme centre régional';

  @override
  String get chichenItza1527ce =>
      'Envahi par le conquistador espagnol Francisco de Montejo';

  @override
  String get chichenItza1535ce =>
      'Tous les Espagnols sont chassés de la péninsule du Yucatán';

  @override
  String get chichenItzaCollectible1Title => 'Pendentif';

  @override
  String get chichenItzaCollectible1Icon => 'bijou';

  @override
  String get chichenItzaCollectible2Title => 'Ornement d\'oiseau';

  @override
  String get chichenItzaCollectible2Icon => 'bijou';

  @override
  String get chichenItzaCollectible3Title => 'La Prison, à Chichen-Itza';

  @override
  String get chichenItzaCollectible3Icon => 'image';

  @override
  String get christRedeemerTitle => 'Christ Rédempteur';

  @override
  String get christRedeemerSubTitle => 'Un symbole de paix';

  @override
  String get christRedeemerRegionTitle => 'Rio de Janeiro, Brésil';

  @override
  String get christRedeemerArtifactGeolocation => 'Brésil';

  @override
  String get christRedeemerPullQuote1Top => 'Une union parfaite entre';

  @override
  String get christRedeemerPullQuote1Bottom => 'la nature et l\'architecture';

  @override
  String get christRedeemerPullQuote2 =>
      'La statue domine le paysage, mais elle cache autant qu\'elle révèle sur la vie religieuse diverse des Brésiliens.';

  @override
  String get christRedeemerPullQuote2Author => 'Thomas Tweed';

  @override
  String get christRedeemerCallout1 =>
      'La statue du Christ Rédempteur les bras ouverts, symbole de paix, a été choisie.';

  @override
  String get christRedeemerCallout2 =>
      'La construction a pris neuf ans, de 1922 à 1931, et a coûté l\'équivalent de 250 000 dollars US (équivalent à 3 600 000 dollars en 2020) et le monument a été inauguré le 12 octobre 1931.';

  @override
  String get christRedeemerVideoCaption =>
      '« La statue majestueuse du Christ Rédempteur - Sept merveilles du monde moderne - See U in History. » Youtube, téléchargé par See U in History / Mythology.';

  @override
  String get christRedeemerMapCaption =>
      'Carte montrant l\'emplacement du Christ Rédempteur à Rio de Janeiro, Brésil.';

  @override
  String get christRedeemerHistoryInfo1 =>
      'Le placement d\'un monument chrétien sur le mont Corcovado a été suggéré pour la première fois au milieu des années 1850 pour honorer la princesse Isabel, régente du Brésil et fille de l\'empereur Pedro II, mais le projet n\'a pas été approuvé.\nEn 1889, le pays est devenu une république, et en raison de la séparation de l\'Église et de l\'État, la statue proposée a été rejetée.';

  @override
  String get christRedeemerHistoryInfo2 =>
      'Le Cercle Catholique de Rio a proposé un deuxième projet pour une statue emblématique sur la montagne en 1920. Le groupe a organisé un événement appelé Semaine du Monument (« Semana do Monumento ») pour attirer des dons et recueillir des signatures afin de soutenir la construction de la statue. L\'organisation était motivée par ce qu\'ils percevaient comme une « absence de foi » dans la société.\nLes designs envisagés pour la « Statue du Christ » comprenaient une représentation de la croix chrétienne, une statue de Jésus avec un globe dans les mains, et un piédestal symbolisant le monde.';

  @override
  String get christRedeemerConstructionInfo1 =>
      'L\'artiste Carlos Oswald et l\'ingénieur local Heitor da Silva Costa ont conçu la statue. Le sculpteur français Paul Landowski a créé l\'œuvre. En 1922, Landowski a commissionné le sculpteur roumain parisien Gheorghe Leonida, qui a étudié la sculpture au Conservatoire des Beaux-Arts de Bucarest et en Italie.';

  @override
  String get christRedeemerConstructionInfo2 =>
      'Un groupe d\'ingénieurs et de techniciens a étudié les soumissions de Landowski et a estimé que la construction de la structure en béton armé au lieu de l\'acier était plus appropriée pour la statue en forme de croix. Le béton constituant la base a été fourni depuis Limhamn, en Suède. Les couches externes sont en pierre de savon, choisie pour ses qualités durables et sa facilité d\'utilisation.';

  @override
  String get christRedeemerLocationInfo1 =>
      'Corcovado, qui signifie « bossu » en portugais, est une montagne dans le centre de Rio de Janeiro, au Brésil. C\'est un pic de granite de 2 329 pieds (710 m) situé dans la forêt de Tijuca, un parc national.';

  @override
  String get christRedeemerLocationInfo2 =>
      'La colline de Corcovado se trouve juste à l\'ouest du centre-ville mais est entièrement dans les limites de la ville et visible à de grandes distances.';

  @override
  String get christRedeemer1850ce =>
      'Les plans pour la statue ont été proposés pour la première fois par Pedro Maria Boss sur le mont Corcovado. Cependant, cela n\'a jamais été approuvé.';

  @override
  String get christRedeemer1921ce =>
      'Un nouveau plan a été proposé par l\'archidiocèse catholique romain, et après que les citoyens de Rio de Janeiro aient adressé une pétition au président, il a finalement été approuvé.';

  @override
  String get christRedeemer1922ce =>
      'Les fondations de la statue ont été solennellement posées pour commémorer l\'indépendance du Brésil du Portugal.';

  @override
  String get christRedeemer1926ce =>
      'La construction a officiellement commencé après que le design initial a été choisi via un concours et modifié par des artistes et ingénieurs brésiliens.';

  @override
  String get christRedeemer1931ce =>
      'La construction de la statue a été achevée, mesurant 98 pieds de haut avec une envergure de 92 pieds.';

  @override
  String get christRedeemer2006ce =>
      'Une chapelle a été consacrée à la base de la statue à Notre-Dame d\'Aparecida pour marquer le 75e anniversaire de la statue.';

  @override
  String get christRedeemerCollectible1Title => 'Corne gravée';

  @override
  String get christRedeemerCollectible1Icon => 'statue';

  @override
  String get christRedeemerCollectible2Title => 'Éventail fixe';

  @override
  String get christRedeemerCollectible2Icon => 'bijou';

  @override
  String get christRedeemerCollectible3Title => 'Mouchoirs (l\'un des deux)';

  @override
  String get christRedeemerCollectible3Icon => 'textile';

  @override
  String get colosseumTitle => 'Colisée';

  @override
  String get colosseumSubTitle => 'L\'icône de Rome';

  @override
  String get colosseumRegionTitle => 'Rome, Italie';

  @override
  String get colosseumArtifactCulture => 'Romain';

  @override
  String get colosseumArtifactGeolocation => 'Empire romain';

  @override
  String get colosseumPullQuote1Top => 'Toujours le plus grand amphithéâtre';

  @override
  String get colosseumPullQuote1Bottom => 'debout dans le monde aujourd\'hui';

  @override
  String get colosseumPullQuote2 =>
      'Quand tombera le Colisée, Rome tombera ; Et quand Rome tombera - le Monde.';

  @override
  String get colosseumPullQuote2Author => 'Lord Byron';

  @override
  String get colosseumCallout1 =>
      'Il a été utilisé pour les combats de gladiateurs et les spectacles publics, notamment les chasses aux animaux, les exécutions, les représentations d\'événements historiques célèbres et des drames basés sur la mythologie romaine, ainsi que des batailles navales simulées.';

  @override
  String get colosseumCallout2 =>
      'C\'est le plus grand amphithéâtre antique jamais construit, et reste l\'amphithéâtre debout le plus grand du monde aujourd\'hui, malgré son âge.';

  @override
  String get colosseumVideoCaption =>
      '« Rome antique 101 | National Geographic. » Youtube, téléchargé par National Geographic.';

  @override
  String get colosseumMapCaption =>
      'Carte montrant l\'emplacement du Colisée à Rome, Italie.';

  @override
  String get colosseumHistoryInfo1 =>
      'Le Colisée est un amphithéâtre ovale au centre de la ville de Rome, en Italie. Contrairement aux théâtres romains qui étaient construits sur les flancs des collines, le Colisée est une structure entièrement indépendante.';

  @override
  String get colosseumHistoryInfo2 =>
      'Le bâtiment a cessé d\'être utilisé pour le divertissement à l\'époque médiévale précoce. Au VIe siècle tardif, une petite chapelle avait été construite dans la structure de l\'amphithéâtre, et l\'arène avait été convertie en cimetière.\nLes nombreux espaces voûtés dans les arcades sous les sièges ont été convertis en logements et ateliers, et sont enregistrés comme encore loués jusqu\'au XIIe siècle.';

  @override
  String get colosseumConstructionInfo1 =>
      'La construction a commencé sous l\'empereur Vespasien (r. 69-79 EC) en 72 et a été achevée en 80 EC sous son successeur et héritier, Titus (r. 79-81). Des modifications supplémentaires ont été apportées pendant le règne de Domitien (r. 81-96).\nLe Colisée est construit en calcaire travertin, en tuf (roche volcanique) et en béton enduit de briques. Le mur extérieur nécessitait plus de 3,5 millions de pieds cubes de pierre travertine qui étaient posés sans mortier ; ils étaient maintenus ensemble par 300 tonnes de crampons en fer.';

  @override
  String get colosseumConstructionInfo2 =>
      'Il pouvait accueillir entre 50 000 et 80 000 spectateurs à différents moments de son histoire, avec une audience moyenne d\'environ 65 000.';

  @override
  String get colosseumLocationInfo1 =>
      'Suite au Grand Incendie de Rome en 64 EC, l\'empereur Néron s\'est emparé d\'une grande partie de la zone détruite pour construire sa fastueuse Domus Aurea (« Maison d\'or »). Une grave gêne pour les successeurs de Néron, des parties de ce palais extravagant et de ses terrains, couvrant 1 mile carré, ont été remplies de terre et construites par-dessus.';

  @override
  String get colosseumLocationInfo2 =>
      'Sur l\'emplacement du lac, au milieu des terrains du palais, l\'empereur Vespasien construirait le Colisée dans le cadre d\'une renaissance romaine.';

  @override
  String get colosseum70ce =>
      'La construction du Colisée a commencé pendant le règne de Vespasien au-dessus de ce qui était auparavant un lac privé pour les quatre empereurs précédents. Cela a été fait dans le but de revitaliser Rome après leur règne tyrannique.';

  @override
  String get colosseum82ce =>
      'L\'étage supérieur a été construit, et la structure a été officiellement achevée par Domitien.';

  @override
  String get colosseum1140ce =>
      'L\'arène a été réutilisée comme forteresse pour les familles Frangipane et Annibaldi. Elle a aussi été utilisée comme église à un moment donné.';

  @override
  String get colosseum1490ce =>
      'Le pape Alexandre VI a permis que le site soit utilisé comme carrière, à la fois pour le stockage et le recyclage des matériaux de construction.';

  @override
  String get colosseum1829ce =>
      'La préservation du Colisée a officiellement commencé, après plus d\'un millénaire de délabrement et de vandalisme. Le pape Pie VIII était notamment dévoué à ce projet.';

  @override
  String get colosseum1990ce =>
      'Un projet de restauration a été entrepris pour s\'assurer que le Colisée reste une attraction touristique majeure pour Rome. Il constitue actuellement l\'une des plus grandes sources de revenus touristiques en Italie.';

  @override
  String get colosseumCollectible1Title => 'Amphoriskos hexagonal en verre';

  @override
  String get colosseumCollectible1Icon => 'vase';

  @override
  String get colosseumCollectible2Title =>
      'Plaque en bronze de Mithra tuant le taureau';

  @override
  String get colosseumCollectible2Icon => 'statue';

  @override
  String get colosseumCollectible3Title => 'Interno del Colosseo';

  @override
  String get colosseumCollectible3Icon => 'image';

  @override
  String get greatWallTitle => 'La Grande Muraille';

  @override
  String get greatWallSubTitle => 'La plus longue structure sur Terre';

  @override
  String get greatWallRegionTitle => 'Chine';

  @override
  String get greatWallArtifactCulture => 'Chinois';

  @override
  String get greatWallArtifactGeolocation => 'Chine';

  @override
  String get greatWallPullQuote1Top => 'La plus longue structure';

  @override
  String get greatWallPullQuote1Bottom => 'faite par l\'homme dans le monde';

  @override
  String get greatWallPullQuote2 =>
      'Son importance historique et stratégique n\'est égalée que par sa signification architecturale.';

  @override
  String get greatWallPullQuote2Author => 'UNESCO';

  @override
  String get greatWallCallout1 =>
      'Les sections les mieux connues du mur ont été construites par la dynastie Ming (1368-1644).';

  @override
  String get greatWallCallout2 =>
      'Cependant, pendant la dynastie Ming, des briques ont été largement utilisées dans de nombreuses zones du mur, ainsi que des matériaux tels que des tuiles, de la chaux et de la pierre.';

  @override
  String get greatWallVideoCaption =>
      '« Voir la Grande Muraille chinoise d\'en haut | National Geographic. » Youtube, téléchargé par National Geographic.';

  @override
  String get greatWallMapCaption =>
      'Carte montrant l\'emplacement de la Grande Muraille de Chine dans le nord de la Chine.';

  @override
  String get greatWallHistoryInfo1 =>
      'La Grande Muraille de Chine est une série de fortifications qui ont été construites à travers les frontières historiques du nord de la Chine ancienne et de la Chine impériale comme protection contre divers groupes nomades de la steppe eurasienne. La longueur totale de toutes les sections jamais construites dépasse 13 000 miles.';

  @override
  String get greatWallHistoryInfo2 =>
      'Plusieurs murs ont été construits dès le VIIe siècle avant JC, avec des tronçons sélectionnés reliés ensemble plus tard par Qin Shi Huang (220-206 avant JC), le premier empereur de Chine. Peu du mur Qin reste.\nPlus tard, de nombreuses dynasties successives ont construit et entretenu de multiples tronçons de murs frontières.';

  @override
  String get greatWallConstructionInfo1 =>
      'Le transport de la grande quantité de matériaux nécessaires à la construction était difficile, alors les constructeurs essayaient toujours d\'utiliser des ressources locales. Les pierres des montagnes ont été utilisées sur les chaînes de montagnes, tandis que la terre battue a été utilisée pour la construction dans les plaines. La plupart des anciens murs se sont érodés au fil des siècles.';

  @override
  String get greatWallConstructionInfo2 =>
      'Les pierres coupées en formes rectangulaires ont été utilisées pour la fondation, les bords intérieurs et extérieurs, et les entrées du mur.\nSous le règne de la dynastie Qing, les frontières de la Chine s\'étendaient au-delà des murs et la Mongolie était annexée à l\'empire, donc la construction a été interrompue.';

  @override
  String get greatWallLocationInfo1 =>
      'Les murs frontières construits par différentes dynasties ont plusieurs parcours. Collectivement, ils s\'étendent de Liaodong à l\'est à Lop Lake à l\'ouest, de la frontière sino-russe actuelle au nord à la rivière Tao au sud ; le long d\'un arc qui délimite approximativement le bord de la steppe mongole.';

  @override
  String get greatWallLocationInfo2 =>
      'Outre la défense, d\'autres objectifs du Grand Mur comprenaient les contrôles frontaliers, permettant l\'imposition de droits sur les marchandises transportées le long de la Route de la Soie, la réglementation ou l\'encouragement du commerce et le contrôle de l\'immigration et de l\'émigration.';

  @override
  String get greatWall700bce =>
      'Le premier repère de la Grande Muraille a commencé à l\'origine comme un mur carré entourant l\'État de Chu. Au fil des ans, des murs supplémentaires ont été construits et ajoutés pour étendre et connecter le territoire.';

  @override
  String get greatWall214bce =>
      'Le premier empereur Qin unifie la Chine et relie le mur des États environnants de Qin, Yan et Zhao en la Grande Muraille de Chine, prenant 10 ans à construire avec des centaines de milliers de travailleurs.';

  @override
  String get greatWall121bce =>
      'Un projet de construction de 20 ans a été lancé par l\'empereur Han pour construire des sections est et ouest du mur, y compris des balises, des tours et des châteaux. Non seulement pour la défense, mais aussi pour contrôler les routes commerciales comme la Route de la Soie.';

  @override
  String get greatWall556ce =>
      'Le royaume Bei Qi a également lancé plusieurs projets de construction, utilisant plus de 1,8 million de travailleurs pour réparer et étendre des sections du mur, ajoutant à sa longueur et construisant même un deuxième mur intérieur autour de Shanxi.';

  @override
  String get greatWall618ce =>
      'La Grande Muraille a été réparée pendant la dynastie Sui et utilisée pour se défendre contre les attaques des Tujue. Avant et après la dynastie Sui, le mur a très peu été utilisé et est tombé en ruine.';

  @override
  String get greatWall1487ce =>
      'L\'empereur Hongzhi a divisé les murs en lignes nord et sud, façonnant finalement ce qu\'il est aujourd\'hui. Depuis lors, il est progressivement tombé en ruine et reste principalement inutilisé.';

  @override
  String get greatWallCollectible1Title =>
      'Biographies de Lian Po et Lin Xiangru';

  @override
  String get greatWallCollectible1Icon => 'rouleau';

  @override
  String get greatWallCollectible2Title => 'Jar avec Dragon';

  @override
  String get greatWallCollectible2Icon => 'vase';

  @override
  String get greatWallCollectible3Title => 'Panneau avec Pivoines et Papillon';

  @override
  String get greatWallCollectible3Icon => 'textile';

  @override
  String get machuPicchuTitle => 'Machu Picchu';

  @override
  String get machuPicchuSubTitle => 'Citadelle de l\'Inca';

  @override
  String get machuPicchuRegionTitle => 'Région de Cusco, Pérou';

  @override
  String get machuPicchuArtifactCulture => 'Inca';

  @override
  String get machuPicchuArtifactGeolocation => 'Amérique du Sud';

  @override
  String get machuPicchuPullQuote1Top =>
      'Peu de romances peuvent jamais surpasser';

  @override
  String get machuPicchuPullQuote1Bottom => 'celle de la citadelle de granite';

  @override
  String get machuPicchuPullQuote1Author => 'Hiram Bingham';

  @override
  String get machuPicchuPullQuote2 =>
      'Dans la variété de ses charmes et la puissance de son sort, je ne connais aucun autre endroit dans le monde qui puisse lui être comparé.';

  @override
  String get machuPicchuPullQuote2Author => 'Hiram Bingham';

  @override
  String get machuPicchuCallout1 =>
      'Pendant son utilisation comme domaine royal, on estime qu\'environ 750 personnes y vivaient, dont la plupart servaient de personnel de soutien qui y vivaient de manière permanente.';

  @override
  String get machuPicchuCallout2 =>
      'Les Incas étaient des maîtres de cette technique, appelée ashlar, dans laquelle des blocs de pierre sont taillés pour s\'ajuster étroitement sans mortier.';

  @override
  String get machuPicchuVideoCaption =>
      '« Machu Picchu 101 | National Geographic. » Youtube, téléchargé par National Geographic.';

  @override
  String get machuPicchuMapCaption =>
      'Carte montrant l\'emplacement de Machu Picchu dans la Cordillère orientale du sud du Pérou.';

  @override
  String get machuPicchuHistoryInfo1 =>
      'Machu Picchu est une citadelle inca du 15e siècle située dans la Cordillère orientale du sud du Pérou sur une crête de montagne de 2 430 mètres (7 970 pieds). La construction semble dater de deux grands souverains incas, Pachacutec Inca Yupanqui (1438–1471 EC) et Túpac Inca Yupanqui (1472–1493 EC).';

  @override
  String get machuPicchuHistoryInfo2 =>
      'Il y a un consensus parmi les archéologues que Pachacutec a ordonné la construction du domaine royal pour son usage comme retraite, très probablement après une campagne militaire réussie.\nPlutôt, il a été utilisé pendant 80 ans avant d\'être abandonné, apparemment à cause des conquêtes espagnoles dans d\'autres parties de l\'Empire Inca.';

  @override
  String get machuPicchuConstructionInfo1 =>
      'Les bâtiments centraux utilisent le style architectural inca classique de murs en pierre sèche polis de forme régulière.\nLes murs incas ont de nombreuses caractéristiques stabilisatrices : les portes et fenêtres sont trapézoïdales, se rétrécissant du bas vers le haut ; les coins sont généralement arrondis ; les coins intérieurs s\'inclinent souvent légèrement dans les pièces, et les coins extérieurs étaient souvent liés ensemble par des blocs en forme de « L ».';

  @override
  String get machuPicchuConstructionInfo2 =>
      'Cette méthode de construction précise a rendu les structures de Machu Picchu résistantes à l\'activité sismique.\nLe site lui-même peut avoir été intentionnellement construit sur des lignes de faille pour offrir un meilleur drainage et une source prête de pierre fracturée.';

  @override
  String get machuPicchuLocationInfo1 =>
      'Machu Picchu est situé au-dessus d\'un méandre de la rivière Urubamba, qui entoure le site sur trois côtés, où des falaises descendent verticalement de 1 480 pieds (450 m) jusqu\'à la rivière à leur base. L\'emplacement de la ville était un secret militaire, et ses précipices profonds et ses montagnes escarpées fournissaient des défenses naturelles.';

  @override
  String get machuPicchuLocationInfo2 =>
      'Le Pont Inca, un pont en corde d\'Inca, traverse la rivière Urubamba dans le Pongo de Mainique, fournissant une entrée secrète pour l\'armée inca. Un autre pont inca a été construit à l\'ouest de Machu Picchu, le pont en tronc d\'arbre, à un endroit où un écart se produit dans la falaise qui mesure 20 pieds (6 m).';

  @override
  String get machuPicchu1438ce =>
      'Supposé avoir été construit et occupé par le souverain inca Pachacutec Inca Yupanqui.';

  @override
  String get machuPicchu1572ce =>
      'Les derniers souverains incas ont utilisé le site comme bastion pour se rebeller contre la domination espagnole jusqu\'à ce qu\'ils soient finalement anéantis.';

  @override
  String get machuPicchu1867ce =>
      'Supposé avoir été découvert à l\'origine par l\'explorateur allemand Augusto Berns, mais ses découvertes n\'ont jamais été effectivement publiées.';

  @override
  String get machuPicchu1911ce =>
      'Introduit au monde par Hiram Bingham de l\'Université de Yale, qui y a été conduit par des locaux après avoir révélé qu\'il recherchait Vilcabamba, la « ville perdue des Incas ».';

  @override
  String get machuPicchu1964ce =>
      'Les sites environnants ont été excavés en profondeur par Gene Savoy, qui a trouvé un candidat beaucoup plus approprié pour Vilcabamba dans la ruine connue sous le nom d\'Espíritu Pampa.';

  @override
  String get machuPicchu1997ce =>
      'Depuis sa redécouverte, un nombre croissant de touristes ont visité Machu Picchu chaque année, avec des chiffres dépassant 1,4 million en 2017.';

  @override
  String get machuPicchuCollectible1Title => 'Tunique à huit pointes';

  @override
  String get machuPicchuCollectible1Icon => 'textile';

  @override
  String get machuPicchuCollectible2Title => 'Figurine de camélidé';

  @override
  String get machuPicchuCollectible2Icon => 'statue';

  @override
  String get machuPicchuCollectible3Title => 'Bol double';

  @override
  String get machuPicchuCollectible3Icon => 'vase';

  @override
  String get petraTitle => 'Pétra';

  @override
  String get petraSubTitle => 'La cité perdue';

  @override
  String get petraRegionTitle => 'Ma\'an, Jordanie';

  @override
  String get petraArtifactCulture => 'Nabatéen';

  @override
  String get petraArtifactGeolocation => 'Levant';

  @override
  String get petraPullQuote1Top => 'Une cité rose';

  @override
  String get petraPullQuote1Bottom => 'À moitié aussi ancienne que le temps';

  @override
  String get petraPullQuote1Author => 'John William Burgon';

  @override
  String get petraPullQuote2 =>
      'Pétra est un brillant exemple de l\'art de l\'homme transformant un rocher stérile en une merveille majestueuse.';

  @override
  String get petraPullQuote2Author => 'Edward Dawson';

  @override
  String get petraCallout1 =>
      'Ils étaient particulièrement habiles dans la collecte des eaux de pluie, l\'agriculture et la sculpture sur pierre.';

  @override
  String get petraCallout2 =>
      'Peut-être qu\'une ressemblance plus proéminente avec le style hellénistique à Pétra se trouve avec son Trésor.';

  @override
  String get petraVideoCaption =>
      '« Monuments en pierre stupéfiants de Pétra | National Geographic. » Youtube, téléchargé par National Geographic.';

  @override
  String get petraMapCaption =>
      'Carte montrant l\'emplacement de Pétra dans le gouvernorat de Ma\'an, Jordanie.';

  @override
  String get petraHistoryInfo1 =>
      'La région autour de Pétra est habitée depuis au moins 7000 av. J.-C., et les Nabatéens ont peut-être colonisé ce qui deviendrait la capitale de leur royaume dès le IVe siècle av. J.-C.\nLe commerce a apporté aux Nabatéens des revenus considérables et Pétra est devenue le centre de leur richesse. Les Nabatéens étaient habitués à vivre dans les déserts arides, contrairement à leurs ennemis, et ont pu repousser les attaques en tirant parti du terrain montagneux de la région.';

  @override
  String get petraHistoryInfo2 =>
      'Pétra a prospéré au Ier siècle EC, quand son célèbre Al-Khazneh - censé être le mausolée du roi nabatéen Aretas IV - a été construit, et sa population a atteint un maximum estimé de 20 000 habitants.\nL\'accès à la ville se fait par un défilé de 3/4 de mile (1,2 km) appelé le Siq, qui mène directement à l\'Al-Khazneh.';

  @override
  String get petraConstructionInfo1 =>
      'Célèbre pour son architecture taillée dans le roc et son système de conduite d\'eau, Pétra est aussi appelée la « Cité Rose » à cause de la couleur de la pierre dont elle est taillée.\nUne autre chose pour laquelle Pétra est connue est son architecture hellénistique (« grecque »). Ces influences peuvent être vues dans de nombreuses façades de Pétra et reflètent les cultures avec lesquelles les Nabatéens faisaient du commerce.';

  @override
  String get petraConstructionInfo2 =>
      'La façade du Trésor présente un fronton brisé avec un tholos (« dôme ») central à l\'intérieur, et deux obélisques semblent se former dans le roc de Pétra en haut. Près du bas du Trésor, nous voyons les jumeaux dieux grecs : Pollux, Castor et Dioscuri, qui protègent les voyageurs dans leurs voyages.\nPrès du haut du Trésor, deux victoires sont vues debout de chaque côté d\'une figure féminine sur le tholos. Cette figure féminine est censée être Isis-Tyche, Isis étant la déesse égyptienne et Tyche la déesse grecque de la bonne fortune.';

  @override
  String get petraLocationInfo1 =>
      'Pétra est située dans le sud de la Jordanie. Elle est adjacente à la montagne de Jabal Al-Madbah, dans un bassin entouré de montagnes formant le flanc oriental de la vallée de l\'Araba qui s\'étend de la mer Morte à l\' golfe d\'Aqaba.';

  @override
  String get petraLocationInfo2 =>
      'La région autour de Pétra est habitée depuis au moins 7000 av. J.-C., et les Nabatéens ont peut-être colonisé ce qui deviendrait la capitale de leur royaume dès le IVe siècle av. J.-C.\nLes travaux archéologiques n\'ont découvert des preuves de présence nabatéenne que depuis le IIe siècle av. J.-C., époque à laquelle Pétra était devenue leur capitale. Les Nabatéens étaient des Arabes nomades qui ont investi dans la proximité de Pétra par rapport aux routes commerciales d\'encens en en faisant un centre commercial régional majeur.';

  @override
  String get petra1200bce =>
      'Les premiers Édomites ont occupé la région et établi une base.';

  @override
  String get petra106bce =>
      'Est devenue partie de la province romaine d\'Arabie';

  @override
  String get petra551ce =>
      'Après avoir été endommagée par des tremblements de terre, l\'habitation de la ville a pratiquement cessé.';

  @override
  String get petra1812ce =>
      'Redécouverte par le voyageur suisse Johann Ludwig Burckhardt.';

  @override
  String get petra1958ce =>
      'Excavations menées sur le site par l\'École britannique d\'archéologie et le Centre américain de recherche orientale.';

  @override
  String get petra1989ce =>
      'Apparue dans le film Indiana Jones et La Dernière Croisade.';

  @override
  String get petraCollectible1Title => 'Chameau et cavaliers';

  @override
  String get petraCollectible1Icon => 'statue';

  @override
  String get petraCollectible2Title => 'Vase';

  @override
  String get petraCollectible2Icon => 'vase';

  @override
  String get petraCollectible3Title => 'Bol ouvert';

  @override
  String get petraCollectible3Icon => 'vase';

  @override
  String get pyramidsGizaTitle => 'Pyramides de Gizeh';

  @override
  String get pyramidsGizaSubTitle => 'L\'ancienne merveille';

  @override
  String get pyramidsGizaRegionTitle => 'Le Caire, Égypte';

  @override
  String get pyramidsGizaArtifactCulture => 'Égyptien';

  @override
  String get pyramidsGizaArtifactGeolocation => 'Égypte';

  @override
  String get pyramidsGizaPullQuote1Top =>
      'Les structures les plus hautes sur Terre';

  @override
  String get pyramidsGizaPullQuote1Bottom =>
      'Jusqu\'à l\'avènement des gratte-ciels modernes';

  @override
  String get pyramidsGizaPullQuote2 =>
      'Des hauteurs de ces pyramides, quarante siècles nous regardent.';

  @override
  String get pyramidsGizaPullQuote2Author => 'Napoléon Bonaparte';

  @override
  String get pyramidsGizaCallout1 =>
      'Il est théorisé que la pyramide ne servait pas seulement de tombeau pour le pharaon, mais aussi de caveau de stockage pour divers objets dont il aurait besoin dans l\'au-delà.';

  @override
  String get pyramidsGizaCallout2 =>
      'La Grande Pyramide se compose d\'environ 2,3 millions de blocs. Environ 5,5 millions de tonnes de calcaire, 8 000 tonnes de granite et 500 000 tonnes de mortier ont été utilisées dans la construction.';

  @override
  String get pyramidsGizaVideoCaption =>
      '« Les grandes pyramides de Gizeh | Mystères anciens de l\'Égypte | National Geographic UK. » Youtube, téléchargé par National Geographic UK.';

  @override
  String get pyramidsGizaMapCaption =>
      'Carte montrant l\'emplacement des pyramides de Gizeh dans le Grand Caire, Égypte.';

  @override
  String get pyramidsGizaHistoryInfo1 =>
      'Le complexe de pyramides de Gizeh, aussi appelé le nécropole de Gizeh, est le site sur le plateau de Gizeh dans le Grand Caire, en Égypte, qui comprend la Grande Pyramide de Gizeh, la pyramide de Khafre et la pyramide de Menkaure, ainsi que leurs complexes de pyramides associés et le Grand Sphinx de Gizeh. Tous ont été construits pendant la Quatrième Dynastie de l\'Ancien Royaume de l\'Égypte ancienne, entre 2600 et 2500 avant JC.';

  @override
  String get pyramidsGizaHistoryInfo2 =>
      'Les pyramides de Gizeh et d\'autres sont censées avoir été construites pour abriter les restes des pharaons qui régnaient sur l\'Égypte antique. Une partie de l\'esprit du pharaon appelée son ka était censée rester avec son corps. Des soins appropriés des restes étaient nécessaires pour que l\'ancien pharaon puisse accomplir ses nouvelles fonctions de roi des morts.';

  @override
  String get pyramidsGizaConstructionInfo1 =>
      'La plupart des théories de construction sont basées sur l\'idée que les pyramides ont été construites en déplaçant d\'énormes pierres d\'une carrière et en les traînant et en les soulevant en place. En construisant les pyramides, les architectes ont pu développer leurs techniques au fil du temps.\nIls sélectionnaient un site sur une zone relativement plate de roche mère - pas de sable - ce qui fournissait une fondation stable. Après avoir soigneusement étudié le site et posé le premier niveau de pierres, ils construisaient les pyramides en niveaux horizontaux, l\'un sur l\'autre.';

  @override
  String get pyramidsGizaConstructionInfo2 =>
      'Pour la Grande Pyramide, la plupart de la pierre pour l\'intérieur semble avoir été extraite immédiatement au sud du chantier de construction. L\'extérieur lisse de la pyramide était fait d\'un calcaire de qualité fine qui était extrait de l\'autre côté du Nil.\nPour s\'assurer que la pyramide restait symétrique, les pierres de revêtement extérieur devaient toutes être égales en hauteur et en largeur. Les ouvriers ont peut-être marqué tous les blocs pour indiquer l\'angle du mur de la pyramide et taillé soigneusement les surfaces pour que les blocs s\'ajustent. Pendant la construction, la surface extérieure de la pierre était du calcaire lisse ; l\'excès de pierre s\'est érodé avec le temps.';

  @override
  String get pyramidsGizaLocationInfo1 =>
      'Le site est aux bords du désert occidental, environ 5,6 miles (9 km) à l\'ouest de la rivière du Nil dans la ville de Gizeh, et environ 8 miles (13 km) au sud-ouest du centre-ville du Caire.';

  @override
  String get pyramidsGizaLocationInfo2 =>
      'Actuellement, les pyramides sont situées dans le côté nord-ouest du désert occidental, et elles sont considérées comme l\'une des attractions touristiques les plus reconnaissables et les plus visitées de la planète.';

  @override
  String get pyramidsGiza2575bce =>
      'La construction des 3 pyramides a commencé pour trois rois de la 4e dynastie ; Khufu, Khafre et Menkaure.';

  @override
  String get pyramidsGiza2465bce =>
      'La construction a commencé sur les plus petites structures environnantes appelées Mastabas pour la royauté des 5e et 6e dynasties.';

  @override
  String get pyramidsGiza443bce =>
      'L\'auteur grec Hérodote a spéculé que les pyramides avaient été construites en 20 ans avec plus de 100 000 esclaves. Cette supposition a duré plus de 1500 ans';

  @override
  String get pyramidsGiza1925ce =>
      'Le tombeau de la reine Hétèphérès a été découvert, contenant des meubles et des bijoux. L\'un des derniers tombeaux remplis de trésors après de nombreuses années de pillage et de rapine.';

  @override
  String get pyramidsGiza1979ce =>
      'Désigné site du patrimoine mondial de l\'UNESCO pour prévenir tout pillage et vandalisme supplémentaire non autorisé.';

  @override
  String get pyramidsGiza1990ce =>
      'La découverte des quartiers des ouvriers suggère que les travailleurs qui construisaient les pyramides n\'étaient pas des esclaves, et qu\'une méthode de construction ingénieuse a prouvé qu\'une main-d\'œuvre relativement petite était nécessaire pour construire de telles structures immenses.';

  @override
  String get pyramidsGizaCollectible1Title => 'Deux fragments de papyrus';

  @override
  String get pyramidsGizaCollectible1Icon => 'rouleau';

  @override
  String get pyramidsGizaCollectible2Title =>
      'Visage fragmentaire du roi Khafre';

  @override
  String get pyramidsGizaCollectible2Icon => 'statue';

  @override
  String get pyramidsGizaCollectible3Title => 'Éléments de bijoux';

  @override
  String get pyramidsGizaCollectible3Icon => 'bijou';

  @override
  String get tajMahalTitle => 'Taj Mahal';

  @override
  String get tajMahalSubTitle => 'Le paradis sur Terre';

  @override
  String get tajMahalRegionTitle => 'Agra, Inde';

  @override
  String get tajMahalArtifactCulture => 'Mughal';

  @override
  String get tajMahalArtifactGeolocation => 'Inde';

  @override
  String get tajMahalPullQuote1Top => 'Pas seulement un monument,';

  @override
  String get tajMahalPullQuote1Bottom => 'mais un symbole d\'amour.';

  @override
  String get tajMahalPullQuote1Author => 'Suman Pokhrel';

  @override
  String get tajMahalPullQuote2 =>
      'Le Taj Mahal s\'élève au-dessus des rives de la rivière comme une larme solitaire suspendue sur la joue du temps.';

  @override
  String get tajMahalPullQuote2Author => 'Rabindranath Tagore';

  @override
  String get tajMahalCallout1 =>
      'Le Taj Mahal se distingue comme le plus bel exemple d\'architecture moghole, un mélange de styles indien, perse et islamique.';

  @override
  String get tajMahalCallout2 =>
      'Il a fallu les efforts de 22 000 ouvriers, peintres, artistes de broderie et tailleurs de pierre pour façonner le Taj Mahal.';

  @override
  String get tajMahalVideoCaption =>
      '« Le Taj Mahal de l\'Inde est un monument éternel à l\'amour | National Geographic. » Youtube, téléchargé par National Geographic.';

  @override
  String get tajMahalMapCaption =>
      'Carte montrant l\'emplacement du Taj Mahal dans l\'Uttar Pradesh, Inde.';

  @override
  String get tajMahalHistoryInfo1 =>
      'Le Taj Mahal est un mausolée en marbre blanc-ivoire sur la rive droite de la rivière Yamuna dans la ville indienne d\'Agra. Il a été commandé en 1632 EC par l\'empereur moghol Shah Jahan (r. 1628-1658) pour abriter la tombe de son épouse favorite, Mumtaz Mahal ; il abrite également la tombe de Shah Jahan lui-même.';

  @override
  String get tajMahalHistoryInfo2 =>
      'Le tombeau est le point central d\'un complexe de 42 acres (17 hectares), qui comprend des bâtiments de mosquée jumeaux (placés symétriquement de chaque côté du mausolée), une maison d\'hôtes, et est aménagé dans des jardins formels délimités sur trois côtés par des murs.';

  @override
  String get tajMahalConstructionInfo1 =>
      'Le Taj Mahal a été construit en utilisant des matériaux de toute l\'Inde et l\'Asie. On croit que plus de 1 000 éléphants ont été utilisés pour transporter les matériaux de construction.\nLe marbre blanc translucide a été apporté du Rajasthan, le jaspe du Pendjab, le jade et le cristal de Chine. La turquoise venait du Tibet et le lapis-lazuli d\'Afghanistan, tandis que le saphir venait de Sri Lanka. Au total, vingt-huit types de pierres précieuses et semi-précieuses ont été incrustés dans le marbre blanc.';

  @override
  String get tajMahalConstructionInfo2 =>
      'Une zone d\'environ 3 acres a été excavée, remplie de terre pour réduire l\'infiltration, et nivelée à 160 pieds au-dessus de la rive. Dans la zone du tombeau, des puits ont été creusés et remplis de pierres et de gravats pour former les fondations du tombeau.\nLe socle et le tombeau ont pris environ 12 ans à terminer. Les parties restantes du complexe ont pris 10 ans supplémentaires.';

  @override
  String get tajMahalLocationInfo1 =>
      'Le bâtiment le plus célèbre de l\'Inde, il est situé dans la partie orientale de la ville sur la rive sud de la rivière Yamuna, près de 1 mile à l\'est du fort d\'Agra, également sur la rive droite de la Yamuna.';

  @override
  String get tajMahalLocationInfo2 =>
      'Le Taj Mahal est construit sur un terrain à l\'intérieur de la ville fortifiée d\'Agra. Shah Jahan a offert au maharaja Jai Singh un grand palais au centre d\'Agra en échange du terrain.';

  @override
  String get tajMahal1631ce =>
      'Construit par l\'empereur moghol Shah Jahān pour immortaliser sa défunte épouse.';

  @override
  String get tajMahal1647ce =>
      'Construction terminée. Le projet a impliqué plus de 20 000 ouvriers et couvrait 42 acres.';

  @override
  String get tajMahal1658ce =>
      'Il y avait des plans pour un deuxième mausolée pour ses propres restes, mais Shah Jahān a été emprisonné par son fils pour le reste de sa vie dans le fort d\'Agra, et cela n\'a jamais eu lieu.';

  @override
  String get tajMahal1901ce =>
      'Le lord Curzon et le vice-roi britannique de l\'Inde ont effectué une restauration majeure du monument après plus de 350 ans de déclin et de corrosion dus à la pollution industrielle et aux émissions.';

  @override
  String get tajMahal1984ce =>
      'Pour protéger la structure des militants sikhs et de certains groupes nationalistes hindous, la visualisation nocturne a été interdite aux touristes. Cette interdiction a duré 20 ans.';

  @override
  String get tajMahal1998ce =>
      'Programme de restauration et de recherche mis en œuvre pour aider à préserver le monument.';

  @override
  String get tajMahalCollectible1Title => 'Dague avec fourreau';

  @override
  String get tajMahalCollectible1Icon => 'bijou';

  @override
  String get tajMahalCollectible2Title => 'La Maison de Bijapur';

  @override
  String get tajMahalCollectible2Icon => 'image';

  @override
  String get tajMahalCollectible3Title => 'Panneau de calligraphie Nasta\'liq';

  @override
  String get tajMahalCollectible3Icon => 'rouleau';

  @override
  String get timelineEvent2900bce =>
      'Première utilisation connue du papyrus par les Égyptiens';

  @override
  String get timelineEvent2700bce => 'Le règne ancien commence en Égypte';

  @override
  String get timelineEvent2600bce =>
      'Émergence de la culture maya dans la péninsule du Yucatán';

  @override
  String get timelineEvent2560bce =>
      'Le roi Khufu termine la Grande Pyramide de Gizeh';

  @override
  String get timelineEvent2500bce => 'Le mammouth s\'éteint';

  @override
  String get timelineEvent2200bce => 'Achèvement de Stonehenge';

  @override
  String get timelineEvent2000bce => 'Domestication du cheval';

  @override
  String get timelineEvent1800bce => 'L\'écriture alphabétique émerge';

  @override
  String get timelineEvent890bce => 'Homère écrit l\'Iliade et l\'Odyssée';

  @override
  String get timelineEvent776bce =>
      'Premiers jeux olympiques anciens enregistrés';

  @override
  String get timelineEvent753bce => 'Fondation de Rome';

  @override
  String get timelineEvent447bce =>
      'Le début de la construction du Parthénon à Athènes';

  @override
  String get timelineEvent427bce => 'Naissance du philosophe grec Platon';

  @override
  String get timelineEvent322bce =>
      'Mort d\'Aristote (61), le premier scientifique authentique';

  @override
  String get timelineEvent200bce =>
      'Le papier est inventé dans la dynastie Han';

  @override
  String get timelineEvent44bce =>
      'Mort de Jules César ; début de l\'Empire romain';

  @override
  String get timelineEvent4bce => 'Naissance de Jésus-Christ';

  @override
  String get timelineEvent43ce =>
      'L\'Empire romain entre en Grande-Bretagne pour la première fois';

  @override
  String get timelineEvent79ce => 'Destruction de Pompéi par le volcan Vésuve';

  @override
  String get timelineEvent455ce => 'Fin de l\'Empire romain';

  @override
  String get timelineEvent500ce => 'Tikal devient la première grande cité maya';

  @override
  String get timelineEvent632ce =>
      'Mort de Mahomet (61), fondateur de l\'Islam';

  @override
  String get timelineEvent793ce =>
      'Les Vikings envahissent l\'Angleterre pour la première fois';

  @override
  String get timelineEvent800ce => 'La poudre à canon est inventée en Chine';

  @override
  String get timelineEvent1001ce =>
      'Leif Erikson s\'installe pendant l\'hiver dans l\'est du Canada actuel';

  @override
  String get timelineEvent1077ce =>
      'Le début de la construction de la Tour de Londres';

  @override
  String get timelineEvent1117ce => 'Fondation de l\'Université d\'Oxford';

  @override
  String get timelineEvent1199ce =>
      'Les Européens utilisent les boussoles pour la première fois';

  @override
  String get timelineEvent1227ce => 'Mort de Gengis Khan (65)';

  @override
  String get timelineEvent1337ce =>
      'La guerre de Cent Ans commence alors que l\'Angleterre et la France luttent pour la domination.';

  @override
  String get timelineEvent1347ce =>
      'La première des nombreuses occurrences de la peste noire, croyait-on avoir exterminé jusqu\'à 50% de la population européenne à la fin';

  @override
  String get timelineEvent1428ce => 'Naissance de l\'Empire aztèque au Mexique';

  @override
  String get timelineEvent1439ce => 'Johannes Gutenberg invente l\'imprimerie';

  @override
  String get timelineEvent1492ce =>
      'Christophe Colomb atteint le Nouveau Monde';

  @override
  String get timelineEvent1760ce => 'La révolution industrielle commence';

  @override
  String get timelineEvent1763ce => 'Développement du moteur à vapeur de Watt';

  @override
  String get timelineEvent1783ce =>
      'Fin de la guerre d\'indépendance américaine de l\'Empire britannique';

  @override
  String get timelineEvent1789ce => 'La Révolution française commence';

  @override
  String get timelineEvent1914ce => 'Première Guerre mondiale';

  @override
  String get timelineEvent1929ce =>
      'Le mardi noir signale le début de la Grande Dépression';

  @override
  String get timelineEvent1939ce => 'Seconde Guerre mondiale';

  @override
  String get timelineEvent1957ce =>
      'lancement du Spoutnik 1 par l\'Union soviétique';

  @override
  String get timelineEvent1969ce => 'Mission Apollo 11 atterrit sur la lune';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String privacyStatement(Object privacyUrl) {
    return 'Comme expliqué dans notre $privacyUrl nous ne collectons aucune information personnelle.';
  }

  @override
  String get pageNotFoundBackButton => 'Retour à la civilisation';

  @override
  String get pageNotFoundMessage =>
      'La page que vous recherchez n\'existe pas.';
}
