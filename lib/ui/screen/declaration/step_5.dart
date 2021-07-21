import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:sanlam/callback/click_listener.dart';
import 'package:sanlam/ui/screen/base/titlable_widget.dart';
import 'package:sanlam/ui/widget/button/custom_circle_button.dart';
import 'package:sanlam/util/color_util.dart';
import 'package:sanlam/const/dimens.dart';
import 'dart:developer' as dev;

class Declaration5Screen extends StatefulWidget implements TitleScreen {
  static final routeName = '/declaration_5';

  @override
  String getTitle() => 'Photographiez les dommages du véhicule';

  @override
  _Declaration5ScreenState createState() => _Declaration5ScreenState();
}

class _Declaration5ScreenState extends State<Declaration5Screen>
    implements ClickListener {
  final List<String> _documentsList = [
    'Tous les côtés du véhicule',
    'Plaques d\'immatriculation de votre véhicule',
    'Détails des dommages',
    'Traces de l\'accident (dérapage, etc...)',
    'Permis de conduire de l\'autre conducteur',
    'Certificat d\'assurance'
  ];

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
            'IMPORTANT : inclure les éléments suivants pour faire les photos',
            textScaleFactor: Dimens.textScaleFactor,
          ),
          Column(
            children: _documentsList.map((document) {
              return Row(children: [
                Icon(
                  Icons.check,
                  color: Theme.of(context).primaryColor,
                ),
                Text(
                  ' $document',
                  textScaleFactor: Dimens.textScaleFactor,
                )
              ]);
            }).toList(),
          ),
          SizedBox(height: Dimens.defaultMargin),
          Center(
              child: MyCircleButton(
            iconData: Icons.photo_camera_outlined,
            iconColor: HexColor('#eeeeee'),
            clickListener: this,
          )),
          SizedBox(height: Dimens.defaultMargin),
          Text(
            'Photos',
            textScaleFactor: Dimens.textScaleFactor,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    );
  }

  Future<void> _optionsDialogBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Theme.of(context)
                              .appBarTheme
                              .systemOverlayStyle
                              .statusBarColor,
                        ),
                        Text('Camera', textScaleFactor: 0.7)
                      ],
                    ),
                    onTap: () {
                      openCamera();
                      Navigator.pop(context);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  GestureDetector(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.photo_library_outlined,
                            color: Theme.of(context)
                                .appBarTheme
                                .systemOverlayStyle
                                .statusBarColor),
                        Text('Galerie', textScaleFactor: 0.7)
                      ],
                    ),
                    onTap: () {
                      openGallery();
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  void openCamera() async{
    /*var picture = await ImagePicker.pickImage(
      source: ImageSource.camera,
    );*/
    dev.log('open camera');
  }

  void openGallery() async {
    /*var gallery = await ImagePicker.pickImage(
      source: ImageSource.gallery,
    );*/
    dev.log('open gallery');
  }

  @override
  void onClick() {
    _optionsDialogBox();
  }
}
