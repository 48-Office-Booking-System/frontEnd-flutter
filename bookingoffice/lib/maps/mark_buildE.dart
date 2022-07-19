import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';

class BuildE extends StatefulWidget {
  const BuildE({Key? key}) : super(key: key);

  @override
  State<BuildE> createState() => _BuildEState();
}

class _BuildEState extends State<BuildE> {
  final List<Map<String, dynamic>> clityList = const [
    {
      "address":
          "Lippo Mall Puri Lt. Ground Floor( Dekat Lobby Banking Hall) , Jln.Puri Indah Raya ,Blok U1 , Puri Indah CBD , Jkt Barat , DKI Jakarta ",
      "id": "5",
      "image":
          " https://kekantor.com/wp-content/uploads/2021/04/gowork-lippo-mall-kemang2-800x600.jpg",
      "lat": -6.186884333173755,
      "lng": 106.7400483,
      "name": "-GO WORK LIPPO MALL- ",
      "phone": "0895401010022",
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
