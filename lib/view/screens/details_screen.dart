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
                            dText: 'المحرك',
                            dContent: '17,200'),
                        CarDetails(
                            iconImage: 'assets/Icons/Home - Ad2.svg',
                            dText: 'سنة',
                            dContent: '2019'),
                        CarDetails(
                            iconImage: 'assets/Icons/Home - Ad3.svg',
                            dText: 'كم',
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
                  '8,700 د ك',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'يكون بحالة حيدة',
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
                      'مكفولة حتى 70000 كم',
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
                'بسعة 1600 سي سي ويولد قوة 156 حصانا، وبعزم دوران 250 نيوتن/ متر، والثاني بسعة 200 سي سي ويولد قوة 184 حصانا، وبعزم دوران 300 نيوتن/ متر، فيما جاء الخيار الثالث بـ6 أسطوانات بسعة 200 سي سي ومزود بتيربو ويولد قوة 211 حصانا، وبعزم دوران 350 نيوتن/ متر.'),
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
                      'يوكن للسيارات المعتمدة     كل السيارات',
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
              ContactButton(buttonText: ' احجز السيارة', buttonImage: 'assets/Icons/Car Page - Book.svg', buttonColor: Colors.white60,),
              ContactButton(buttonText: ' موقع السيارة', buttonImage: 'assets/Icons/Partner - Upload.svg', buttonColor: Colors.white54,),
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
