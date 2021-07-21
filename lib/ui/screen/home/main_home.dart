import 'package:flutter/material.dart';
import 'package:sanlam/ui/screen/declaration/main_declaration.dart';
import 'package:sanlam/ui/widget/appbar/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {

  static final routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(0),
      body: Container(
        child: Center(
          child: TextButton(
            child: const Text('Déclaration'),
            onPressed: (){
              Navigator.pushNamed(context, DeclarationMainScreen.routeName);
            },
          ),
        ),
      ),
    );
  }
}
