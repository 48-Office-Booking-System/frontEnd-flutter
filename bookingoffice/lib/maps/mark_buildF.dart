import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';

class BuildF extends StatefulWidget {
  const BuildF({Key? key}) : super(key: key);

  @override
  State<BuildF> createState() => _BuildFState();
}

class _BuildFState extends State<BuildF> {
  final List<Map<String, dynamic>> clityList = const [
    {
      "address":
          "Lippo Mall Puri Lt. Ground Floor( Dekat Lobby Banking Hall) , Jln.Puri Indah Raya ,Blok U1 , Puri Indah CBD , Jkt Barat , DKI Jakarta ",
      "id": "6",
      "image":
          " https://b.zmtcdn.com/data/pictures/8/18755438/f5cd0e2dc2aa865b2f3c79e70cc04e54.jpg",
      "lat": -6.189279665198186,
      "lng": 106.76986163558223,
      "name": "-SOMA COWORKING CAFE- ",
      "phone": "082171007526",
      "region": "Jakarta"
    },
  ];
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    _markers.clear();
    setState(() {
      for (int i = 0; i < clityList.length; i++) {
        print("For Loop");
        final marker = Marker(
          markerId: MarkerId(clityList[i]['name']),
          position: LatLng(clityList[i]['lat'], clityList[i]['lng']),
          infoWindow: InfoWindow(
              title: clityList[i]['name'],
              snippet: clityList[i]['address'],
              onTap: () {
                print("${clityList[i]['lat']}, ${clityList[i]['lng']}");
              }),
          onTap: () {
            print("Clicked on marker");
          },
        );
        print("${clityList[i]['lat']}, ${clityList[i]['lng']}");
        _markers[clityList[i]['name']] = marker;
      }
    });
  }

  launchMap(lat, long) {
    MapsLauncher.launchCoordinates(lat, long);
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: LatLng(clityList[0]['lat'], clityList[0]['lng']),
        zoom: 20,
      ),
      markers: _markers.values.toSet(),
    );
  }
}
