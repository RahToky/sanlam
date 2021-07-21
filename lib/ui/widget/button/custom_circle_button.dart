import 'package:flutter/material.dart';
import 'package:sanlam/callback/click_listener.dart';

class MyCircleButton extends StatelessWidget {
  final IconData iconData;
  final Color borderColor;
  final Color backgroundColor;
  final Color iconColor;
  final double iconSize;
  final double borderWidth;
  final double padding;
  final ClickListener clickListener;

  MyCircleButton(
      {this.iconData,
      this.iconSize = 30,
      this.iconColor = Colors.white,
      this.borderColor = Colors.white,
      this.backgroundColor,
      this.borderWidth = 3,
      this.padding = 5,
      this.clickListener});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: backgroundColor != null
              ? backgroundColor
              : Theme.of(context).focusColor,
          border: Border.all(color: borderColor, width: borderWidth),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400, spreadRadius: 1, blurRadius: 7),
          ]),
      child: IconButton(
        icon: Icon(iconData, size: iconSize, color: iconColor),
        onPressed: ()  {if(clickListener != null)clickListener.onClick();},
      ),
    );
  }
}
