import 'package:flutter/material.dart';

import '../models/car_details_model.dart';

class CarDetailsListView extends StatelessWidget {
   CarDetailsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          CarDetailsItem(detailText: 'اللون الخارحي', dataText: carDetailsModel[0].outSideColor),
          SizedBox(height: 5,),
          CarDetailsItem(detailText: 'اللون الداخلي', dataText: carDetailsModel[0].inSideColor),
          SizedBox(height: 5,),
          CarDetailsItem(detailText: 'نوع المقعد', dataText: carDetailsModel[0].chair),
          SizedBox(height: 5,),
          CarDetailsItem(detailText: 'فتحة سقف', dataText:carDetailsModel[0].roof),
          SizedBox(height: 5,),
          CarDetailsItem(detailText: 'كاميرا خلفية', dataText: carDetailsModel[0].backCam),
          SizedBox(height: 5,),
          CarDetailsItem(detailText: 'سينسر', dataText: carDetailsModel[0].sensor),
          SizedBox(height: 5,),
          CarDetailsItem(detailText: 'سلتدر', dataText: carDetailsModel[0].cylinder),
          SizedBox(height: 5,),
          CarDetailsItem(detailText: 'ناقل حركى', dataText: carDetailsModel[0].motionVector),

        ],
      ),
    );
  }
}




class CarDetailsItem extends StatelessWidget {
  const CarDetailsItem({required this.detailText ,required this.dataText,Key? key}) : super(key: key);

  final String detailText;
  final String dataText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black12
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          Text(dataText),
          Text(detailText),
        ],
      ),
    );
  }
}
