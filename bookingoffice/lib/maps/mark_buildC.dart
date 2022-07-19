import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';

class BuildC extends StatefulWidget {
  const BuildC({Key? key}) : super(key: key);

  @override
  State<BuildC> createState() => _BuildCState();
}

class _BuildCState extends State<BuildC> {
  final List<Map<String, dynamic>> clityList = const [
    {
      "address":
          "Jl. Panjang Raya 7, Kedoya Utara , Kebon Jeruk , West Jakarta City , Jakarta",
      "id": "3",
      "image":
          "https://static-id.lamudi.com/static/media/bm9uZS9ub25l/2x2x5x880x396/dbc1189606bc82.jpg",
      "lat": -6.168641653357424,
      "lng": 106.763943806165,
      "name": "-UNIFAM TOWER-",
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
