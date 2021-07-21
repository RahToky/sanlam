import 'package:flutter/material.dart';
import 'package:sanlam/ui/screen/base/titlable_widget.dart';
import 'package:sanlam/const/dimens.dart';

class DeclarationConfirmationScreen extends StatelessWidget
    implements TitleScreen {
  static final routeName = '/declaration_confirmation';

  @override
  String getTitle() => 'Confirmation';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double _containerHeight = size.height * 0.64;
    final double _logoHeight = _containerHeight * 0.23;
    return Container(
      height: _containerHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: _logoHeight,
            width: _logoHeight,
            child: Stack(
              children: [
                Icon(Icons.phone_android_rounded, size: _logoHeight,color: Theme.of(context).accentColor,),
                Align(
                  child: Icon(
                    Icons.circle,
                    size: _logoHeight / 2,
                    color: Colors.white,
                  ),
                  alignment: Alignment.bottomRight,
                ),
                Align(
                  child: Icon(
                    Icons.check_circle,
                    size: _logoHeight / 2,
                    color: Colors.green,
                  ),
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
          ),
          SizedBox(height: Dimens.defaultMargin),
          Text(
            'FÉLICITATIONS !',
            textScaleFactor: 1.6,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Votre déclaration de sinistre vient d\'être envoyée !',
            textScaleFactor: 1.5,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: Dimens.defaultMargin),
          RichText(
            textAlign: TextAlign.center,
            textScaleFactor: Dimens.textScaleFactor,
            text: TextSpan(
              text: 'Vous recevrer d`\ici ',
              style: TextStyle(
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: '72H',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                TextSpan(
                    text:
                        ' sur votre compte DECSIN, par e-mail et par SMS, une notification sur notre proposition de remboursement.')
              ],
            ),
          ),
          SizedBox(height: Dimens.defaultMargin),
          Text(
            'Votre N° de dossier de sinistre :',
            textScaleFactor: Dimens.textScaleFactor,
          ),
          Text(
            '#123456TT',
            textScaleFactor: Dimens.textScaleFactor,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: Dimens.defaultMargin),
          Text(
            'Vous pouvez à tout moment consultez votre compte sur votre appli mobile DECSIN',
            textScaleFactor: Dimens.textScaleFactor,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
