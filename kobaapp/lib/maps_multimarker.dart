import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';

class MapMultiMarker extends StatefulWidget {
  const MapMultiMarker({Key? key}) : super(key: key);

  @override
  State<MapMultiMarker> createState() => _MapMultiMarkerState();
}

class _MapMultiMarkerState extends State<MapMultiMarker> {
  final List<Map<String, dynamic>> clityList = const [
    {
      "address":
          "Permata Regency D/37 , Jln H. Kelil, Srengseng , Kec.Kembangan,Kota Jakarta Barat , DKI Jakarta",
      "id": "1",
      "image":
          "https://i.pinimg.com/originals/b7/3a/13/b73a132e165978fa07c6abd2879b47a6.png",
      "lat": -6.208452170027296,
      "lng": 106.76417950537643,
      "name": "INFINITI OFFICE",
      "phone": "0817141555",
      "region": "Jakarta"
    },
    {
      "address":
          "APL Tower Central Park Lt 26 ,Unit T3 , Jln. Letjen.S.Parman Kav.28 , Slipi , Kec.Grogol,Jakarta Barat ,DKI Jakarta",
      "id": "2",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/9/96/Delhi_Red_fort.jpg",
      "lat": -6.177333200014001,
      "lng": 106.79301180661525,
      "name": "VANTAGE OFFICE ",
      "phone": "08111998998",
      "region": "Jakarta"
    },
    {
      "address":
          "Jln.Panjang Raya 7 , Kedoya Utara , Kebon Jeruk , West Jakarta City , Jakarta ",
      "id": "3",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/7/7e/Mumbai_Taj.JPG",
      "lat": -6.168641653357424,
      "lng": 106.763943806165,
      "name": "UNIFAM TOWER",
      "phone": "0215803293",
      "region": "Jakarta"
    },
    {
      "address":
          "Rukan Daan Mogot, Jalan Daan Mogot Raya, Kelurahan No.47, RT.5/RW.1, Tj. Duren Utara, Kec. Grogol petamburan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11470",
      "id": "4",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/6/6f/Evening_view%2C_City_Palace%2C_Udaipur.jpg",
      "lat": -6.1656669647886915,
      "lng": 106.783167868727,
      "name": "SPACE INC COWORKING  ",
      "phone": "081213115428",
      "region": "Jakarta"
    },
    {
      "address":
          "Jl. Arjuna Utara No.35, RT.8/RW.1, Duri Kepa, Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11510 ",
      "id": "5",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/6/6f/Evening_view%2C_City_Palace%2C_Udaipur.jpg",
      "lat": -6.189278678601395,
      "lng": 106.7698674647744,
      "name": "SOMA Co-Working & Cafe",
      "phone": "08119697662",
      "region": "Jakarta"
    }
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
