import 'package:flutter/material.dart';
import 'package:sanlam/ui/screen/base/titlable_widget.dart';
import 'package:sanlam/ui/widget/button/custom_switch.dart';
import 'package:sanlam/const/dimens.dart';

class Declaration4Screen extends StatefulWidget implements TitleScreen {
  static final routeName = '/declaration_4';

  @override
  _Declaration4ScreenState createState() => _Declaration4ScreenState();

  @override
  String getTitle() => 'Indiquer les dommages du véhicule';
}

class _Declaration4ScreenState extends State<Declaration4Screen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double _containerHeight = size.height * 0.64;
    return Container(
        height: _containerHeight,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Votre véhicule peut-il rouler?',
              textScaleFactor: Dimens.textScaleFactor,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(height: Dimens.defaultMargin),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('OUI',style: TextStyle(fontWeight: FontWeight.bold),textScaleFactor: Dimens.textScaleFactor),
                SizedBox(width: Dimens.defaultMargin),
                MySwitchButton(),
                SizedBox(width: Dimens.defaultMargin),
                Text('NON',style: TextStyle(fontWeight: FontWeight.bold),textScaleFactor: Dimens.textScaleFactor),
              ],
            ),
            SizedBox(height: Dimens.defaultMargin),
            Text(
              'A quels endroits sont localiser les dommages ?',
              textScaleFactor: Dimens.textScaleFactor,
              style: Theme.of(context).textTheme.subtitle2,
            ),

          ],
        ));
  }
}
