import 'package:flutter/material.dart';
import 'model/category.dart';

List<Category> categoriesList = [
  Category(
      name: 'Blood',
      image:
          'https://media.wired.com/photos/5bd262d4b1e96429a704ba17/master/w_2560%2Cc_limit/bloodyhand_top-1036615756.jpg'),
  Category(
      name: 'Plasma',
      image:
          'https://media.wired.com/photos/5bd262d4b1e96429a704ba17/master/w_2560%2Cc_limit/bloodyhand_top-1036615756.jpg')
];

class Categories extends StatelessWidget {
  //const Categories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (_, index) {
            return Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red.shade50,
                          offset: Offset(4, 6),
                          blurRadius: 20)
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.network(
                      '${categoriesList[index].image}',
                      width: 100,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  categoriesList[index].name,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
