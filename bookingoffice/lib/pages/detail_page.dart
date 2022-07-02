import 'package:bookingoffice/components/style.dart';
import 'package:bookingoffice/models/office_model.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final BuildingModel buildingModel;

  const DetailPage({Key? key, required this.buildingModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorStyles.secondaryColor,
        title: Text(
          buildingModel.name
        ),
      ),
      body: Image.asset(
        buildingModel.img,
        fit: BoxFit.cover,
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}