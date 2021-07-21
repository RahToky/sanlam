import 'package:flutter/material.dart';
import 'package:sanlam/callback/step_listener.dart';
import 'package:sanlam/ui/widget/appbar/custom_app_bar_decoration.dart';
import 'package:sanlam/ui/widget/stepper/stepper_button.dart';
import 'dart:developer' as dev;

class Steppers extends StatefulWidget {

  final int count;
  final int activeIndex ;
  final StepClickListener _clickListener;

  Steppers(this.count, this.activeIndex, this._clickListener);

  @override
  _SteppersState createState() => _SteppersState();
}

class _SteppersState extends State<Steppers> {

  final double btnHeight = kToolbarHeight * 0.6;
  int _activeIndex;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double stepperPaddingLR = size.width*0.1;
    _activeIndex = widget.activeIndex*2;

    return Material(
      elevation: 12,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          //gradient: getAppBarGradientDecoration(),
        ),
        height: kToolbarHeight * 0.8,
        padding: EdgeInsets.only(left: stepperPaddingLR, right: stepperPaddingLR),
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(widget.count * 2 - 1, (index) {

            final bool _isButton = index % 2 == 0;
            final _active = index == _activeIndex?0:(index<_activeIndex?-1:1);
            final int _indexToSendToParent = (index / 2).ceil();
            final int _indexToDisplay = _indexToSendToParent + 1;

            if (_isButton) {
              return InkWell(
                child: StepperButton(
                  child: _indexToDisplay,
                  active: _active,
                  height: btnHeight,
                  backgroundColor: Theme.of(context).appBarTheme.systemOverlayStyle.statusBarColor,
                  activeBackgroundColor: Theme.of(context).accentColor,
                ),
                onTap: () {
                  widget._clickListener.onStepClicked(_indexToSendToParent);
                  if (_activeIndex != index) {
                    setState(() {
                      _activeIndex = index;
                    });
                  }
                },
              );
            } else {
              //Tiré entre les bouttons
              return Expanded(
                child: Container(
                  color: index<_activeIndex?Theme.of(context).accentColor:Theme.of(context).appBarTheme.systemOverlayStyle.statusBarColor,
                  height: 2,
                ),
              );
            }
          }),
        ),
      ),
    );
  }
}
