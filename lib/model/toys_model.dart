

import 'package:my_app/common/image_string.dart';

class ToysModel {
  final String imgPath;
  final String name;
  final String rang;
  final String sold;
  final String price;

  ToysModel({
    required this.imgPath,
    required this.name,
    required this.rang,
    required this.sold,
    required this.price,
  });
}

List<ToysModel> toysModel = [
  ToysModel(
    imgPath: tBatMobileImg,
    name: 'Batmobile Batman',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$320.00',
  ),
  ToysModel(
    imgPath: tMiniImg,
    name: 'Mini Cutie Groot',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$455.00',
  ),
  ToysModel(
    imgPath: tCutieImg,
    name: 'Cutie Rabbit',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$545.00',
  ),
  ToysModel(
    imgPath: tMasyaImg,
    name: 'Masya Teddy Bear',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$345.00',
  ),
  ToysModel(
    imgPath: tYellowImg,
    name: 'Yellow Teddy Bear',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$665.00',
  ),
  ToysModel(
    imgPath: tGirlImg,
    name: 'Masya Teddy Bear',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$745.00',
  ),
  ToysModel(
    imgPath: tBatMobileImg,
    name: 'Batmobile Batman',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$320.00',
  ),
  ToysModel(
    imgPath: tMiniImg,
    name: 'Mini Cutie Groot',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$455.00',
  ),
];
