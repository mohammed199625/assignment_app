import 'package:assignment_app/models/ads_model.dart';
import 'package:assignment_app/view/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CarsGridView extends StatelessWidget {
  const CarsGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: adsModel.length,
        itemBuilder: (BuildContext context, int index) {
          AdsModel ads = adsModel[index];
          return GestureDetector(
            onTap: () {
              Get.to(() => DetailsScreen(image: ads.image,));
            },
            child: GridViewItem(
              text: ads.mark,
              photo: ads.image,
            ),
          );
        },
      ),
    );
  }
}

class GridViewItem extends StatelessWidget {
  const GridViewItem({required this.text, required this.photo});

  final String text;
  final String photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
      margin: EdgeInsets.all(5),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            child: Image.asset(
              photo,
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              color: Colors.white60,
              height: 20,
              width: MediaQuery.of(context).size.width,
              child: Text(text,style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          Positioned(
            top: 150,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ItemDetails(
                    iconImage: 'assets/Icons/Home - ad1.svg',
                    dText: 'السعر',
                    dContent: '17,200'),
                ItemDetails(
                    iconImage: 'assets/Icons/Home - Ad2.svg',
                    dText: 'سنة',
                    dContent: '2019'),
                ItemDetails(
                    iconImage: 'assets/Icons/Home - Ad3.svg',
                    dText: 'كم',
                    dContent: '7000'),
                ItemDetails(
                    iconImage: 'assets/Icons/Home - Ad4.svg',
                    dText: 'مكفولة',
                    dContent: '2023'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails(
      {required this.iconImage, required this.dText, required this.dContent});

  final String iconImage;
  final String dText;
  final String dContent;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 50,
        width: 45,
        decoration: BoxDecoration(
          color: Colors.white60,
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
