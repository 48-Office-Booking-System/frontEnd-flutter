import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';

class BuildD extends StatefulWidget {
  const BuildD({Key? key}) : super(key: key);

  @override
  State<BuildD> createState() => _BuildDState();
}

class _BuildDState extends State<BuildD> {
  final List<Map<String, dynamic>> clityList = const [
    {
      "address":
          "Rukan Daan Mogot , Jalan Daan Mogot Raya No.47 , Tanjung Duren Utara , Kec . Grogol-Petamburan , Kota Jakarta Barat , DKI Jakarta ",
      "id": "4",
      "image": "https://media.flyspaces.com/docs/1546700451_5c30c6a352dd9.jpg",
      "lat": -6.1656669647886915,
      "lng": 106.783167868727,
      "name": "-SPACE INC COWORKING- ",
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
