import '../common/image_string.dart';
import '../component/class_parent.dart';

class WeekendDealsModel extends ParentModel {
  WeekendDealsModel(
      {required super.image,
      required super.title,
      required super.subtitle,
      required super.percentage});
}

List<WeekendDealsModel> weekendDealModel = [
  WeekendDealsModel(
    image: tViniaHeadImg,
    title: 'Weekends Deals',
    subtitle: 'Get discount for every order, only valid for today',
    percentage: '25%',
  ),
  WeekendDealsModel(
    image: tSilentHeadImg,
    title: 'Weekends Deals',
    subtitle: 'Get discount for every order, only valid for today',
    percentage: '25%',
  ),
  WeekendDealsModel(
    image: tSoniaHeadImg,
    title: 'Weekends Deals',
    subtitle: 'Get discount for every order, only valid for today',
    percentage: '25%',
  ),
  WeekendDealsModel(
    image: tMicrophoneImg,
    title: 'Weekends Deals',
    subtitle: 'Get discount for every order, only valid for today',
    percentage: '25%',
  ),
  WeekendDealsModel(
    image: tAMicroImg,
    title: 'Weekends Deals',
    subtitle: 'Get discount for every order, only valid for today',
    percentage: '25%',
  ),
];
