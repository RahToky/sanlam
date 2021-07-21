import 'package:flutter/material.dart';
import 'package:sanlam/ui/widget/appbar/custom_app_bar_decoration.dart';
import 'package:sanlam/util/color_util.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {

  final double _elevation;

  MyAppBar(this._elevation);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
          //gradient: getAppBarGradientDecoration(),
      ),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: _elevation,
        centerTitle: true,
        title: Text('DÉCLARER UN SINISTRE',style: TextStyle(fontSize:18,fontWeight: FontWeight.w300),),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle_outlined,color: HexColor('#e3c3e6')),//Image.asset('assets/icons/sanlam.png',width: 25),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

}
