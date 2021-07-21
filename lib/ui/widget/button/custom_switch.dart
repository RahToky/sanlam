import 'package:flutter/material.dart';
import 'package:sanlam/util/color_util.dart';

class MySwitchButton extends StatefulWidget {

  final double width;
  final Color activeColor;

  MySwitchButton({this.width = 45, this.activeColor});

  @override
  _MySwitchState createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitchButton> {
  bool _carCanMove = true;
  @override
  Widget build(BuildContext context) {
    final _activeColor = widget.activeColor!=null?widget.activeColor:Theme.of(context).focusColor;
    return InkWell(
      splashColor: Colors.transparent,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.decelerate,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: _carCanMove?_activeColor:HexColor('#eeeeee'),
        ),
        child: AnimatedAlign(
          duration: const Duration(milliseconds: 200),
          alignment: _carCanMove?Alignment.centerLeft:Alignment.centerRight,
          curve: Curves.decelerate,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: _carCanMove?Colors.white:Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(100.0),
              ),
            ),
          ),
        ),
      ),
      onTap: (){
        setState(() {
          _carCanMove = !_carCanMove;
        });
      },
    );
  }
}
