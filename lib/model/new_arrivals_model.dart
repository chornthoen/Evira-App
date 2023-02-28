import '../common/image_string.dart';
import '../component/class_parent.dart';

class NewArrivalsModel extends ParentModel {
  NewArrivalsModel(
      {required super.image,
        required super.title,
        required super.subtitle,
        required super.percentage});
}

List<NewArrivalsModel> newArrivalModel = [
  NewArrivalsModel(
    image: tShoesLeatherImg,
    title: 'New Arrivals',
    subtitle: 'Get discount for every order, only valid for today',
    percentage: '40%',
  ),
  NewArrivalsModel(
    image: tShoesWhiteImg,
    title: 'New Arrivals',
    subtitle: 'Get discount for every order, only valid for today',
    percentage: '40%',
  ),
  NewArrivalsModel(
    image: tShoesBlackWhiteImg,
    title: 'New Arrivals',
    subtitle: 'Get discount for every order, only valid for today',
    percentage: '40%',
  ),
  NewArrivalsModel(
    image: tShoesRedImg,
    title: 'New Arrivals',
    subtitle: 'Get discount for every order, only valid for today',
    percentage: '40%',
  ),
  NewArrivalsModel(
    image: tShoesWhitLVImg,
    title: 'New Arrivals',
    subtitle: 'Get discount for every order, only valid for today',
    percentage: '40%',
  ),
];
