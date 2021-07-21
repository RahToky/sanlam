import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanlam/callback/click_listener.dart';

class MyDateTimePicker extends StatelessWidget {

  final String text;
  final IconData iconData;
  final ClickListener clickListener;

  MyDateTimePicker({@required this.text,@required this.iconData,this.clickListener});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(3)),
            boxShadow: [
              BoxShadow(color: Colors.grey.shade400,spreadRadius: 1,blurRadius: 7),
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text,textScaleFactor: 1.1),
              Icon(iconData,color: Theme.of(context).focusColor,),
            ],
          ),
        ),
        onTap: (){
          if(clickListener != null)
            clickListener.onClick();
        },
      ),
    );
  }
}
