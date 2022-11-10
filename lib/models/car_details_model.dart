import 'package:flutter/material.dart';

class CarDetailsModel {
   String outSideColor;
   String inSideColor;
   String chair;
   String roof;
   String backCam;
   String sensor;
   String cylinder;
   String motionVector;
  CarDetailsModel({
    required this.outSideColor,
    required this.inSideColor,
    required this.chair,
    required this.roof,
    required this.backCam,
    required this.sensor,
    required this.cylinder,
    required this.motionVector,
  });
}

List<CarDetailsModel>carDetailsModel=[

  CarDetailsModel(outSideColor: 'ابيض', inSideColor: 'بيج', chair: 'مخمل', roof: 'نعم', backCam: 'نعم', sensor: 'امامي-خلفي', cylinder: '6', motionVector: 'اوتوماتيك')
];