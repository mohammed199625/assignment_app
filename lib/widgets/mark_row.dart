import 'package:flutter/material.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CategoryItem('اسيوي'),
            CategoryItem('اوروبي'),
            CategoryItem('امريكي'),
          ],
        ),
      ),
    );
  }
}


class CategoryItem extends StatelessWidget {

 final String text;
 CategoryItem( this.text) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 40,
      width: 100,
      child: Center(child: Text(text,style: TextStyle(fontWeight: FontWeight.bold),)),
    );
  }
}
