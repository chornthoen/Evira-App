import 'package:my_app/common/image_string.dart';

class MostPopularModel {
  final String imgPath;
  final String name;
  final String rang;
  final String sold;
  final String price;

  MostPopularModel({
    required this.imgPath,
    required this.name,
    required this.rang,
    required this.sold,
    required this.price,
  });
}

List<MostPopularModel> mostModel = [
  MostPopularModel(
    imgPath: tBagLeatherImg,
    name: 'Snake Leather Bag',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$445.00',
  ),
  MostPopularModel(
    imgPath: tShoesLeatherImg,
    name: 'Suga Leather Shoes',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$455.00',
  ),
  MostPopularModel(
    imgPath: tCasualSuitLeatherImg,
    name: 'Leather Casual Suit',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$545.00',
  ),
  MostPopularModel(
    imgPath: tBlackBagLeatherImg,
    name: 'Black Leather Bag',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$345.00',
  ),
  MostPopularModel(
    imgPath: tMicrophoneImg,
    name: 'Airtight Microphone',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$665.00',
  ),
  MostPopularModel(
    imgPath: tBlackNikeShoesImg,
    name: 'Black Nike Shoes',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$745.00',
  ),
];
