import 'package:flutter/material.dart';
import 'package:sanlam/ui/screen/base/titlable_widget.dart';
import 'package:sanlam/ui/widget/button/custom_circle_button.dart';
import 'package:sanlam/const/dimens.dart';

class Declaration3Screen extends StatelessWidget implements TitleScreen {
  static final routeName = '/declaration_3';

  @override
  String getTitle() => 'Témoignage sur l\'accident';

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
            'Témoin N°1',
            textScaleFactor: Dimens.textScaleFactor,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(height: Dimens.textSpacing - 5),
          Text(
            'Demandez le nom de famille, le prénom, le n° de téléphone et ce qu\'il a vu :',
            textScaleFactor: Dimens.textScaleFactor,
          ),
          SizedBox(height: Dimens.textSpacing),
          Container(
            width: size.width,
            child: Column(
              children: [
                MyCircleButton(iconData: Icons.mic_rounded),
                SizedBox(height: 5),
                Text('0:00',textScaleFactor: Dimens.textScaleFactor,style: TextStyle(color:Theme.of(context).primaryColor),),
                Text('Enregistrez directement ou commentez ci-dessous',textScaleFactor: Dimens.textScaleFactor,textAlign: TextAlign.center,),
              ],
            ),
          ),
          Container(
            height: size.height*0.15,
            margin: EdgeInsets.only(top:Dimens.textSpacing),
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    gapPadding: 0,
                  )
              ),
              keyboardType: TextInputType.multiline,
              maxLines: 200,
            ),
          ),
        ],
      ),
    );
  }
}
