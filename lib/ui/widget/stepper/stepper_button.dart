import 'package:flutter/material.dart';
import 'dart:developer' as dev;

class StepperButton extends StatefulWidget {

  final int child;
  final int active;
  final double height;
  final Color backgroundColor;
  final Color activeBackgroundColor;

  StepperButton({this.child, this.active, this.height, this.backgroundColor, this.activeBackgroundColor});

  @override
  _StepperButtonState createState() =>
      _StepperButtonState();
}

class _StepperButtonState extends State<StepperButton> {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.height,
      alignment: Alignment.center,
      child: (widget.active<0)
          ? Icon(
        Icons.check,
        color: Colors.white,//Theme.of(context).primaryColor,
      )
          : Text(
        '${widget.child}',
        style: TextStyle(color: widget.active==0?Theme.of(context).primaryColor:Theme.of(context).accentColor,fontWeight: widget.active==0?FontWeight.bold:FontWeight.normal),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: widget.active<=0?widget.activeBackgroundColor:widget.backgroundColor,
      ),
    );
  }
}
