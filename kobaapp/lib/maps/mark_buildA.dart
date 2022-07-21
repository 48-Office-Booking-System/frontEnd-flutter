import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';

class BuildA extends StatefulWidget {
  const BuildA({Key? key}) : super(key: key);

  @override
  State<BuildA> createState() => _BuildAState();
}

class _BuildAState extends State<BuildA> {
  final List<Map<String, dynamic>> clityList = const [
    {
      "address":
          "Permata Regency D/37 , Jln H.Kelik ,Srengseng , Kec.Kembangan ,Kota Jakarta Barat , DKI Jakarta",
      "id": "1",
      "image":
          "https://kekantor.com/wp-content/uploads/2021/04/infiniti-office-permata-regency1-800x600.jpeg",
      "lat": -6.208452170027296,
      "lng": 106.76417950537643,
      "name": "-INFINITI OFFICE-",
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
