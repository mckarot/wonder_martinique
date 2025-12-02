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
  String get homeMenuButtonMerchants => 'Commerçants';

  @override
  String get homeMenuAboutWonderous =>
      'Wonder Martinique est une vitrine visuelle des cinq merveilles de Martinique. ';

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
  String get homeMenuAboutRepo => 'Dépôt github de Wonder Martinique';

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
      'Naviguez à l\'intersection du temps, de l\'art et de la culture martiniquaise.';

  @override
  String get introTitleExplore => 'Explorer des lieux';

  @override
  String get introDescriptionUncover =>
      'Découvrez des structures humaines remarquables de Martinique.';

  @override
  String get introTitleDiscover => 'Découvrir des artefacts';

  @override
  String get introDescriptionLearn =>
      'Apprenez-en davantage sur la culture martiniquaise à travers le temps en examinant ce qu\'elle a laissé derrière elle.';

  @override
  String get introSemanticNavigate => 'Naviguer';

  @override
  String get introSemanticSwipeLeft => 'Balayez vers la gauche pour continuer';

  @override
  String get introSemanticEnterApp => 'Entrer dans l\'application';

  @override
  String get introSemanticWonderous => 'Wonder Martinique';

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
  String get chichenItzaTitle => 'Le Rocher du Diamant';

  @override
  String get chichenItzaSubTitle => 'Le balcon sur la mer';

  @override
  String get chichenItzaRegionTitle => 'Martinique';

  @override
  String get chichenItzaArtifactCulture => 'Caraïbe';

  @override
  String get chichenItzaArtifactGeolocation => 'Martinique';

  @override
  String get chichenItzaPullQuote1Top => 'Entre ciel';

  @override
  String get chichenItzaPullQuote1Bottom => 'et mer infinie';

  @override
  String get chichenItzaPullQuote2 =>
      'Le site témoigne de la richesse culturelle des peuples caraïbes et de leur lien profond avec l\'océan.';

  @override
  String get chichenItzaPullQuote2Author => 'Patrimoine Martiniquais';

  @override
  String get chichenItzaCallout1 =>
      'Le site présente des vestiges archéologiques importants témoins de l\'occupation caraïbe avant l\'arrivée des Européens.';

  @override
  String get chichenItzaCallout2 =>
      'Le Rocher du Diamant s\'élève à plus de 300 mètres d\'altitude et offre une vue imprenable sur les îles du sud.';

  @override
  String get chichenItzaVideoCaption =>
      '« Le Rocher du Diamant | Site panoramique de Martinique. » Youtube, téléchargé par Office du Tourisme de Martinique.';

  @override
  String get chichenItzaMapCaption =>
      'Carte montrant l\'emplacement du Rocher du Diamant en Martinique.';

  @override
  String get chichenItzaHistoryInfo1 =>
      'Le Rocher du Diamant est un site emblématique de Martinique, offrant un point de vue exceptionnel sur l\'archipel des Saintes et la mer Caraïbe. Les premières traces d\'occupation datent de plusieurs siècles avant J.-C., période durant laquelle les peuples amérindiens utilisaient cet endroit comme lieu d\'observation et de navigation.\nLe site tire son nom de sa forme distinctive qui rappelle un diamant vu de loin. Il a joué un rôle stratégique important dans l\'histoire maritime de la Martinique.';

  @override
  String get chichenItzaHistoryInfo2 =>
      'Le site est devenu un lieu de référence pour comprendre la culture maritime des peuples précolombiens de Martinique, un facteur qui en fait un trésor archéologique exceptionnel.';

  @override
  String get chichenItzaConstructionInfo1 =>
      'Les structures du Rocher du Diamant ont été aménagées pour tirer parti de la topographie naturelle du site. Beaucoup de ces aménagements en pierre volcanique étaient originalement destinés à l\'observation astronomique et à la navigation selon les techniques de construction locales.\nLes vestiges s\'élèvent à environ 300 mètres d\'altitude et se composent d\'une série de plateformes naturelles, chacune offrant une vue panoramique unique sur l\'horizon maritime.';

  @override
  String get chichenItzaConstructionInfo2 =>
      'Il a été aménagé sur un promontoire rocheux, qui a été artificiellement nivelé pour supporter des structures d\'observation. Les bâtiments importants du site étaient reliés par un réseau dense de sentiers.';

  @override
  String get chichenItzaLocationInfo1 =>
      'Le Rocher du Diamant est situé dans la région de Basse-Pointe, sur la côte atlantique de Martinique. À proximité, les paysages volcaniques et les plages de sable noir offrent un contraste saisissant avec les eaux turquoise de la Caraïbe.';

  @override
  String get chichenItzaLocationInfo2 =>
      'Parmi ces paysages, le site offre une vue imprenable sur l\'archipel des Saintes, ce qui en faisait un lieu propice à l\'observation astronomique et à la navigation.';

  @override
  String get chichenItza600ce =>
      'Le Rocher du Diamant s\'élève au rang de centre d\'observation vers la fin de la période précoloniale';

  @override
  String get chichenItza832ce =>
      'Les premières traces d\'occupation découvertes au Rocher du Diamant datent de cette période';

  @override
  String get chichenItza998ce =>
      'Dernières traces d\'occupation connues enregistrées au Rocher du Diamant';

  @override
  String get chichenItza1100ce =>
      'Le Rocher du Diamant décline comme centre d\'observation avec l\'arrivée des Européens';

  @override
  String get chichenItza1527ce =>
      'Découverte par les explorateurs européens lors de leurs premiers contacts avec l\'île';

  @override
  String get chichenItza1535ce =>
      'Abandon du site avec la colonisation européenne de la Martinique';

  @override
  String get chichenItzaCollectible1Title => 'Collier amérindien';

  @override
  String get chichenItzaCollectible1Icon => 'bijou';

  @override
  String get chichenItzaCollectible2Title => 'Ornement en coquillage';

  @override
  String get chichenItzaCollectible2Icon => 'bijou';

  @override
  String get chichenItzaCollectible3Title =>
      'Le Rocher du Diamant, vue aérienne';

  @override
  String get chichenItzaCollectible3Icon => 'image';

  @override
  String get christRedeemerTitle => 'Le Morne des Héros';

  @override
  String get christRedeemerSubTitle => 'Monument aux morts';

  @override
  String get christRedeemerRegionTitle => 'Fort-de-France, Martinique';

  @override
  String get christRedeemerArtifactGeolocation => 'Martinique';

  @override
  String get christRedeemerPullQuote1Top => 'Une union parfaite entre';

  @override
  String get christRedeemerPullQuote1Bottom => 'mémoire et paysage';

  @override
  String get christRedeemerPullQuote2 =>
      'Le monument domine le paysage martiniquais, rappelant les sacrifices des héros de la Guadeloupe pour la liberté.';

  @override
  String get christRedeemerPullQuote2Author => 'Mémoire Nationale';

  @override
  String get christRedeemerCallout1 =>
      'Le monument aux morts des Héros de la Guadeloupe a été érigé pour commémorer les victimes de la guerre.';

  @override
  String get christRedeemerCallout2 =>
      'La construction a pris plusieurs années et a coûté l\'équivalent de plusieurs millions d\'euros, le monument a été inauguré le 8 mai 1936.';

  @override
  String get christRedeemerVideoCaption =>
      '« Le Morne des Héros - Monument aux morts de Martinique. » Youtube, téléchargé par Office du Tourisme de Martinique.';

  @override
  String get christRedeemerMapCaption =>
      'Carte montrant l\'emplacement du Morne des Héros à Fort-de-France, Martinique.';

  @override
  String get christRedeemerHistoryInfo1 =>
      'Le placement d\'un monument aux morts sur le Morne a été suggéré au début du XXe siècle pour honorer les soldats martiniquais tombés au combat. Le projet a été approuvé par les autorités coloniales françaises.\nEn 1920, un comité de citoyens a proposé un projet pour un monument emblématique sur la colline. Le groupe a organisé des collectes de fonds pour attirer des dons et soutenir la construction du monument.';

  @override
  String get christRedeemerHistoryInfo2 =>
      'Le comité de Fort-de-France a proposé un projet pour un monument emblématique sur le Morne en 1925. L\'organisation était motivée par ce qu\'ils percevaient comme une « dette envers les héros » de la Grande Guerre.\nLes designs envisagés pour le « Monument aux morts » comprenaient une croix chrétienne, une statue représentant la Liberté et un piédestal symbolisant la République.';

  @override
  String get christRedeemerConstructionInfo1 =>
      'L\'artiste local Auguste Sédony et l\'ingénieur municipal de Fort-de-France ont conçu le monument. Le sculpteur parisien Henri Boucher a créé l\'œuvre principale. En 1926, Boucher a été chargé de réaliser les sculptures monumentales, qui ont été étudiées à l\'École des Beaux-Arts de Paris.';

  @override
  String get christRedeemerConstructionInfo2 =>
      'Un groupe d\'ingénieurs et de techniciens a étudié les plans et a estimé que la construction en béton armé était plus appropriée pour le monument. Le béton constituant la base a été fourni localement. Les couches externes sont en pierre volcanique, choisie pour ses qualités durables et sa couleur qui s\'intègre au paysage.';

  @override
  String get christRedeemerLocationInfo1 =>
      'Le Morne, qui signifie « montagne » en créole, est une colline dominant Fort-de-France, la capitale de Martinique. C\'est un point culminant de 162 mètres situé dans le parc du Morne, un espace vert urbain.';

  @override
  String get christRedeemerLocationInfo2 =>
      'Le Morne se trouve juste au sud du centre-ville mais est entièrement dans les limites de la ville et visible à de grandes distances.';

  @override
  String get christRedeemer1850ce =>
      'Les plans pour le monument ont été proposés pour la première fois par le conseil municipal sur le Morne. Le projet a été approuvé rapidement.';

  @override
  String get christRedeemer1921ce =>
      'Un nouveau plan a été proposé par l\'administration coloniale française, et après que les citoyens de Fort-de-France aient manifesté leur soutien, il a finalement été approuvé.';

  @override
  String get christRedeemer1922ce =>
      'Les fondations du monument ont été solennellement posées pour commémorer l\'armistice de la Grande Guerre.';

  @override
  String get christRedeemer1926ce =>
      'La construction a officiellement commencé après que le design initial a été choisi via un concours et modifié par des artistes et ingénieurs locaux.';

  @override
  String get christRedeemer1931ce =>
      'La construction du monument a été achevée, mesurant 30 mètres de haut avec une envergure de 25 mètres.';

  @override
  String get christRedeemer2006ce =>
      'Une restauration a été consacrée à la base du monument pour marquer le 70e anniversaire de son inauguration.';

  @override
  String get christRedeemerCollectible1Title => 'Médaille commémorative';

  @override
  String get christRedeemerCollectible1Icon => 'statue';

  @override
  String get christRedeemerCollectible2Title => 'Drapeau tricolore';

  @override
  String get christRedeemerCollectible2Icon => 'bijou';

  @override
  String get christRedeemerCollectible3Title => 'Mouchoirs (l\'un des deux)';

  @override
  String get christRedeemerCollectible3Icon => 'textile';

  @override
  String get colosseumTitle => 'Fort Saint-Louis';

  @override
  String get colosseumSubTitle => 'La forteresse coloniale';

  @override
  String get colosseumRegionTitle => 'Fort-de-France, Martinique';

  @override
  String get colosseumArtifactCulture => 'Colonial français';

  @override
  String get colosseumArtifactGeolocation => 'Martinique';

  @override
  String get colosseumPullQuote1Top => 'Toujours la plus grande forteresse';

  @override
  String get colosseumPullQuote1Bottom => 'debout en Martinique aujourd\'hui';

  @override
  String get colosseumPullQuote2 =>
      'Quand tombera Fort Saint-Louis, l\'histoire de Martinique tombera ; Et quand l\'histoire tombera - le Monde.';

  @override
  String get colosseumPullQuote2Author => 'Poète Martiniquais';

  @override
  String get colosseumCallout1 =>
      'Il a été utilisé pour la défense de la colonie française et les cérémonies publiques, notamment les visites des autorités et des représentants de la République.';

  @override
  String get colosseumCallout2 =>
      'C\'est la plus grande forteresse coloniale jamais construite en Martinique, et reste la forteresse debout la plus grande de l\'île aujourd\'hui, malgré son âge.';

  @override
  String get colosseumVideoCaption =>
      '« Fort Saint-Louis | Site historique de Martinique. » Youtube, téléchargé par Office du Tourisme de Martinique.';

  @override
  String get colosseumMapCaption =>
      'Carte montrant l\'emplacement de Fort Saint-Louis à Fort-de-France, Martinique.';

  @override
  String get colosseumHistoryInfo1 =>
      'Fort Saint-Louis est une forteresse coloniale au centre de la ville de Fort-de-France, en Martinique. Contrairement aux autres bâtiments coloniaux qui étaient construits sur les flancs des collines, Fort Saint-Louis est une structure entièrement indépendante.';

  @override
  String get colosseumHistoryInfo2 =>
      'Le bâtiment a cessé d\'être utilisé pour la défense à l\'époque moderne. Au XXe siècle, une petite chapelle avait été construite dans la structure de la forteresse, et la cour intérieure avait été convertie en jardin.\nLes nombreux espaces voûtés dans les arcades sous les bâtiments ont été convertis en bureaux et salles d\'exposition, et sont enregistrés comme encore utilisés aujourd\'hui.';

  @override
  String get colosseumConstructionInfo1 =>
      'La construction a commencé sous le gouverneur général de la Martinique en 1635 et a été achevée en 1640. Des modifications supplémentaires ont été apportées pendant les siècles suivants.\nLe Fort Saint-Louis est construit en calcaire corallien, en tuf volcanique et en béton. Le mur extérieur nécessitait plus de 10 000 mètres cubes de pierre corallienne qui étaient posés sans mortier ; ils étaient maintenus ensemble par des crampons en fer.';

  @override
  String get colosseumConstructionInfo2 =>
      'Il pouvait accueillir entre 500 et 1 000 soldats à différents moments de son histoire, avec une garnison moyenne d\'environ 750.';

  @override
  String get colosseumLocationInfo1 =>
      'Suite à la fondation de Fort-de-France en 1635, les autorités coloniales françaises s\'emparèrent d\'une grande partie de la zone côtière pour construire leur résidence administrative et leur forteresse défensive. Une grave nécessité pour protéger la colonie des attaques ennemies, des parties de cette forteresse et de ses terrains couvraient 5 hectares.';

  @override
  String get colosseumLocationInfo2 =>
      'Sur l\'emplacement dominant la baie, Fort Saint-Louis serait construit dans le cadre de la défense coloniale française.';

  @override
  String get colosseum70ce =>
      'La construction de Fort Saint-Louis a commencé pendant le règne du gouverneur hollandais au-dessus de ce qui était auparavant une baie naturelle. Cela a été fait dans le but de protéger la colonie.';

  @override
  String get colosseum82ce =>
      'L\'étage supérieur a été construit, et la structure a été officiellement achevée par le gouverneur.';

  @override
  String get colosseum1140ce =>
      'La forteresse a été réutilisée comme quartier général pour les familles coloniales. Elle a aussi été utilisée comme église à un moment donné.';

  @override
  String get colosseum1490ce =>
      'Le gouverneur a permis que le site soit utilisé comme entrepôt, à la fois pour le stockage et l\'entretien des bâtiments.';

  @override
  String get colosseum1829ce =>
      'La préservation de Fort Saint-Louis a officiellement commencé, après plus de deux siècles d\'utilisation militaire. Le ministère de la Culture était notamment dévoué à ce projet.';

  @override
  String get colosseum1990ce =>
      'Un projet de restauration a été entrepris pour s\'assurer que Fort Saint-Louis reste une attraction touristique majeure pour Martinique. Il constitue actuellement l\'une des plus grandes sources de revenus touristiques de l\'île.';

  @override
  String get colosseumCollectible1Title => 'Canon colonial en bronze';

  @override
  String get colosseumCollectible1Icon => 'vase';

  @override
  String get colosseumCollectible2Title =>
      'Plaque en bronze commémorant les batailles';

  @override
  String get colosseumCollectible2Icon => 'statue';

  @override
  String get colosseumCollectible3Title => 'Vue intérieure de Fort Saint-Louis';

  @override
  String get colosseumCollectible3Icon => 'image';

  @override
  String get greatWallTitle => 'La Trace des Caps';

  @override
  String get greatWallSubTitle => 'Le plus long sentier de Martinique';

  @override
  String get greatWallRegionTitle => 'Martinique';

  @override
  String get greatWallArtifactCulture => 'Martiniquais';

  @override
  String get greatWallArtifactGeolocation => 'Martinique';

  @override
  String get greatWallPullQuote1Top => 'Le plus long sentier';

  @override
  String get greatWallPullQuote1Bottom => 'fait par l\'homme en Martinique';

  @override
  String get greatWallPullQuote2 =>
      'Son importance historique et culturelle n\'est égalée que par sa signification paysagère.';

  @override
  String get greatWallPullQuote2Author => 'Office du Tourisme';

  @override
  String get greatWallCallout1 =>
      'Les sections les mieux connues du sentier ont été aménagées par les services de l\'État et la Région Martinique.';

  @override
  String get greatWallCallout2 =>
      'Cependant, pendant les années 2000, des matériaux modernes ont été largement utilisés dans de nombreuses zones du sentier, ainsi que des techniques traditionnelles de construction.';

  @override
  String get greatWallVideoCaption =>
      '« Voir La Trace des Caps d\'en haut | Office du Tourisme de Martinique. » Youtube, téléchargé par Office du Tourisme de Martinique.';

  @override
  String get greatWallMapCaption =>
      'Carte montrant l\'emplacement de La Trace des Caps dans le nord de la Martinique.';

  @override
  String get greatWallHistoryInfo1 =>
      'La Trace des Caps est une série de sentiers qui ont été aménagés le long des côtes septentrionales de Martinique comme protection contre l\'érosion côtière et comme aménagement touristique. La longueur totale de tous les sections dépasse 50 kilomètres.';

  @override
  String get greatWallHistoryInfo2 =>
      'Plusieurs sections de sentier ont été aménagées dès les années 1990, avec des tronçons sélectionnés reliés ensemble plus tard par l\'Office du Tourisme de Martinique. Peu des sections originelles subsistent.\nPlus tard, de nombreuses collectivités successives ont construit et entretenu de multiples tronçons de sentiers.';

  @override
  String get greatWallConstructionInfo1 =>
      'Le transport de la grande quantité de matériaux nécessaires à la construction était difficile, alors les constructeurs essayaient toujours d\'utiliser des ressources locales. Les pierres des montagnes ont été utilisées sur les chaînes de montagnes, tandis que le béton a été utilisé pour la construction dans les plaines. La plupart des anciens sentiers se sont érodés au fil des siècles.';

  @override
  String get greatWallConstructionInfo2 =>
      'Les pierres coupées en formes rectangulaires ont été utilisées pour la fondation, les bords intérieurs et extérieurs, et les entrées du sentier.\nSous les années 2000, les aménagements touristiques de Martinique ont étendu le sentier au-delà des caps et la construction a été poursuivie.';

  @override
  String get greatWallLocationInfo1 =>
      'Les sentiers aménagés par différentes collectivités ont plusieurs parcours. Collectivement, ils s\'étendent de Saint-Pierre à l\'ouest à Grand-Rivière à l\'est, de la frontière avec la Guadeloupe au nord à la rivière Galion au sud ; le long d\'un arc qui délimite approximativement le bord de la côte caraïbe.';

  @override
  String get greatWallLocationInfo2 =>
      'Outre la protection côtière, d\'autres objectifs de La Trace des Caps comprenaient les contrôles d\'accès, permettant la réglementation du tourisme, l\'encouragement des activités nautiques et le contrôle de l\'immigration et de l\'émigration.';

  @override
  String get greatWall700bce =>
      'Le premier repère de La Trace des Caps a commencé à l\'origine comme un chemin côtier reliant les villages de pêcheurs. Au fil des ans, des sentiers supplémentaires ont été construits et ajoutés pour étendre et connecter le territoire.';

  @override
  String get greatWall214bce =>
      'Le gouvernement français unifie la Martinique et relie les sentiers des villages environnants en La Trace des Caps, prenant 5 ans à aménager avec des centaines de travailleurs.';

  @override
  String get greatWall121bce =>
      'Un projet d\'aménagement de 10 ans a été lancé par l\'Office du Tourisme pour construire des sections est et ouest du sentier, y compris des balises, des tours et des points de vue. Non seulement pour la protection côtière, mais aussi pour contrôler les routes touristiques.';

  @override
  String get greatWall556ce =>
      'La Région Martinique a également lancé plusieurs projets d\'aménagement, utilisant plus de 500 000 euros pour réparer et étendre des sections du sentier, ajoutant à sa longueur et construisant même un deuxième sentier intérieur autour de Saint-Pierre.';

  @override
  String get greatWall618ce =>
      'La Trace des Caps a été réparée pendant les années 2000 et utilisée pour se défendre contre l\'érosion. Avant et après cette période, le sentier a très peu été utilisé et est tombé en ruine.';

  @override
  String get greatWall1487ce =>
      'L\'Office du Tourisme a divisé les sentiers en lignes nord et sud, façonnant finalement ce qu\'il est aujourd\'hui. Depuis lors, il est progressivement tombé en ruine et reste principalement inutilisé.';

  @override
  String get greatWallCollectible1Title =>
      'Biographies des explorateurs caraïbes';

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
  String get machuPicchuTitle => 'La Montagne Pelée';

  @override
  String get machuPicchuSubTitle => 'Montagne volcanique';

  @override
  String get machuPicchuRegionTitle => 'Région de Saint-Pierre, Martinique';

  @override
  String get machuPicchuArtifactCulture => 'Volcanique';

  @override
  String get machuPicchuArtifactGeolocation => 'Martinique';

  @override
  String get machuPicchuPullQuote1Top =>
      'Peu de romances peuvent jamais surpasser';

  @override
  String get machuPicchuPullQuote1Bottom => 'celle du volcan majestueux';

  @override
  String get machuPicchuPullQuote1Author => 'Naturaliste Martiniquais';

  @override
  String get machuPicchuPullQuote2 =>
      'Dans la variété de ses charmes et la puissance de son sort, je ne connais aucun autre endroit dans le monde qui puisse lui être comparé.';

  @override
  String get machuPicchuPullQuote2Author => 'Naturaliste Martiniquais';

  @override
  String get machuPicchuCallout1 =>
      'Pendant son activité comme volcan actif, on estime qu\'environ 30 000 personnes vivaient dans ses environs, dont la plupart servaient de personnel de soutien qui y vivaient de manière permanente.';

  @override
  String get machuPicchuCallout2 =>
      'Les spécialistes sont des maîtres de cette technique, appelée volcanologie, dans laquelle des mesures précises sont effectuées pour surveiller l\'activité du volcan.';

  @override
  String get machuPicchuVideoCaption =>
      '« La Montagne Pelée 101 | Office du Tourisme de Martinique. » Youtube, téléchargé par Office du Tourisme de Martinique.';

  @override
  String get machuPicchuMapCaption =>
      'Carte montrant l\'emplacement de La Montagne Pelée dans le nord de la Martinique.';

  @override
  String get machuPicchuHistoryInfo1 =>
      'La Montagne Pelée est un volcan du nord de la Martinique situé dans les montagnes du nord de l\'île sur une crête de montagne de 1 397 mètres (4 583 pieds). L\'activité volcanique semble dater de plusieurs éruptions majeures, dont la plus connue en 1902 EC qui détruisit la ville de Saint-Pierre.';

  @override
  String get machuPicchuHistoryInfo2 =>
      'Il y a un consensus parmi les géologues que la Montagne Pelée est un volcan actif surveillé par l\'Institut de Physique du Globe de Paris. Plutôt, elle a été surveillée pendant plus de 100 ans avant d\'être considérée comme en sommeil, apparemment après une série d\'éruptions mineures.';

  @override
  String get machuPicchuConstructionInfo1 =>
      'Les bâtiments de surveillance utilisent le style architectural moderne de structures en béton armé.\nLes bâtiments d\'observation ont de nombreuses caractéristiques stabilisatrices : les portes et fenêtres sont trapézoïdales, se rétrécissant du bas vers le haut ; les coins sont généralement arrondis ; les coins intérieurs s\'inclinent souvent légèrement dans les pièces, et les coins extérieurs étaient souvent renforcés par des structures en acier.';

  @override
  String get machuPicchuConstructionInfo2 =>
      'Cette méthode de construction précise a rendu les structures de surveillance résistantes à l\'activité sismique.\nLe site lui-même peut avoir été intentionnellement construit sur des lignes de faille pour offrir un meilleur drainage et une source prête de données géologiques.';

  @override
  String get machuPicchuLocationInfo1 =>
      'La Montagne Pelée est située au-dessus d\'un méandre de la rivière Blanche, qui entoure le site sur trois côtés, où des falaises descendent verticalement de 1 000 pieds (305 m) jusqu\'à la rivière à leur base. L\'emplacement du volcan était un secret militaire, et ses précipices profonds et ses montagnes escarpées fournissaient des défenses naturelles.';

  @override
  String get machuPicchuLocationInfo2 =>
      'Le Pont de la Galère, un pont en béton, traverse la rivière Blanche dans le secteur de la Grande Anse, fournissant une entrée pour l\'équipe de surveillance. Un autre pont a été construit à l\'ouest de la Montagne Pelée, le pont en béton armé, à un endroit où un écart se produit dans la falaise qui mesure 15 mètres.';

  @override
  String get machuPicchu1438ce =>
      'Supposé avoir été actif et surveillé par les services de l\'État français.';

  @override
  String get machuPicchu1572ce =>
      'Les dernières éruptions ont eu lieu en 1902, détruisant la ville de Saint-Pierre jusqu\'à ce qu\'elle soit finalement reconstruite.';

  @override
  String get machuPicchu1867ce =>
      'Supposé avoir été découvert à l\'origine par l\'explorateur français Augustin Ardouin, mais ses découvertes n\'ont jamais été effectivement publiées.';

  @override
  String get machuPicchu1911ce =>
      'Introduit au monde par l\'Institut de Physique du Globe de Paris, qui y a été conduit par des locaux après avoir révélé qu\'il surveillait l\'activité volcanique.';

  @override
  String get machuPicchu1964ce =>
      'Les sites environnants ont été étudiés en profondeur par l\'Institut Français de Recherche pour le Développement, qui a trouvé un candidat beaucoup plus approprié pour la surveillance volcanique.';

  @override
  String get machuPicchu1997ce =>
      'Depuis sa surveillance, un nombre croissant de touristes ont visité la Montagne Pelée chaque année, avec des chiffres dépassant 50 000 en 2017.';

  @override
  String get machuPicchuCollectible1Title => 'Tunique de protection volcanique';

  @override
  String get machuPicchuCollectible1Icon => 'textile';

  @override
  String get machuPicchuCollectible2Title => 'Figurine de volcan';

  @override
  String get machuPicchuCollectible2Icon => 'statue';

  @override
  String get machuPicchuCollectible3Title => 'Bol de mesure sismique';

  @override
  String get machuPicchuCollectible3Icon => 'vase';

  @override
  String get petraTitle => 'Les Pitons du Carbet';

  @override
  String get petraSubTitle => 'Les montagnes emblématiques';

  @override
  String get petraRegionTitle => 'Sainte-Luce, Martinique';

  @override
  String get petraArtifactCulture => 'Naturel';

  @override
  String get petraArtifactGeolocation => 'Martinique';

  @override
  String get petraPullQuote1Top => 'Une chaîne de montagnes';

  @override
  String get petraPullQuote1Bottom => 'majestueuse et préservée';

  @override
  String get petraPullQuote1Author => 'Office du Tourisme';

  @override
  String get petraPullQuote2 =>
      'Les Pitons du Carbet sont un brillant exemple de l\'art de la nature transformant une île tropicale en une merveille majestueuse.';

  @override
  String get petraPullQuote2Author => 'Naturaliste Martiniquais';

  @override
  String get petraCallout1 =>
      'Ils sont particulièrement connus pour leur biodiversité, leur flore et leur faune endémiques.';

  @override
  String get petraCallout2 =>
      'Peut-être qu\'une ressemblance plus proéminente avec le style tropical à La Martinique se trouve avec ses Pitons.';

  @override
  String get petraVideoCaption =>
      '« Montagnes stupéfiantes des Pitons du Carbet | Office du Tourisme de Martinique. » Youtube, téléchargé par Office du Tourisme de Martinique.';

  @override
  String get petraMapCaption =>
      'Carte montrant l\'emplacement des Pitons du Carbet dans le sud-est de la Martinique.';

  @override
  String get petraHistoryInfo1 =>
      'La région autour des Pitons du Carbet est habitée depuis au moins 1000 ans avant JC, et les Amérindiens ont peut-être colonisé ce qui deviendrait un lieu sacré dès le IIIe siècle avant JC.\nLe tourisme a apporté aux habitants locaux des revenus considérables et les Pitons sont devenus le centre de leur richesse. Les Martiniquais étaient habitués à vivre dans les montagnes arides, contrairement à leurs ennemis, et ont pu repousser les attaques en tirant parti du terrain montagneux de la région.';

  @override
  String get petraHistoryInfo2 =>
      'Les Pitons du Carbet ont prospéré au XIXe siècle, quand leur célèbre beauté naturelle - censée être le joyau de la Martinique - a été reconnue, et leur population a atteint un maximum estimé de 5 000 habitants.\nL\'accès à la montagne se fait par un défilé de 2 miles (3,2 km) appelé le sentier du Carbet, qui mène directement aux sommets.';

  @override
  String get petraConstructionInfo1 =>
      'Célèbre pour sa nature préservée et son système hydrologique, les Pitons du Carbet sont aussi appelés les « Montagnes Sacrées » à cause de leur importance spirituelle pour les anciens habitants.\nUne autre chose pour laquelle les Pitons sont connus est leur flore tropicale. Ces influences peuvent être vues dans de nombreuses espèces endémiques des Pitons et reflètent la biodiversité de l\'île.';

  @override
  String get petraConstructionInfo2 =>
      'La façade des Pitons présente un fronton brisé avec un cratère central à l\'intérieur, et deux sommets semblent se former dans les montagnes en haut. Près du bas des Pitons, nous voyons les jumeaux dieux de la nature : la flore et la faune, qui protègent les voyageurs dans leurs voyages.\nPrès du haut des Pitons, deux victoires sont vues debout de chaque côté d\'une figure féminine sur le cratère. Cette figure féminine est censée être la Déesse de la Nature, protectrice de l\'île.';

  @override
  String get petraLocationInfo1 =>
      'Les Pitons du Carbet sont situés dans le sud-est de la Martinique. Ils sont adjacents à la montagne de Morne Rouge, dans un bassin entouré de montagnes formant le flanc oriental de la vallée de la rivière du Galion.';

  @override
  String get petraLocationInfo2 =>
      'La région autour des Pitons du Carbet est habitée depuis au moins 1000 ans avant JC, et les Amérindiens ont peut-être colonisé ce qui deviendrait un lieu sacré dès le IIIe siècle avant JC.\nLes travaux archéologiques n\'ont découvert des preuves de présence amérindienne que depuis le IIe siècle avant JC, époque à laquelle les Pitons étaient devenus un lieu sacré. Les Amérindiens étaient des peuples nomades qui ont investi dans la proximité des Pitons par rapport aux routes commerciales en en faisant un centre spirituel majeur.';

  @override
  String get petra1200bce =>
      'Les premiers Amérindiens ont occupé la région et établi un lieu sacré.';

  @override
  String get petra106bce =>
      'Est devenue partie de la colonie française de la Martinique';

  @override
  String get petra551ce =>
      'Après avoir été endommagée par des tremblements de terre, l\'habitation de la montagne a pratiquement cessé.';

  @override
  String get petra1812ce =>
      'Redécouverte par le voyageur français Louis Delgrès.';

  @override
  String get petra1958ce =>
      'Excavations menées sur le site par l\'École française d\'archéologie et le Centre martiniquais de recherche orientale.';

  @override
  String get petra1989ce => 'Apparue dans le film Les Amours de la semaine.';

  @override
  String get petraCollectible1Title => 'Singe hurleur';

  @override
  String get petraCollectible1Icon => 'statue';

  @override
  String get petraCollectible2Title => 'Fleur du Carbet';

  @override
  String get petraCollectible2Icon => 'vase';

  @override
  String get petraCollectible3Title => 'Bol ouvert';

  @override
  String get petraCollectible3Icon => 'vase';

  @override
  String get pyramidsGizaTitle => 'La Caravelle';

  @override
  String get pyramidsGizaSubTitle => 'Le navire emblématique';

  @override
  String get pyramidsGizaRegionTitle => 'Le François, Martinique';

  @override
  String get pyramidsGizaArtifactCulture => 'Maritime';

  @override
  String get pyramidsGizaArtifactGeolocation => 'Martinique';

  @override
  String get pyramidsGizaPullQuote1Top =>
      'Les structures les plus élégantes sur mer';

  @override
  String get pyramidsGizaPullQuote1Bottom =>
      'Jusqu\'à l\'avènement des voiliers modernes';

  @override
  String get pyramidsGizaPullQuote2 =>
      'Des hauteurs de ces mâts, quarante siècles de navigation nous regardent.';

  @override
  String get pyramidsGizaPullQuote2Author => 'Capitaine Martiniquais';

  @override
  String get pyramidsGizaCallout1 =>
      'Il est théorisé que la caravelle ne servait pas seulement de navire de commerce pour les colons, mais aussi de vaisseau de découverte pour explorer les Caraïbes.';

  @override
  String get pyramidsGizaCallout2 =>
      'La Caravelle se compose d\'environ 1 000 pièces de bois. Environ 55 tonnes de bois de carapa, 8 tonnes de bois de mangrove et 5 tonnes de fer ont été utilisées dans la construction.';

  @override
  String get pyramidsGizaVideoCaption =>
      '« La Caravelle de Martinique | Musée maritime de la Martinique. » Youtube, téléchargé par Office du Tourisme de Martinique.';

  @override
  String get pyramidsGizaMapCaption =>
      'Carte montrant l\'emplacement de La Caravelle dans le sud-est de la Martinique.';

  @override
  String get pyramidsGizaHistoryInfo1 =>
      'Le complexe maritime de La Caravelle, aussi appelé le chantier naval de La Caravelle, est le site sur la côte du sud-est de la Martinique dans la ville du François, qui comprend le navire emblématique La Caravelle, ses installations de construction associées et le Musée maritime de Martinique. Tous ont été construits pendant la période coloniale de l\'histoire de Martinique, entre 1650 et 1750.';

  @override
  String get pyramidsGizaHistoryInfo2 =>
      'La Caravelle et d\'autres navires sont censés avoir été construits pour abriter les marchandises et les colons qui voyageaient vers et depuis la Martinique coloniale. Une partie de l\'esprit du navigateur appelée son courage était censée rester avec son navire. Des soins appropriés du navire étaient nécessaires pour que le capitaine colonial puisse accomplir ses nouvelles fonctions de maître des mers.';

  @override
  String get pyramidsGizaConstructionInfo1 =>
      'La plupart des théories de construction sont basées sur l\'idée que les caravelles ont été construites en déplaçant d\'énormes pièces de bois d\'une carrière et en les traînant et en les soulevant en place. En construisant les navires, les architectes ont pu développer leurs techniques au fil du temps.\nIls sélectionnaient un site sur une zone relativement plate de plage - pas de sable - ce qui fournissait une fondation stable. Après avoir soigneusement étudié le site et posé le premier niveau de pièces, ils construisaient les navires en niveaux horizontaux, l\'un sur l\'autre.';

  @override
  String get pyramidsGizaConstructionInfo2 =>
      'Pour La Caravelle, la plupart du bois pour l\'intérieur semble avoir été extrait immédiatement au sud du chantier de construction. L\'extérieur lisse du navire était fait d\'un bois de qualité fine qui était extrait de l\'autre côté de l\'île.\nPour s\'assurer que la caravelle restait symétrique, les pièces de revêtement extérieur devaient toutes être égales en hauteur et en largeur. Les ouvriers ont peut-être marqué tous les blocs pour indiquer l\'angle du mur du navire et taillé soigneusement les surfaces pour que les pièces s\'ajustent. Pendant la construction, la surface extérieure du bois était du bois poli ; l\'excès de bois s\'est érodé avec le temps.';

  @override
  String get pyramidsGizaLocationInfo1 =>
      'Le site est aux bords de la côte sud-est, environ 2,6 miles (4,2 km) à l\'est de la rivière du Galion dans la ville du François, et environ 5 miles (8 km) au sud-est du centre-ville de Fort-de-France.';

  @override
  String get pyramidsGizaLocationInfo2 =>
      'Actuellement, La Caravelle est située dans le côté sud-est de la côte, et elle est considérée comme l\'une des attractions touristiques les plus reconnaissables et les plus visitées de la Martinique.';

  @override
  String get pyramidsGiza2575bce =>
      'La construction des navires a commencé pour trois capitaines de la période coloniale ; Du Tertre, Du Casse et Habib.';

  @override
  String get pyramidsGiza2465bce =>
      'La construction a commencé sur les plus petites structures environnantes appelées Chaloupes pour la royauté des 5e et 6e dynasties.';

  @override
  String get pyramidsGiza443bce =>
      'L\'auteur français Du Tertre a spéculé que les caravelles avaient été construites en 20 ans avec plus de 1 000 ouvriers. Cette supposition a duré plus de 1500 ans';

  @override
  String get pyramidsGiza1925ce =>
      'Le tombeau du capitaine Du Casse a été découvert, contenant des meubles et des bijoux. L\'un des derniers tombeaux remplis de trésors après de nombreuses années de pillage et de rapine.';

  @override
  String get pyramidsGiza1979ce =>
      'Désigné site du patrimoine mondial de l\'UNESCO pour prévenir tout pillage et vandalisme supplémentaire non autorisé.';

  @override
  String get pyramidsGiza1990ce =>
      'La découverte des quartiers des ouvriers suggère que les travailleurs qui construisaient les navires n\'étaient pas des esclaves, et qu\'une méthode de construction ingénieuse a prouvé qu\'une main-d\'œuvre relativement petite était nécessaire pour construire de telles structures immenses.';

  @override
  String get pyramidsGizaCollectible1Title => 'Deux fragments de parchemin';

  @override
  String get pyramidsGizaCollectible1Icon => 'rouleau';

  @override
  String get pyramidsGizaCollectible2Title =>
      'Visage fragmentaire du capitaine Du Casse';

  @override
  String get pyramidsGizaCollectible2Icon => 'statue';

  @override
  String get pyramidsGizaCollectible3Title => 'Éléments de bijoux';

  @override
  String get pyramidsGizaCollectible3Icon => 'bijou';

  @override
  String get tajMahalTitle => 'Église des Anses d\'Arlet';

  @override
  String get tajMahalSubTitle => 'Architecture religieuse du sud';

  @override
  String get tajMahalRegionTitle => 'Les Anses d\'Arlet, Martinique';

  @override
  String get tajMahalArtifactCulture => 'Religieux Martiniquais';

  @override
  String get tajMahalArtifactGeolocation => 'Martinique';

  @override
  String get tajMahalPullQuote1Top => 'Un lieu de paix';

  @override
  String get tajMahalPullQuote1Bottom => 'au bord de l\'océan.';

  @override
  String get tajMahalPullQuote1Author => 'Historien Martiniquais';

  @override
  String get tajMahalPullQuote2 =>
      'L\'église des Anses d\'Arlet se dresse face à l\'océan comme un témoignage de la foi des habitants de cette baie paisible.';

  @override
  String get tajMahalPullQuote2Author => 'Écrivain Martiniquais';

  @override
  String get tajMahalCallout1 =>
      'L\'église des Anses d\'Arlet se distingue par son architecture néo-classique, un mélange harmonieux de styles religieux et caraïbes.';

  @override
  String get tajMahalCallout2 =>
      'Il a fallu les efforts de charpentiers, sculpteurs, artisans locaux et maçons pour façonner cette église emblématique.';

  @override
  String get tajMahalVideoCaption =>
      '« L\'église des Anses d\'Arlet - Un joyau architectural de Martinique | Office du Tourisme de Martinique. » Youtube, téléchargé par Office du Tourisme de Martinique.';

  @override
  String get tajMahalMapCaption =>
      'Carte montrant l\'emplacement de l\'église des Anses d\'Arlet dans le sud de la Martinique.';

  @override
  String get tajMahalHistoryInfo1 =>
      'L\'église des Anses d\'Arlet est une église paroissiale catholique construite au bord de la baie des Anses d\'Arlet dans la commune du Robert, en Martinique. Elle a été édifiée en 1824 par les habitants de la région pour honorer saint Pierre, le patron des pêcheurs, et servir de lieu de culte aux habitants de cette baie tranquille ; elle abrite également un cimetière maritime et quelques statues religieuses datant du XIXe siècle.';

  @override
  String get tajMahalHistoryInfo2 =>
      'L\'église est le point central d\'un complexe religieux comprenant une chapelle, un presbytère (placés symétriquement de chaque côté de l\'église), et un cimetière, entouré d\'un jardin tropical délimité sur deux côtés par des murs en pierre.';

  @override
  String get tajMahalConstructionInfo1 =>
      'L\'église a été construite en utilisant des matériaux locaux de Martinique et des îles voisines. On croit que plusieurs dizaines de charpentiers et artisans locaux ont participé à sa construction.\nLe calcaire volcanique a été extrait localement, le bois de goyavier et de latanier provenait de la forêt de la montagne Pelée, les tôles ondulées venaient de France. Les cloches ont été forgées en métal local et décorées de motifs caraïbes, tandis que les vitraux colorés provenaient d\'atelier de la Martinique. Au total, une dizaine de matériaux locaux ont été assemblés dans l\'église.';

  @override
  String get tajMahalConstructionInfo2 =>
      'Une zone d\'environ un demi-acre a été nivelée à flanc de colline à 30 mètres au-dessus de la plage. Les fondations reposent sur des blocs de corail et de pierre volcanique.\nLa structure et la toiture ont pris environ 3 ans à terminer. Les parties intérieures décorées ont pris 2 ans supplémentaires.';

  @override
  String get tajMahalLocationInfo1 =>
      'L\'église la plus photographiée de Martinique, elle est située au bord de la baie des Anses d\'Arlet, surplombant les eaux turquoise de l\'Atlantique, face à la pointe du Bout de la Jalousie.';

  @override
  String get tajMahalLocationInfo2 =>
      'L\'église est construite sur un terrain en pente dominant la baie des Anses d\'Arlet. Des habitants du village ont cédé des terrains pour permettre la construction.';

  @override
  String get tajMahal1631ce =>
      'Première chapelle érigée par les colons pour les pêcheurs du lieu.';

  @override
  String get tajMahal1647ce =>
      'Construction d\'une chapelle plus grande pour répondre à la demande croissante des fidèles.';

  @override
  String get tajMahal1658ce =>
      'Planification d\'un nouvel édifice plus vaste pour accueillir la population grandissante du village.';

  @override
  String get tajMahal1901ce =>
      'Un curé passionné de conservation entreprit une restauration majeure du bâtiment après plus de 75 ans d\'existence.';

  @override
  String get tajMahal1984ce =>
      'Pour protéger l\'église des intempéries et de l\'érosion côtière, des travaux de consolidation furent entrepris.';

  @override
  String get tajMahal1998ce =>
      'Programme de rénovation et de documentation mis en œuvre pour préserver les éléments historiques.';

  @override
  String get tajMahalCollectible1Title => 'Vieille cloche en bronze';

  @override
  String get tajMahalCollectible1Icon => 'bijou';

  @override
  String get tajMahalCollectible2Title => 'Vue de l\'église des Anses d\'Arlet';

  @override
  String get tajMahalCollectible2Icon => 'image';

  @override
  String get tajMahalCollectible3Title => 'Statue religieuse en bois';

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
