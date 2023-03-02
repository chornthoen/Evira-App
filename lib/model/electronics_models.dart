

import 'package:my_app/common/image_string.dart';

class ElectronicsModel {
  final String imgPath;
  final String name;
  final String rang;
  final String sold;
  final String price;

  ElectronicsModel({
    required this.imgPath,
    required this.name,
    required this.rang,
    required this.sold,
    required this.price,
  });
}

List<ElectronicsModel> electronicsModel = [
  ElectronicsModel(
    imgPath: tViniaHeadImg,
    name: 'Vinia Headphone',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$320.00',
  ),
  ElectronicsModel(
    imgPath: tCameraFujiImg,
    name: 'Fujifilm Camera',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$455.00',
  ),
  ElectronicsModel(
    imgPath: tRodeMicroImg,
    name: 'Rode Microphone',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$545.00',
  ),
  ElectronicsModel(
    imgPath: tSoniaHeadImg,
    name: 'Sonia Headphone',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$345.00',
  ),
  ElectronicsModel(
    imgPath: tCameraImg,
    name: 'Sonia Headphone',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$665.00',
  ),
  ElectronicsModel(
    imgPath: tSilentHeadImg,
    name: 'Black Shoes',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$745.00',
  ),
  ElectronicsModel(
    imgPath: tViniaHeadImg,
    name: 'Vinia Headphone',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$545.00',
  ),
  ElectronicsModel(
    imgPath: tCameraFujiImg,
    name: 'Fujifilm Camera',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$345.00',
  ),
];
