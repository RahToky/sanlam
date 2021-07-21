import 'package:flutter/material.dart';
import 'package:sanlam/ui/screen/base/titlable_widget.dart';
import 'package:sanlam/ui/widget/calendar/custom_date_picker.dart';
import 'package:sanlam/ui/widget/calendar/custom_time_picker.dart';
import 'package:sanlam/util/color_util.dart';
import 'package:sanlam/const/dimens.dart';

class Declaration2Screen extends StatelessWidget implements TitleScreen {
  static final routeName = '/declaration_2';

  @override
  String getTitle() => 'Information sur l\'accident';

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    final double _containerHeight = size.height*0.62;
    final double _descAreaHeight = _containerHeight*0.25;

    return Container(
      height: _containerHeight,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Date et heure de l\'accident',
            textScaleFactor: Dimens.textScaleFactor,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(height: Dimens.textSpacing),
          Row(
            children: [
              MyDatePicker(),
              SizedBox(width: 30),
              MyTimePicker(),
            ],
          ),
          SizedBox(height: Dimens.defaultMargin),
          Text(
            'Lieu de l\'accident',
            textScaleFactor: Dimens.textScaleFactor,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: Dimens.textSpacing),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: HexColor('#eeeeee'),
              ),
            ),
          ),
          SizedBox(height: Dimens.defaultMargin),
          Text(
            'Déscription de l\'accident',
            textScaleFactor: Dimens.textScaleFactor,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Container(
            height: _descAreaHeight,
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
