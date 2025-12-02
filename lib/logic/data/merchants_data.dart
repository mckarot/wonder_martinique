import 'package:wonders/logic/data/wonder_type.dart';
import 'package:wonders/models/merchant.dart';
import 'package:wonders/assets.dart';

class MerchantsData {
  static final Map<WonderType, List<Merchant>> _merchantsByWonder = {
    WonderType.chichenItza: [
      Merchant(
        id: 'merchant-1-1',
        name: 'Chichen Itza Souvenirs',
        category: 'Souvenirs',
        imageUrl: WonderType.chichenItza.photo2,
        description: 'Authentic Mayan crafts and souvenirs.',
        wonderType: WonderType.chichenItza,
        website: 'https://example.com',
      ),
      Merchant(
        id: 'merchant-1-2',
        name: 'Yucatan Tacos',
        category: 'Food & Restaurant',
        imageUrl: WonderType.chichenItza.photo3,
        description: 'The best tacos in the Yucatan peninsula.',
        wonderType: WonderType.chichenItza,
      ),
    ],
    WonderType.colosseum: [
      Merchant(
        id: 'merchant-2-1',
        name: 'Gladiator Gear',
        category: 'Souvenirs',
        imageUrl: WonderType.colosseum.photo1,
        description: 'Become a gladiator with our replica armor and weapons.',
        wonderType: WonderType.colosseum,
        website: 'https://example.com',
      ),
    ],
    WonderType.greatWall: [
      Merchant(
        id: 'merchant-3-1',
        name: 'Great Wall Hiking Tours',
        category: 'Travel Agency',
        imageUrl: WonderType.greatWall.photo1,
        description: 'Guided hiking tours on the Great Wall of China.',
        wonderType: WonderType.greatWall,
        website: 'https://example.com',
      ),
      Merchant(
        id: 'merchant-3-2',
        name: 'Chinese Tea House',
        category: 'Food & Restaurant',
        imageUrl: WonderType.greatWall.photo2,
        description: 'Enjoy a traditional chinese tea ceremony.',
        wonderType: WonderType.greatWall,
      ),
    ],
    WonderType.machuPicchu: [
      Merchant(
        id: 'merchant-4-1',
        name: 'Inca Textiles',
        category: 'Art & Culture',
        imageUrl: WonderType.machuPicchu.photo1,
        description: 'Handmade textiles from the Andes.',
        wonderType: WonderType.machuPicchu,
      ),
    ],
    WonderType.petra: [
      Merchant(
        id: 'merchant-5-1',
        name: 'Petra Camel Rides',
        category: 'Travel Agency',
        imageUrl: WonderType.petra.photo2,
        description: 'Explore Petra on a camel.',
        wonderType: WonderType.petra,
      ),
    ],
    WonderType.pyramidsGiza: [
      Merchant(
        id: 'merchant-6-1',
        name: 'Pyramid Papyrus',
        category: 'Souvenirs',
        imageUrl: WonderType.pyramidsGiza.photo1,
        description: 'Authentic papyrus with ancient egyptian art.',
        wonderType: WonderType.pyramidsGiza,
      ),
    ],
    WonderType.tajMahal: [
      Merchant(
        id: 'merchant-7-1',
        name: 'Taj Mahal Marble',
        category: 'Souvenirs',
        imageUrl: WonderType.tajMahal.photo1,
        description: 'Marble replicas of the Taj Mahal.',
        wonderType: WonderType.tajMahal,
      ),
    ],
    WonderType.christRedeemer: [
      Merchant(
        id: 'merchant-8-1',
        name: 'Christ the Redeemer Miniatures',
        category: 'Souvenirs',
        imageUrl: WonderType.christRedeemer.photo1,
        description: 'Miniature statues of Christ the Redeemer.',
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

