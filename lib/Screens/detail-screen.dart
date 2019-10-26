import 'package:flutter/material.dart';
import 'package:som_reak/services/app-theme.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppTheme.theAppBar(context, Icon(Icons.arrow_downward)),
    );
  }
}