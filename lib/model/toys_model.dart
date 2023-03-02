

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
    imgPath: tTodayImg,
    name: 'Venesa Long Shirt',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$320.00',
  ),
  ToysModel(
    imgPath: tWerollaImg,
    name: 'Werolla Cardigans',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$455.00',
  ),
  ToysModel(
    imgPath: tViyaraImg,
    name: 'Viyara Ma Blazer',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$545.00',
  ),
  ToysModel(
    imgPath: tMocoImg,
    name: 'Moco Blue Suit',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$345.00',
  ),
  ToysModel(
    imgPath: tViyaraImg,
    name: 'Viyara Ma Blazer',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$665.00',
  ),
  ToysModel(
    imgPath: tBlackGirlImg,
    name: 'Black Shoes',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$745.00',
  ),
  ToysModel(
    imgPath: tViyaraImg,
    name: 'Viyara Ma Blazer',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$545.00',
  ),
  ToysModel(
    imgPath: tMocoImg,
    name: 'Moco Blue Suit',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$345.00',
  ),
];
