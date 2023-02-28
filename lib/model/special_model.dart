import '../common/image_string.dart';
import '../component/class_parent.dart';

class SpecialModel extends ParentModel {
  SpecialModel(
      {required super.image,
      required super.title,
      required super.subtitle,
      required super.percentage});
}

List<SpecialModel> specialModel = [
  SpecialModel(
    image: tTodayImg,
    title: 'Today’s Special!',
    subtitle: 'Get discount for every order, only valid for today',
    percentage: '30%',
  ),
  SpecialModel(
    image: tWerollaImg,
    title: 'Today’s Special!',
    subtitle: 'Get discount for every order, only valid for today',
    percentage: '30%',
  ),
  SpecialModel(
    image: tViyaraImg,
    title: 'Today’s Special!',
    subtitle: 'Get discount for every order, only valid for today',
    percentage: '30%',
  ),
  SpecialModel(
    image: tMocoImg,
    title: 'Today’s Special!',
    subtitle: 'Get discount for every order, only valid for today',
    percentage: '30%',
  ),
  SpecialModel(
    image: tBlackGirlImg,
    title: 'Today’s Special!',
    subtitle: 'Get discount for every order, only valid for today',
    percentage: '30%',
  ),
];
