import 'package:flutter/material.dart';
import 'package:som_reak/Screens/cart-screen.dart';
import 'package:som_reak/Screens/login-screen.dart';
import 'package:som_reak/Screens/search_screen.dart';
import 'package:som_reak/model/svay-model.dart';
import 'package:som_reak/services/app-theme.dart';
import 'package:som_reak/services/routing.dart';
import 'package:som_reak/widgets/category-widget.dart';
import 'package:som_reak/widgets/list-svay-widget.dart';
import 'package:som_reak/widgets/slideshow-widget.dart';

class HomeScreen extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 241, 242, 1),
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text("សុំរាក !", style: AppTheme.title()),
        backgroundColor: Color.fromRGBO(238, 241, 242, 1),
        elevation: 0,
        leading:  IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black45,
            ), onPressed: () {
              Routes.navigateTo(context, () => SearchScreen());
            },
          ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.lock,
              color: Colors.black45,
            ), onPressed: () {
              Routes.navigateTo(context, () => LoginScreen());
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.shopping_cart, color: Colors.white),
          backgroundColor: Colors.redAccent,
          onPressed: () {
              Routes.navigateTo(context, () => CartScreen());
          },
        ),
      body: SafeArea(
        child: ListView(
            children: <Widget>[
              SlideShowWidget(),
            
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("ប្រជាប្រិយភាព", style: AppTheme.title()),
              ),
              CategoryWidget(),
              SizedBox(
                height: 15,
              ),
              ListSvayWidget(svayModel: SvayModel(id : 1, name: 'ស្វាយត្រាំ', price: 1000, image:"https://i.pinimg.com/originals/0e/c2/26/0ec22686ceea730d34d2d9ca6e22118e.jpg")),
              ListSvayWidget(svayModel: SvayModel(id : 2, name: 'កូនស្វាយត្រាំ', price: 4000, image:"https://img.mylot.com/2997573.jpeg")),
              ListSvayWidget(svayModel: SvayModel(id : 3, name: 'ម៉ែស្វាយត្រាំ', price: 5000, image:"https://i.ytimg.com/vi/HDFZMCeBeBk/hqdefault.jpg")),
              ListSvayWidget(svayModel: SvayModel(id : 4, name: 'តាស្វាយត្រាំ', price: 6000, image:"https://i.pinimg.com/originals/43/f1/95/43f195292a8c3763f996c98d1cd41787.jpg")),
              ListSvayWidget(svayModel: SvayModel(id : 5, name: 'អូនស្វាយត្រាំ', price: 2000, image:"https://i.pinimg.com/originals/0e/c2/26/0ec22686ceea730d34d2d9ca6e22118e.jpg")),
            ],
          ),
      ),
    );
  }

}