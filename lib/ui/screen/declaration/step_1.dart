import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:sanlam/ui/screen/base/titlable_widget.dart';

class Declaration1Screen extends StatefulWidget implements TitleScreen {
  static final routeName = '/declaration_1';

  @override
  _Declaration1ScreenState createState() => _Declaration1ScreenState();

  @override
  String getTitle() => 'Je viens d`avoir un accident';
}

class _Declaration1ScreenState extends State<Declaration1Screen> {
  Future<LocationData> currentLocation;
  Location location;

  @override
  void initState() {
    super.initState();
    location = new Location();
    currentLocation = location.getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: currentLocation,
      builder: (BuildContext context, AsyncSnapshot<LocationData> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return new Center(child: new CircularProgressIndicator());
            break;
          case ConnectionState.done:
            if (snapshot.hasError) {
              return new Text(
                '${snapshot.error}',
                style: TextStyle(color: Colors.red),
              );
            } else {
              return new Center(
                child: Text(snapshot.data.latitude.toString() +
                    " - " +
                    snapshot.data.longitude.toString()),
              );
            }
            break;
          default:
            return new Text('');
        }
      },
    );
  }
}
