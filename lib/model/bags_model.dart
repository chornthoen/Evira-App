

import 'package:my_app/common/image_string.dart';

class BagsModel {
  final String imgPath;
  final String name;
  final String rang;
  final String sold;
  final String price;

  BagsModel({
    required this.imgPath,
    required this.name,
    required this.rang,
    required this.sold,
    required this.price,
  });
}

List<BagsModel> bagsModel = [
  BagsModel(
    imgPath: tBlackBagLeatherImg,
    name: 'Mini Leather Bag',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$320.00',
  ),
  BagsModel(
    imgPath: tSnakeBagImg,
    name: 'Snake Leather Bag',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$455.00',
  ),
  BagsModel(
    imgPath: tOrangeBagImg,
    name: 'Orange Leather Bag',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$545.00',
  ),
  BagsModel(
    imgPath: tRedBagImg,
    name: 'Red Leather Bag',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$345.00',
  ),
  BagsModel(
    imgPath: tBlackBagImg,
    name: 'Black Leather Bag',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$665.00',
  ),
  BagsModel(
    imgPath: tBrownBagImg,
    name: 'Brown Leather Bag',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$745.00',
  ),
  BagsModel(
    imgPath: tOrangeBagImg,
    name: 'Orange Leather Bag',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$545.00',
  ),
  BagsModel(
    imgPath: tBlackBagLeatherImg,
    name: 'Mini Leather Bag',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$345.00',
  ),
];
