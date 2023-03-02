import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/common/color_string.dart';
import 'package:my_app/common/image_string.dart';
import 'package:my_app/model/jewelry_model.dart';

class ItemJewelry extends StatefulWidget {
  const ItemJewelry({Key? key}) : super(key: key);

  @override
  State<ItemJewelry> createState() => _ItemJewelryState();
}

class _ItemJewelryState extends State<ItemJewelry> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 8,
        mainAxisExtent: 250,
      ),
      itemCount: jewelryModel.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffE7E7E7),
                    ),
                    child:  Image(
                      image: AssetImage(jewelryModel[index].imgPath),
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          _value = !_value;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: primaryColor,
                        ),
                        child:  Icon(_value ? IconlyBold.heart : IconlyLight.heart,
                          color:Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                jewelryModel[index].name,
                style: GoogleFonts.urbanist(
                  textStyle: Theme.of(context).textTheme.subtitle1,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  SvgPicture.asset(tStarImg),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    jewelryModel[index].rang,
                    style: GoogleFonts.urbanist(
                      textStyle: Theme.of(context).textTheme.subtitle1,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 8, right: 10),
                      height: 16,
                      width: 1,
                      color: primaryColor),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xffE7E7E7),
                    ),
                    child: Text(
                      jewelryModel[index].sold,
                      style: GoogleFonts.urbanist(
                        textStyle: Theme.of(context).textTheme.subtitle1,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                jewelryModel[index].price,
                style: GoogleFonts.urbanist(
                  textStyle: Theme.of(context).textTheme.subtitle1,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
