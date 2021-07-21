import 'package:flutter/material.dart';
import 'package:sanlam/callback/click_listener.dart';
import 'package:sanlam/callback/step_listener.dart';
import 'package:sanlam/ui/screen/base/titlable_widget.dart';
import 'package:sanlam/ui/screen/declaration/step_1.dart';
import 'package:sanlam/ui/screen/declaration/step_confirmation.dart';
import 'package:sanlam/ui/widget/button/custom_next_button.dart';
import 'package:sanlam/ui/widget/stepper/steppers.dart';
import 'package:sanlam/ui/widget/appbar/custom_app_bar.dart';
import 'package:sanlam/util/color_util.dart';
import 'dart:developer' as dev;

import 'step_2.dart';
import 'step_3.dart';
import 'step_4.dart';
import 'step_5.dart';
import 'step_6.dart';

class DeclarationMainScreen extends StatefulWidget {
  static final routeName = "/declaration";

  @override
  _DeclarationMainScreenState createState() => _DeclarationMainScreenState();
}

class _DeclarationMainScreenState extends State<DeclarationMainScreen>
    implements StepClickListener, ClickListener {
  int _currentFragmentIndex = 0;

  List<String> _nextButtonText = [
    'CONTINUER',
    'CONFIRMER',
    'REVENIR À L\'ACCUEIL'
  ];

  final _fragments = [
    Declaration1Screen(),
    Declaration2Screen(),
    Declaration3Screen(),
    Declaration4Screen(),
    Declaration5Screen(),
    Declaration6Screen(),
    DeclarationConfirmationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    Widget _currentFragment = _fragments[_currentFragmentIndex];

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: MyAppBar(0),
      body: WillPopScope(
        onWillPop: _onBackPressed,
        child: Container(
          child: Column(
            children: [
              Steppers(6, _currentFragmentIndex, this),
              SizedBox(height: 20),
              Text(
                '${(_currentFragment as TitleScreen).getTitle()}',
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                    child: _currentFragment,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: MyNextButton(
        text: _nextButtonText[_currentFragmentIndex < _fragments.length - 2
            ? 0
            : (_currentFragmentIndex == _fragments.length - 2 ? 1 : 2)],
        backgroundColor: _currentFragmentIndex == _fragments.length - 2
            ? Theme.of(context).buttonColor
            : HexColor("#fef2ff"),
        foregroundColor: _currentFragmentIndex == _fragments.length - 2
            ? Colors.white
            : Theme.of(context).primaryColor,
        clickListener: this,
      ),
    );
  }

  @override
  void onStepClicked(int index) {
    setState(() {
      _currentFragmentIndex = index;
    });
  }

  @override
  void onClick() {
    setState(() {
      if(_changeStep(1))
        Navigator.pop(context);
    });
  }

  bool _changeStep(int direction){
    if ((_currentFragmentIndex == 0 && direction<0) || (_currentFragmentIndex == _fragments.length - 1 && direction>0) ) {
      return true;
    }else {
        if (direction < 0) {
          _currentFragmentIndex--;
        } else if (direction > 0) {
          _currentFragmentIndex++;
        }
        return false;
    }
  }

  Future<bool> _onBackPressed() {
    bool value = _changeStep(-1);
    if(!value)
    setState(() {});
    return Future.value(value);
  }

}
