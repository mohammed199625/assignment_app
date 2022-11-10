import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({required this.buttonImage,required this.buttonText,required this.buttonColor,Key? key}) : super(key: key);

  final String buttonImage;
  final String buttonText;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(buttonText,style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(width: 10,),
            SvgPicture.asset(buttonImage,height: 20,width: 20,),
          ],
        ),
      ),
    );
  }
}
