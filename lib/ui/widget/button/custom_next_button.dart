import 'package:flutter/material.dart';
import 'package:sanlam/callback/click_listener.dart';
import 'package:sanlam/util/color_util.dart';

class MyNextButton extends StatelessWidget {

  final String text;
  final Color backgroundColor;
  final Color foregroundColor;
  final ClickListener clickListener;

  MyNextButton({@required this.text,@required  this.foregroundColor,@required  this.backgroundColor,@required this.clickListener});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(15),
          backgroundColor: backgroundColor,
          shadowColor: HexColor("#eeeeee"),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          elevation: 15,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: foregroundColor,
          ),
          textScaleFactor: 1.1,
        ),
        onPressed: () {
          clickListener.onClick();
        },
      ),
    );
  }
}
