

import 'package:my_app/common/image_string.dart';

class ClothesModel {
  final String imgPath;
  final String name;
  final String rang;
  final String sold;
  final String price;

  ClothesModel({
    required this.imgPath,
    required this.name,
    required this.rang,
    required this.sold,
    required this.price,
  });
}

List<ClothesModel> clothesModel = [
  ClothesModel(
    imgPath: tTodayImg,
    name: 'Venesa Long Shirt',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$320.00',
  ),
  ClothesModel(
    imgPath: tWerollaImg,
    name: 'Werolla Cardigans',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$455.00',
  ),
  ClothesModel(
    imgPath: tViyaraImg,
    name: 'Viyara Ma Blazer',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$545.00',
  ),
  ClothesModel(
    imgPath: tMocoImg,
    name: 'Moco Blue Suit',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$345.00',
  ),
  ClothesModel(
    imgPath: tViyaraImg,
    name: 'Viyara Ma Blazer',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$665.00',
  ),
  ClothesModel(
    imgPath: tBlackGirlImg,
    name: 'Black Shoes',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$745.00',
  ),
  ClothesModel(
    imgPath: tViyaraImg,
    name: 'Viyara Ma Blazer',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$545.00',
  ),
  ClothesModel(
    imgPath: tMocoImg,
    name: 'Moco Blue Suit',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$345.00',
  ),
];
