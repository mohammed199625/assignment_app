import 'package:assignment_app/models/stories_model.dart';
import 'package:flutter/material.dart';

class AdsStoris extends StatelessWidget {
  const AdsStoris({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: storiesModel.length,
        itemBuilder: (BuildContext context, int index) {
          StoriesModel stories = storiesModel[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(stories.image),
                  radius: 40,
                ),
                Text(stories.mark),
              ],
            ),
          );
        },
      ),
    );
  }
}
