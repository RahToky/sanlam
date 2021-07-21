import 'package:flutter/material.dart';
import 'package:sanlam/ui/screen/base/titlable_widget.dart';
import 'package:sanlam/util/color_util.dart';
import 'package:sanlam/const/dimens.dart';

class Declaration6Screen extends StatelessWidget implements TitleScreen{
  static final routeName = '/declaration_6';

  @override
  String getTitle() => 'Récapitulatif';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double _containerHeight = size.height * 0.64;
    final double _mapHeight = size.height * 0.14;
    final double _descriptionHeight = size.height * 0.10;
    return Container(
      height: _containerHeight,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Véhicule accidenté',
            textScaleFactor: Dimens.textScaleFactor,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            'Renault Mégane 1234MT',
            textScaleFactor: Dimens.textScaleFactor,
          ),
          SizedBox(height: Dimens.defaultMargin),
          Text(
            'Date et heure de l\'accident',
            textScaleFactor: Dimens.textScaleFactor,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            '00/00/2021 - 00:00',
            textScaleFactor: Dimens.textScaleFactor,
          ),
          SizedBox(height: Dimens.defaultMargin),
          Text(
            'Lieu de l\'accident',
            textScaleFactor: Dimens.textScaleFactor,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            'N°XXX, Nom de la rue, Ville, code postal',
            textScaleFactor: Dimens.textScaleFactor,
          ),
          SizedBox(height: Dimens.textSpacing),
          Container(
            width: size.width,
            height: _mapHeight,
            color: HexColor('#eeeeee'),
          ),
          SizedBox(height: Dimens.textSpacing),
          Text(
            'Déscription de l\'accident',
            textScaleFactor: Dimens.textScaleFactor,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Container(
            height: _descriptionHeight,
            child: SingleChildScrollView(
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam ididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam Ut enim ad minim veniam ididunt ut labore et dolore magna aliqua. Ut enim ad minim venia Ut enim ad minim veniam ididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam ',
                  textScaleFactor: Dimens.textScaleFactor,
                ),
            ),
          ),
          SizedBox(height: Dimens.textSpacing),
          Row(
            children: [
              Text(
                'Témoignage',
                textScaleFactor: Dimens.textScaleFactor,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                ' 1',
                textScaleFactor: Dimens.textScaleFactor,
              ),
            ],
          ),
          SizedBox(height: Dimens.textSpacing),
          Row(
            children: [
              Text(
                'Photos',
                textScaleFactor: Dimens.textScaleFactor,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                ' 12',
                textScaleFactor: Dimens.textScaleFactor,
              ),
            ],
          ),

        ],
      ),
    );
  }
}
