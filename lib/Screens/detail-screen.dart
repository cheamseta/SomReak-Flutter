import 'package:flutter/material.dart';
import 'package:som_reak/services/app-theme.dart';
import 'package:som_reak/widgets/slide-detail-widget.dart';

import '../model/svay-model.dart';
import '../services/app-theme.dart';

class DetailScreen extends StatelessWidget {


  final SvayModel svay;
  const DetailScreen({this.svay});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          AppTheme.theAppBar(context, Icon(Icons.arrow_downward)),
          mainImage(),
          SlideDetailWidget(),
          priceWidget(),
          description(),
          map(),
          orderButton(context)
        ],
      ),
    );
  }

  Widget mainImage() {
    return Container(
        height: 400,
        padding: EdgeInsets.all(20),
        child:  ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Hero(
                  child: Image.network(
                    svay.image,
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                  tag: svay.id,
                ),
        ));
  }

   Widget description() {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: Text("ពណ៏នា", style: AppTheme.title()),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: Text("ឈើ​ដំណាំ​ដើម​ធំ ផ្លែ​កាល​នៅ​ខ្ចី​ឬ​ចាស់​ច្រើន​តែ​ជូរ លុះ​ដល់​ទុំ​ច្រើន​តែ​ផ្អែម សម្រាប់​ប្រើ​បរិភោគ​បាន​តាម​ការ, មាន​ច្រើន​ប្រភេទ​ស្ទើរ​រាប់​ឈ្មោះ​ពុំ​អស់ : ស្វាយ​កែវ, ស្វាយ​ក្បាល​ដំរី, ស្វាយ​ខ្ទិះ, ស្វាយ​ចេក, ស្វាយ​ទុរេន, ស្វាយ​ពង​ត្រង, ស្វាយ​ពុំសែន, ស្វាយ​មាស, ស្វាយ​មីង, ស្វាយ​ស ។ល។", style: AppTheme.body()),
                   ),
                   
          ],
        ));
  }

    Widget map() {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: Text("ស្វែករកពួកយើង", style: AppTheme.title()),
                   ),
                   Image.network("https://cdn2.iconfinder.com/data/icons/geest-travel-kit/128/travel_journey-04-2-512.png",
                    fit: BoxFit.cover,
                    width: 200,
                    height: 200,
                  )
          ],
        ));
  }

  Widget priceWidget() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    svay.name,
                    style: AppTheme.headline(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "តំលៃ ៖ " + svay.price.toString() + "៛",
                    style: AppTheme.headline(),
                  ),
                ),
              ]));
  }

  Widget orderButton(BuildContext context) {
    return FlatButton(
        onPressed: () {},
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.pinkAccent,
              ),
            ),
            Text(' ទិញពេលនេះ', style: AppTheme.buttonBodyFocus()),
          ],
        ));
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:food4cook/model/food.dart';
// import 'package:smooth_star_rating/smooth_star_rating.dart';

// import '../appThem.dart';

// class DetailPage extends StatefulWidget {

//   final Food food;
//   const DetailPage({this.food});

//   @override
//   _DetailPageState createState() => _DetailPageState();
// }

// class _DetailPageState extends State<DetailPage> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Padding(
//       padding: EdgeInsets.all(10),
//       child: ListView(
//         children: <Widget>[
//           AppTheme.theAppBar(context , Icon(Icons.arrow_back)),
//           _mainImage(),
//           _priceWidget(),
//           Text('Ingredients', style: AppTheme.body1),
//           _ingredientsWidget(),
//           Text('How to make it', style: AppTheme.body1),
//           _howToWidget(),
//           _orderButton(context)
//         ],
//       ),
//     ));
//   }

//   Widget _mainImage() {
//     return Container(
//       height: 400,
//       padding: EdgeInsets.all(20),
//       child: Image.network(this.widget.food.image),
//     );
//   }

//   Widget _priceWidget() {
//     return Padding(
//         padding: EdgeInsets.symmetric(vertical: 15.0),
//         child: Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Column(
//               mainAxisSize: MainAxisSize.max,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: <Widget>[
//                     Text(
//                       '4.5',
//                       style: TextStyle(
//                         color: Colors.black87,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 8.0),
//                       child: SmoothStarRating(
//                         starCount: 5,
//                         rating: 0,
//                         onRatingChanged: (newRating) {
//                           setState(() {
//                            // rating = newRating;
//                           });
//                         },
//                         size: 24.0,
//                         spacing: 4.0,
//                         color: Colors.green,
//                         borderColor: Colors.green,
//                       ),
//                     ),
//                     Text(
//                       '(69)',
//                       style: TextStyle(
//                         color: Colors.black54,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     )
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Text(this.widget.food.name,
//                   style: TextStyle(color: Colors.black87, fontSize: 40),
//                 ),
//                 Text(
//                   this.widget.food.price,
//                   style: AppTheme.headlineFocus,
//                 ),
//                 SizedBox(height: 20),
//               ]),
//         ));
//   }

//   Widget _orderButton(BuildContext context) {
//     return FlatButton(
//         onPressed: () {},
//         padding: EdgeInsets.all(10.0),
//         child: Row(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(left: 15),
//               child: Icon(Icons.add, color: AppTheme.redPink),
//             ),
//             Text('ORDER NOW', style: AppTheme.titleFocus),
//           ],
//         ));
//   }

//   Widget _ingredientsWidget() {

//     List<Widget> ingreList = List<Widget>();

//     for (int i = 0; i < this.widget.food.ingredients.length; i++) {
//       Ingredient ingrr = this.widget.food.ingredients[i];
//       ingreList.add(
//         ingredientItem(
//               ingrr.imageURL,
//               ingrr.name,
//               ingrr.measurement)
//       );
//     }

//     return Card(
//       margin: EdgeInsets.only(top: 20, bottom: 20),
//       elevation: 0.2,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: ingreList
//           ),
//       ),
//     );
//   }

//   Widget _howToWidget() {
//     return Card(
//       margin: EdgeInsets.only(top: 20, bottom: 20),
//       elevation: 0.2,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Html(
//           data: this.widget.food.howToCook,
//           padding: EdgeInsets.all(8.0),
//         ),
//       ),
//     );
//   }

//   Widget ingredientItem(String imgUrl, String title, String size) {
//     return ListTile(
//         leading: Image.network(imgUrl, width: 50, fit: BoxFit.fitWidth),
//         title: Text(title, style: AppTheme.body2Bold),
//         trailing: Text(size, style: AppTheme.body3));
//   }

// Widget _unitsWidget(BuildContext context) {
//   return SizedBox(
//     height: 65,
//     child: ListView.builder(
//       itemCount: 3,
//       scrollDirection: Axis.horizontal,
//       padding:  EdgeInsets.all(16.0),
//       shrinkWrap: true,
//       itemBuilder: (BuildContext context, int index) {
//         return Container(
//           padding:  EdgeInsets.all(8.0),
//           margin:  EdgeInsets.symmetric(horizontal: 8.0),
//           decoration: BoxDecoration(
//               color: index == 0
//                   ? Theme.of(context).accentColor
//                   : Colors.transparent,
//               border:
//                   Border.all(color: Theme.of(context).accentColor, width: 2),
//               borderRadius: BorderRadius.circular(16)),
//           child: Text(
//             '${index + 5} units',
//             style: TextStyle(
//               fontSize: 14,
//               color: Colors.white,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         );
//       },
//     ),
//   );
// }

//}
