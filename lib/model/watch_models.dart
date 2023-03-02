

import 'package:my_app/common/image_string.dart';

class WatchModel {
  final String imgPath;
  final String name;
  final String rang;
  final String sold;
  final String price;

  WatchModel({
    required this.imgPath,
    required this.name,
    required this.rang,
    required this.sold,
    required this.price,
  });
}

List<WatchModel> watchModel = [
  WatchModel(
    imgPath: tZonWatchImg,
    name: 'Zonio Super Watch',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$320.00',
  ),
  WatchModel(
    imgPath: tGoldenWatchImg,
    name: 'Glassia Watch',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$455.00',
  ),
  WatchModel(
    imgPath: tBlackFireWatchImg,
    name: 'Black Fire Watch',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$545.00',
  ),
  WatchModel(
    imgPath: tGlassiaWatchImg,
    name: 'Zonio Super Watch',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$345.00',
  ),
  WatchModel(
    imgPath: tGlassiaWhiteWatchImg,
    name: 'Golden Ring Watch',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$665.00',
  ),
  WatchModel(
    imgPath: tBlackFireWatchImg,
    name: 'Black Fire Watch',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$745.00',
  ),
  WatchModel(
    imgPath: tGlassiaWatchImg,
    name: 'Glassia Watch',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$545.00',
  ),
  WatchModel(
    imgPath: tZonWatchImg,
    name: 'Zonio Super Watch',
    rang: '4.5',
    sold: '8,374 sold',
    price: '\$345.00',
  ),
];
