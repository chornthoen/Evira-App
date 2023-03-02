

import 'package:my_app/common/image_string.dart';

class ShoesModel {
  final String imgPath;
  final String name;
  final String rang;
  final String sold;
  final String price;

  ShoesModel({
    required this.imgPath,
    required this.name,
    required this.rang,
    required this.sold,
    required this.price,
  });
}

List<ShoesModel> shoesModel = [
  ShoesModel(
    imgPath: tShoesLeatherImg,
    name: 'Suga Leather Shoes',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$320.00',
  ),
  ShoesModel(
    imgPath: tShoesWhitLVImg,
    name: 'LV White Shoes',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$455.00',
  ),
  ShoesModel(
    imgPath: tShoesRedImg,
    name: 'Nike Red Shoes',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$545.00',
  ),
  ShoesModel(
    imgPath: tShoesWhiteImg,
    name: 'Puma White Shoes',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$345.00',
  ),
  ShoesModel(
    imgPath: tShoesBlackWhiteImg,
    name: 'Puma Black White',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$665.00',
  ),
  ShoesModel(
    imgPath: tShoesLeatherImg,
    name: 'Suga Leather Shoes',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$745.00',
  ),
  ShoesModel(
    imgPath: tShoesRedImg,
    name: 'Nike Red Shoes',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$545.00',
  ),
  ShoesModel(
    imgPath: tShoesWhiteImg,
    name: 'Puma White Shoes',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$345.00',
  ),
];
