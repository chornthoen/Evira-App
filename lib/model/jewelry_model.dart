

import 'package:my_app/common/image_string.dart';

class JewelryModel {
  final String imgPath;
  final String name;
  final String rang;
  final String sold;
  final String price;

  JewelryModel({
    required this.imgPath,
    required this.name,
    required this.rang,
    required this.sold,
    required this.price,
  });
}

List<JewelryModel> jewelryModel = [
  JewelryModel(
    imgPath: tRedRingsImg,
    name: 'Red Ruby Rings',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$320.00',
  ),
  JewelryModel(
    imgPath: tBlueRingsImg,
    name: 'Viya Blue Diamond',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$455.00',
  ),
  JewelryModel(
    imgPath: tHujiaRingsImg,
    name: 'Hujia Silver Rings',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$545.00',
  ),
  JewelryModel(
    imgPath: tRainaRingsImg,
    name: 'Riana Silver Ring',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$345.00',
  ),
  JewelryModel(
    imgPath: tOrangeRingsImg,
    name: 'Riana Silver Ringr',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$665.00',
  ),
  JewelryModel(
    imgPath: tGoldRingsImg,
    name: 'Riana Silver Ring',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$745.00',
  ),
  JewelryModel(
    imgPath: tRedRingsImg,
    name: 'Red Ruby Rings',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$320.00',
  ),
  JewelryModel(
    imgPath: tBlueRingsImg,
    name: 'Viya Blue Diamond',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$455.00',
  ),
];
