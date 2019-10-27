import 'package:flutter/material.dart';
import 'package:som_reak/model/svay-model.dart';

class SlideDetailWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _SlideDetailState();
  }
}

class _SlideDetailState extends State<SlideDetailWidget>{

    List<SvayModel> theList = [
    new SvayModel(id : 1, name: 'ស្វាយត្រាំ', price: 1000, image:"https://5.imimg.com/data5/QK/CL/MY-17804410/mango-pickle-500x500.jpg"),
     new SvayModel(id : 1, name: 'ស្វាយខ្ចី', price: 1000, image:"https://s3-ap-southeast-1.amazonaws.com/khaskhabar/khaskhabarimages/enimg500/1554359183-kk-en.jpg"),
      new SvayModel(id : 1, name: 'ស្វាយទំ', price: 1000, image:"https://4.imimg.com/data4/NK/PH/MY-29463680/green-mango-pickle-500x500.jpg"),
      new SvayModel(id : 1, name: 'ស្វាយ', price: 1000, image:"https://i.ytimg.com/vi/AFk2ul66QTE/maxresdefault.jpg"),
      new SvayModel(id : 1, name: 'ស្វាយតូច', price: 1000, image:"https://www.bigbasket.com/media/uploads/recipe/w-l/1037_1.jpg"),
      new SvayModel(id : 1, name: 'ស្វាយកូន', price: 1000, image:"https://www.namscorner.com/wp-content/uploads/2019/06/instant_mango_pickle/61835166_846520689054065_3234432694003695616_n-1.png"),
      new SvayModel(id : 1, name: 'ស្វាយទេ', price: 1000, image:"https://5.imimg.com/data5/IV/WR/MY-4206787/mango-pickle-500x500.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 130,
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
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(category.image),
                                )),
                          ],
                        )),
                  );
                }),
          );
  }
}

