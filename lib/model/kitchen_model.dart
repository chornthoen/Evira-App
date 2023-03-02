

import 'package:my_app/common/image_string.dart';

class KitchenModel {
  final String imgPath;
  final String name;
  final String rang;
  final String sold;
  final String price;

  KitchenModel({
    required this.imgPath,
    required this.name,
    required this.rang,
    required this.sold,
    required this.price,
  });
}

List<KitchenModel> kitchenModel = [
  KitchenModel(
    imgPath: tKnifeSliciaImg,
    name: 'Slicia Silver Knife',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$320.00',
  ),
  KitchenModel(
    imgPath: tSpoonBowlSetImg,
    name: 'Spoon Bowl Set',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$455.00',
  ),
  KitchenModel(
    imgPath: tKnifeDoubleImg,
    name: 'Double Butcher Knife',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$545.00',
  ),
  KitchenModel(
    imgPath: tWoodenImg,
    name: 'Wooden Bowl Set',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$345.00',
  ),
  KitchenModel(
    imgPath: tKnifeManyImg,
    name: 'Double Butcher Knife',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$665.00',
  ),
  KitchenModel(
    imgPath: tSpoonDoubleImg,
    name: 'Spoon Bowl Set',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$745.00',
  ),
  KitchenModel(
    imgPath: tKnifeSliciaImg,
    name: 'Slicia Silver Knife',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$320.00',
  ),
  KitchenModel(
    imgPath: tSpoonBowlSetImg,
    name: 'Spoon Bowl Set',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$455.00',
  ),
];
