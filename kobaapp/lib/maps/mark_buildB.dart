import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';

class BuildB extends StatefulWidget {
  const BuildB({Key? key}) : super(key: key);

  @override
  State<BuildB> createState() => _BuildBState();
}

class _BuildBState extends State<BuildB> {
  final List<Map<String, dynamic>> clityList = const [
    {
      "address":
          "APL Tower Central Park 26th floor Unit T3 ,Jl. Letjen S. Parman 28, Tanjung Duren Selatan , Grogol petamburan, Jakarta Barat, 11470, Indonesia",
      "id": "2",
      "image":
          "https://kekantor.com/wp-content/uploads/2021/04/vantage-office-apl-tower2-400x300.jpg",
      "lat": -6.177333200014001,
      "lng": 106.79301180661525,
      "name": "-VANTAGE OFFICE-",
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
