import 'package:assignment_app/widgets/grid_view_class.dart';
import 'package:flutter/material.dart';
import 'package:assignment_app/widgets/ads_stories.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/mark_row.dart';
import '../../widgets/searsh_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            CustomAppBar(),
            AdsStoris(),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/Image 6.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SearchContainer(),
            CategoryRow(),
            CarsGridView(),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/Image 5.png',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
