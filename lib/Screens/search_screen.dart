import 'package:flutter/material.dart';
import 'package:som_reak/services/app-theme.dart';
import '../services/app-theme.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        AppTheme.theAppBar(context, Icon(Icons.arrow_downward)),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
                icon: Icon(Icons.search),
                border: InputBorder.none,
                hintText: 'ស្វែងរក..',
                hintStyle: AppTheme.body()),
          ),
        ),
        Wrap(
          children: <Widget>[
            wrapItem("https://5.imimg.com/data5/IV/WR/MY-4206787/mango-pickle-500x500.jpg"),
            wrapItem("https://s3-ap-southeast-1.amazonaws.com/khaskhabar/khaskhabarimages/enimg500/1554359183-kk-en.jpg"),
            wrapItem("https://4.imimg.com/data4/NK/PH/MY-29463680/green-mango-pickle-500x500.jpg"),
            wrapItem("https://www.bigbasket.com/media/uploads/recipe/w-l/1037_1.jpg"),
          ],
        )
      ],
    ));
  }

  Widget wrapItem(String img) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child:  Image.network(
            img,
            fit: BoxFit.cover,
            width: 100,
            height: 100,
          ),
          ),
    );
  }
}
