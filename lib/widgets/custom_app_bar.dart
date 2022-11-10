import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return               Container(
      decoration: BoxDecoration(color: Colors.grey),
      height: 30,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset('assets/Icons/Home - Notification .svg'),
            SvgPicture.asset('assets/Icons/Home - menu.svg')
          ],
        ),
      ),
    );
  }
}
