import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/special_model.dart';
import '../model/weekends_deals_model.dart';


class ItemWeekendDeal extends StatefulWidget {
  const ItemWeekendDeal({
    Key? key,
  }) : super(key: key);

  @override
  State<ItemWeekendDeal> createState() => _ItemWeekendDealState();
}

class _ItemWeekendDealState extends State<ItemWeekendDeal> {
  int _currentPage = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xffE7E7E7),
            borderRadius: BorderRadius.circular(32),
          ),
          child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  _currentPage = index;

                });
              },
              itemCount: weekendDealModel.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffE7E7E7),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 12, top: 20, bottom: 20),
                        child: SizedBox(
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                weekendDealModel[index].percentage,
                                style: GoogleFonts.urbanist(
                                  textStyle: Theme.of(context).textTheme.subtitle1,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                weekendDealModel[index].title,
                                style: GoogleFonts.urbanist(
                                  textStyle: Theme.of(context).textTheme.subtitle1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                weekendDealModel[index].subtitle,
                                style: GoogleFonts.urbanist(
                                  textStyle: Theme.of(context).textTheme.subtitle1,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Image(
                          image: AssetImage(weekendDealModel[index].image),
                          width: 140,
                        ),
                      ),

                    ],
                  ),
                );
              }),
        ),
        Positioned(
          bottom: 5,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < weekendDealModel.length; i++)
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  height: 5,
                  width: _currentPage == i ? 20 : 5,
                  decoration: BoxDecoration(
                    color: _currentPage == i
                        ? Theme.of(context).primaryColor
                        : Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
            ],
          ),
        ),
      ],
    );

  }
}
