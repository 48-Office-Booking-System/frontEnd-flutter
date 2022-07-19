import 'dart:io';

import 'package:map_koba/components/color.dart';
import 'package:map_koba/maps/mark_buildA.dart';
import 'package:map_koba/maps/mark_buildB.dart';
import 'package:map_koba/maps/mark_buildC.dart';
import 'package:map_koba/maps/mark_buildD.dart';
import 'package:map_koba/maps/mark_buildE.dart';
import 'package:map_koba/maps/mark_buildF.dart';
import 'package:map_koba/model/office_model.dart';
import 'package:map_koba/widgets/review_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../model/office_model.dart';

class DetailPage extends StatefulWidget {
  final BuildingModel buildingModel;

  const DetailPage({Key? key, required this.buildingModel}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var inputController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var dropdownValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ColorStyles.searchColor,
          centerTitle: true,
          title: Text(
            widget.buildingModel.name,
            style: const TextStyle(
              color: ColorStyles.blackColor,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.chat),
              color: ColorStyles.textColor,
              iconSize: 27,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => openwhatsapp(widget.buildingModel.nohp)));
              },
            ),
          ],
          leading: const BackButton(color: ColorStyles.textColor)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Image.asset(
                  widget.buildingModel.img,
                  height: 175,
                  width: 403,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                widget.buildingModel.name,
                style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'avenir',
                    color: ColorStyles.textColor,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 110,
                height: 40,
                child: Card(
                  color: ColorStyles.cardbestseller,
                  // elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        iconSize: 20,
                        color: ColorStyles.primaryColor,
                        onPressed: () {},
                        icon: const Icon(Icons.person),
                      ),
                      // const SizedBox(width: 2),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.buildingModel.capacity,
                            style: const TextStyle(
                              fontSize: 15,
                              fontFamily: 'avenir',
                              color: ColorStyles.primaryColor,
                              // fontWeight: FontWeight.w800
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: List.generate(
                  5,
                  (index) => Icon(
                    Icons.star,
                    color: ColorStyles.ratingColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.buildingModel.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'avenir',
                  color: ColorStyles.blackColor,
                  // fontWeight: FontWeight.w800
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Lokasi',
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'avenir',
                  color: ColorStyles.blackColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.buildingModel.location,
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'avenir',
                    color: ColorStyles.searchiconColor,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.buildingModel.locationdetail,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'avenir',
                  color: ColorStyles.searchiconColor,
                  // fontWeight: FontWeight.w800
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  if (widget.buildingModel.name == "Building A") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BuildA()));
                  } else if (widget.buildingModel.name == "Building B") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BuildB()));
                  } else if (widget.buildingModel.name == "Building C") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BuildC()));
                  } else if (widget.buildingModel.name == "Building D") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BuildD()));
                  } else if (widget.buildingModel.name == "Building E") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BuildE()));
                  } else if (widget.buildingModel.name == "Building F") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BuildF()));
                  }
                },
                child: SizedBox(
                  child: Image.asset(
                    "assets/images/maps.png",
                    height: 150,
                    width: 403,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Ketersediaan',
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'avenir',
                  color: ColorStyles.blackColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
              // const SizedBox(
              //   height: 5,
              // ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Fasilitas',
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'avenir',
                  color: ColorStyles.blackColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.buildingModel.facility,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'avenir',
                  color: ColorStyles.searchiconColor,
                  // fontWeight: FontWeight.w800
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Review',
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'avenir',
                  color: ColorStyles.blackColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ReviewWidget(),
            ],
          ),
        ),
      ),
    );
  }

  openwhatsapp(String nohp) async {
    var whatsapp = nohp;
    var whatsappURl_android = "whatsapp://send?phone=" +
        whatsapp +
        "&text= Halo Koba-min^^ ~ \nSaya mau booking  ... ";
    var whatappURL_ios =
        "https://wa.me/$whatsapp?text=${Uri.parse("Halo , saya mau tanya ...")}";
    if (Platform.isIOS) {
      // for iOS phone only
      if (await canLaunch(whatappURL_ios)) {
        await launch(whatappURL_ios, forceSafariVC: false);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
      }
    } else {
      // android , web
      if (await canLaunch(whatsappURl_android)) {
        await launch(whatsappURl_android);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
      }
    }
  }
}
