import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/car_details_listview.dart';
import '../../widgets/contact_button.dart';
import '../../widgets/related_ads_gridview.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({required this.image, Key? key}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.white54,
                      child: SvgPicture.asset(
                        'assets/Icons/Back.svg',
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.white54,
                      child: SvgPicture.asset(
                        'assets/Icons/Car Page - Fav.svg',
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 70,
                    child: CircleAvatar(
                      backgroundColor: Colors.white54,
                      child: SvgPicture.asset(
                        'assets/Icons/Car Page - Share.svg',
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    left: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CarDetails(
                            iconImage: 'assets/Icons/Car Page - Slindr.svg',
                            dText: '????????????',
                            dContent: '17,200'),
                        CarDetails(
                            iconImage: 'assets/Icons/Home - Ad2.svg',
                            dText: '??????',
                            dContent: '2019'),
                        CarDetails(
                            iconImage: 'assets/Icons/Home - Ad3.svg',
                            dText: '????',
                            dContent: '7000'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '8,700 ?? ??',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '???????? ?????????? ????????',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent),
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '???????????? ?????? 70000 ????',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    // Spacer(),
                    SvgPicture.asset(
                      'assets/Icons/Car Page - Makfula.svg',
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CarDetailsListView(),
            SizedBox(height: 10,),
            Text(
                '???????? 1600 ???? ???? ?????????? ?????? 156 ???????????? ?????????? ?????????? 250 ??????????/ ???????? ?????????????? ???????? 200 ???? ???? ?????????? ?????? 184 ???????????? ?????????? ?????????? 300 ??????????/ ???????? ???????? ?????? ???????????? ???????????? ????6 ???????????????? ???????? 200 ???? ???? ?????????? ???????????? ?????????? ?????? 211 ???????????? ?????????? ?????????? 350 ??????????/ ??????.'),
            SizedBox(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black12),
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '???????? ???????????????? ????????????????     ???? ????????????????',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    // Spacer(),
                    Icon(Icons.person,color: Colors.black,)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RelatedAdsGridView(),
            SizedBox(
              height: 10,
            ),

            Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              ContactButton(buttonText: ' ???????? ??????????????', buttonImage: 'assets/Icons/Car Page - Book.svg', buttonColor: Colors.white60,),
              ContactButton(buttonText: ' ???????? ??????????????', buttonImage: 'assets/Icons/Partner - Upload.svg', buttonColor: Colors.white54,),
              ContactButton(buttonText: ' ', buttonImage: 'assets/Icons/Car Page - Chat by WHatsapp.svg', buttonColor: Colors.white60,),
              ContactButton(buttonText: ' ', buttonImage: 'assets/Icons/Car Page - Call.svg', buttonColor: Colors.white60,),
            ],),
          ],
        ),
      ),
    );
  }
}























class CarDetails extends StatelessWidget {
  const CarDetails(
      {required this.iconImage, required this.dText, required this.dContent});

  final String iconImage;
  final String dText;
  final String dContent;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(5), topLeft: Radius.circular(5)),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: SvgPicture.asset(
              iconImage,
            )),
            Expanded(child: Text(dText)),
            Expanded(child: Text(dContent)),
          ],
        ),
      ),
    );
  }
}
