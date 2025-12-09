import 'package:flutter/material.dart';

enum TimelineCategory {
  geology,
  history,
  politics,
  disaster,
}

class TimelineEvent {
  const TimelineEvent({
    required this.date,
    required this.category,
    required this.event,
    required this.impact,
    required this.icon,
  });

  final String date;
  final TimelineCategory category;
  final String event;
  final String impact;
  final IconData icon;
}

const martiniqueTimeline = [
  TimelineEvent(
    date: '-25 à -1 million d\'années',
    category: TimelineCategory.geology,
    event: 'Formation de l\'Île (Sud et Centre)',
    impact: 'Les roches les plus anciennes de la Martinique se forment. L\'archipel des Antilles est d\'origine volcanique, ce qui explique la richesse des sols et les paysages montagneux.',
    icon: Icons.volcano,
  ),
  TimelineEvent(
    date: '-500 000 ans',
    category: TimelineCategory.geology,
    event: 'Émergence de la Montagne Pelée',
    impact: 'La dernière phase de volcanisme commence dans le Nord. La Montagne Pelée domine aujourd\'hui le nord de l\'île, offrant des randonnées spectaculaires.',
    icon: Icons.volcano,
  ),
  TimelineEvent(
    date: '~10 000 ans avant J.-C.',
    category: TimelineCategory.history,
    event: 'Premières traces d\'occupation',
    impact: 'L\'arrivée des premiers Amérindiens (probablement des Ciboneys), suivis plus tard par les Arawaks et enfin les Kalinagos (ou Caraïbes). Ces peuples ont laissé des traces archéologiques, notamment des poteries et des pétroglyphes que l\'on peut voir au Musée d\'Archéologie.',
    icon: Icons.person,
  ),
  TimelineEvent(
    date: '1502',
    category: TimelineCategory.history,
    event: 'Arrivée de Christophe Colomb',
    impact: 'Lors de son 4e voyage, il passe par l\'île qu\'il nomme Jouanacaëra ou Mantinia (qui deviendra Martinique). Bien que courte, cette escale marque le début des relations avec l\'Europe.',
    icon: Icons.history,
  ),
  TimelineEvent(
    date: '1635',
    category: TimelineCategory.politics,
    event: 'Colonisation française par Pierre Belain d\'Esnambuc',
    impact: 'Début de l\'établissement permanent et de l\'introduction de la canne à sucre. C\'est le point de départ de la culture créole unique de l\'île et de son patrimoine architectural (habitations).',
    icon: Icons.history_edu,
  ),
  TimelineEvent(
    date: 'XVIIe - XVIIIe siècles',
    category: TimelineCategory.politics,
    event: 'Lutte franco-anglaise et économie de la canne à sucre',
    impact: 'L\'île est un enjeu majeur des puissances coloniales et l\'esclavage se développe. De nombreux forts et musées (comme la Savane des Esclaves) témoignent de cette période de conflits et de l\'histoire douloureuse mais fondatrice de l\'identité martiniquaise.',
    icon: Icons.history_edu,
  ),
  TimelineEvent(
    date: '1763',
    category: TimelineCategory.politics,
    event: 'Traité de Paris',
    impact: 'La Martinique est officiellement rétrocédée à la France par les Anglais.',
    icon: Icons.history_edu,
  ),
  TimelineEvent(
    date: '1788 - 1848',
    category: TimelineCategory.politics,
    event: 'Naissance et Abolition de l\'esclavage',
    impact: 'L\'esclavage est aboli une première fois en 1794 (non appliquée en Martinique), puis définitivement le 22 mai 1848 (suite à l\'insurrection). Le 22 mai est aujourd\'hui un jour férié et un moment clé de commémoration de la liberté.',
    icon: Icons.history_edu,
  ),
  TimelineEvent(
    date: '18 août 1891',
    category: TimelineCategory.disaster,
    event: 'Ouragan de 1891',
    impact: 'Un cyclone majeur dévaste l\'île, soulignant sa vulnérabilité aux intempéries. Les systèmes de vigilance modernes permettent de mieux se préparer, mais le risque cyclonique fait partie de la vie aux Antilles.',
    icon: Icons.cyclone,
  ),
  TimelineEvent(
    date: '8 mai 1902',
    category: TimelineCategory.disaster,
    event: 'Éruption de la Montagne Pelée et destruction de Saint-Pierre',
    impact: 'La ville de Saint-Pierre, alors considérée comme le "Petit Paris des Antilles", est entièrement détruite, causant la mort de près de 30 000 personnes. Le site est aujourd\'hui une ville d\'art et d\'histoire, avec un musée qui témoigne de cette tragédie. Un lieu incontournable.',
    icon: Icons.volcano,
  ),
  TimelineEvent(
    date: '1940 - 1943',
    category: TimelineCategory.politics,
    event: 'Période de l\'Amiral Robert',
    impact: 'Pendant la Seconde Guerre mondiale, la Martinique est sous l\'autorité du régime de Vichy, ce qui crée des tensions et des départs vers les forces de la France libre ("dissidence"). Cette période a forgé un esprit de résistance et d\'autonomie.',
    icon: Icons.history_edu,
  ),
  TimelineEvent(
    date: '1946',
    category: TimelineCategory.politics,
    event: 'Loi de Départementalisation',
    impact: 'La Martinique devient un Département d\'Outre-Mer (DOM) français. C\'est le statut actuel qui garantit les lois et services de la République française, tout en conservant une forte identité locale.',
    icon: Icons.history_edu,
  ),
  TimelineEvent(
    date: '1960 - Aujourd\'hui',
    category: TimelineCategory.politics,
    event: 'Mouvements culturels et politiques',
    impact: 'Période d\'affirmation culturelle avec l\'émergence de figures littéraires majeures (Aimé Césaire, Édouard Glissant) et de débats sur l\'évolution institutionnelle. La littérature et la culture créoles sont à l\'honneur (Musée Aimé Césaire, la "Créolité").',
    icon: Icons.history_edu,
  ),
  TimelineEvent(
    date: '2010',
    category: TimelineCategory.politics,
    event: 'Référendum',
    impact: 'Les Martiniquais votent pour l\'évolution de l\'île vers le statut de Collectivité Territoriale Unique (CTU). Ceci a simplifié l\'administration locale, tout en renforçant les pouvoirs locaux.',
    icon: Icons.history_edu,
  ),
];
