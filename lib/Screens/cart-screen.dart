import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:som_reak/services/app-theme.dart';

class SvayCartModel {
  final int id;
  final String name;
  final int price;
  final String image;
  final int qtt;

  SvayCartModel({this.id, this.name, this.price, this.image, this.qtt});
}

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        AppTheme.theAppBar(context, Icon(Icons.arrow_downward)),
        cartItem(new SvayCartModel(
            id: 1,
            name: 'ស្វាយត្រាំ',
            price: 1000,
            image:
                "https://i.pinimg.com/originals/64/d4/e4/64d4e4c56b1969189ce3b735f3f4067d.jpg",
            qtt: 1)),
        cartItem(new SvayCartModel(
            id: 2,
            name: 'កូនស្វាយត្រាំ',
            price: 2000,
            image:
                "https://i.pinimg.com/originals/64/d4/e4/64d4e4c56b1969189ce3b735f3f4067d.jpg",
            qtt: 1)),
        SizedBox(height: 50),
        submitButton()
      ],
    ));
  }

  Widget submitButton() {
    return FlatButton(
      child: Text(
        "គិតប្រាក់",
        style: AppTheme.buttonBody(),
      ),
      onPressed: () {},
    );
  }

  Widget cartItem(SvayCartModel svayModel) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child:
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Hero(
                    child: new Image.network(
                      svayModel.image,
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                    ),
                    tag: svayModel.id,
                  )),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(svayModel.name, style: AppTheme.title()),
                  Text("តំលៃ ៖ " + svayModel.price.toString() + "៛",
                      style: AppTheme.body()),
                  Text("ចំនួន ៖ " + svayModel.qtt.toString(),
                      style: AppTheme.body()),
                ],
              ),
       Spacer(flex: 20),
             Column(
                 crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                      child: Icon(Icons.arrow_drop_up), onPressed: () {}),
                       FlatButton(
                      child: Text("1", style: AppTheme.buttonBody()), onPressed: () {}),
                  FlatButton(
                      child: Icon(Icons.arrow_drop_down), onPressed: () {}),
                ],
              )
              
            ],
          ),
    );
  }
}
