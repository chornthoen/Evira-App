
import '../common/image_string.dart';

class OnBoardingModel {
  final String image;
  final String title;

  OnBoardingModel({required this.image, required this.title,});
}

List<OnBoardingModel> onBoardingModel = [
  OnBoardingModel(
    image: tOnBoardingImg1,
    title: 'We provide high quality products just for you',
  ),
  OnBoardingModel(
    image: tOnBoardingImg2,
    title: 'Your satisfaction is our number one priority',
  ),
  OnBoardingModel(
    image: tOnBoardingImg3,
    title: "Let's fulfill your daily needs with Evira right now!",
  ),
];