import 'package:flutter/material.dart';
import 'package:som_reak/services/app-theme.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
          children: <Widget>[
            AppTheme.theAppBar(context, Icon(Icons.arrow_downward))
          ],
        ) 
    );
  }
}