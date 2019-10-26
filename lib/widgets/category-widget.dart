import 'package:flutter/material.dart';
import 'package:som_reak/model/svay-model.dart';
import 'package:som_reak/services/app-theme.dart';

class CategoryWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CategoryState();
  }
}

class _CategoryState extends State<CategoryWidget>{

  List<SvayModel> theList = [
    new SvayModel(id : 1, name: 'ស្វាយត្រាំ', price: 1000, image:"https://cdn0.iconfinder.com/data/icons/fruity-3/512/Mango-256.png"),
     new SvayModel(id : 1, name: 'ស្វាយខ្ចី', price: 1000, image:"https://cdn1.iconfinder.com/data/icons/fresh-fruit-2/128/mango-256.png"),
      new SvayModel(id : 1, name: 'ស្វាយទំ', price: 1000, image:"https://cdn0.iconfinder.com/data/icons/fruits-82/128/Fruits_-_Color-06-256.png"),
      new SvayModel(id : 1, name: 'ស្វាយ', price: 1000, image:"https://cdn3.iconfinder.com/data/icons/fruits-52/150/icon_fruit_manga-512.png"),
      new SvayModel(id : 1, name: 'ស្វាយតូច', price: 1000, image:"https://cdn0.iconfinder.com/data/icons/fruits-82/128/Fruits_-_Color-06-256.png"),
      new SvayModel(id : 1, name: 'ស្វាយកូន', price: 1000, image:"https://cdn3.iconfinder.com/data/icons/fruits-52/150/icon_fruit_manga-512.png"),
      new SvayModel(id : 1, name: 'ស្វាយទេ', price: 1000, image:"https://cdn0.iconfinder.com/data/icons/fruits-29/300/fruit_mango-512.png")
  ];

// 

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: theList.length,
                itemBuilder: (context, index) {
                  SvayModel category = theList[index];
                  return Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(category.image),
                                )),
                                SizedBox(height: 10),
                            Text(category.name, style: AppTheme.body()),
                          ],
                        )),
                  );
                }),
          );
  }
}

