import 'package:wonders/logic/data/wonder_type.dart';
import 'package:wonders/models/merchant.dart';
import 'package:wonders/assets.dart';

class MerchantsData {
  static final Map<WonderType, List<Merchant>> _merchantsByWonder = {
    WonderType.chichenItza: [
      Merchant(
        id: 'merchant-1-1',
        name: 'Souvenirs de Chichen Itza',
        category: 'Souvenirs',
        imageUrl: WonderType.chichenItza.photo2,
        description: 'Artisanat et souvenirs mayas authentiques.',
        wonderType: WonderType.chichenItza,
        website: 'https://example.com',
      ),
      Merchant(
        id: 'merchant-1-2',
        name: 'Tacos du Yucatan',
        category: 'Restauration',
        imageUrl: WonderType.chichenItza.photo3,
        description: 'Les meilleurs tacos de la péninsule du Yucatan.',
        wonderType: WonderType.chichenItza,
      ),
    ],
    WonderType.colosseum: [
      Merchant(
        id: 'merchant-2-1',
        name: 'Équipement de Gladiateur',
        category: 'Souvenirs',
        imageUrl: WonderType.colosseum.photo1,
        description: 'Devenez un gladiateur avec nos répliques d\'armures et d\'armes.',
        wonderType: WonderType.colosseum,
        website: 'https://example.com',
      ),
    ],
    WonderType.greatWall: [
      Merchant(
        id: 'merchant-3-1',
        name: 'Randonnées sur la Grande Muraille',
        category: 'Agence de Voyage',
        imageUrl: WonderType.greatWall.photo1,
        description: 'Randonnées guidées sur la Grande Muraille de Chine.',
        wonderType: WonderType.greatWall,
        website: 'https://example.com',
      ),
      Merchant(
        id: 'merchant-3-2',
        name: 'Maison de Thé Chinoise',
        category: 'Restauration',
        imageUrl: WonderType.greatWall.photo2,
        description: 'Profitez d\'une cérémonie de thé chinoise traditionnelle.',
        wonderType: WonderType.greatWall,
      ),
    ],
    WonderType.machuPicchu: [
      Merchant(
        id: 'merchant-4-1',
        name: 'Textiles Incas',
        category: 'Art & Culture',
        imageUrl: WonderType.machuPicchu.photo1,
        description: 'Textiles faits à la main des Andes.',
        wonderType: WonderType.machuPicchu,
      ),
    ],
    WonderType.petra: [
      Merchant(
        id: 'merchant-5-1',
        name: 'Balades à dos de chameau à Petra',
        category: 'Agence de Voyage',
        imageUrl: WonderType.petra.photo2,
        description: 'Explorez Petra à dos de chameau.',
        wonderType: WonderType.petra,
      ),
    ],
    WonderType.pyramidsGiza: [
      Merchant(
        id: 'merchant-6-1',
        name: 'Papyrus des Pyramides',
        category: 'Souvenirs',
        imageUrl: WonderType.pyramidsGiza.photo1,
        description: 'Papyrus authentiques avec de l\'art égyptien ancien.',
        wonderType: WonderType.pyramidsGiza,
      ),
    ],
    WonderType.tajMahal: [
      Merchant(
        id: 'merchant-7-1',
        name: 'Marbre du Taj Mahal',
        category: 'Souvenirs',
        imageUrl: WonderType.tajMahal.photo1,
        description: 'Répliques en marbre du Taj Mahal.',
        wonderType: WonderType.tajMahal,
      ),
    ],
    WonderType.christRedeemer: [
      Merchant(
        id: 'merchant-8-1',
        name: 'Miniatures du Christ Rédempteur',
        category: 'Souvenirs',
        imageUrl: WonderType.christRedeemer.photo1,
        description: 'Statues miniatures du Christ Rédempteur.',
        wonderType: WonderType.christRedeemer,
      ),
    ],
  };

  static List<Merchant> getMerchantsForWonder(WonderType type) {
    return _merchantsByWonder[type] ?? [];
  }

  static List<Merchant> getAllMerchants() {
    return _merchantsByWonder.values.expand((element) => element).toList();
  }

  static Merchant? getMerchantById(String id) {
    for (var merchants in _merchantsByWonder.values) {
      for (var merchant in merchants) {
        if (merchant.id == id) {
          return merchant;
        }
      }
    }
    return null;
  }
}

