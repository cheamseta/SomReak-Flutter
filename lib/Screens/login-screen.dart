import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:som_reak/services/app-theme.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(
          children: <Widget>[
            AppTheme.theAppBar(context, Icon(Icons.arrow_downward)),
            formForFill("ឈ្មោះ", false, Icon(Icons.contacts)),
            formForFill("ពាក្សសំងាត់", true, Icon(Icons.lock_outline)),
            SizedBox(height: 50),
            loginButton()
          ],
        ) 
    );
  }

  Widget loginButton() {
    return FlatButton(
      child: Text("ចុះឈ្មោះចូល !", style: AppTheme.buttonBody(),),
      onPressed: () {},
    );
  }

  Widget formForFill(String formString, bool isEncrypted, Icon icon) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: TextFormField(
        obscureText: isEncrypted,
        decoration:
            InputDecoration(icon: icon, hintText: formString),
        style: AppTheme.title(),
        onSaved: (String input) {},
        validator: (String input) {
          return input.isEmpty ? 'Please fill out proper input' : null;
        },
      ),
    );
  }
}
