import 'package:bookingoffice/components/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FiltersBookingWidget extends StatefulWidget {
  const FiltersBookingWidget({ Key? key }) : super(key: key);

  @override
  State<FiltersBookingWidget> createState() => _FiltersBookingWidgetState();
}

class _FiltersBookingWidgetState extends State<FiltersBookingWidget> {
  var inputController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var dropdownValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 35,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Silahkan cari ruangan yang anda inginkan',
              style:
              TextStyle(
                fontSize: 20, 
                fontFamily: 'Nunito',
                color: ColorStyles.blackColor, 
                fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
              ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: ColorStyles.dropdownButtonColor,
                  borderRadius: BorderRadius.circular(10),
                  // border: Border.all(color: Colors.black, width: 1),
                ),
                margin: EdgeInsets.all(10),
                child: DropdownButton(
                  isExpanded: true,
                  borderRadius: BorderRadius.circular(10),
                  dropdownColor: ColorStyles.primaryColor,
                  style: 
                  TextStyle(
                    fontSize: 16, 
                    fontFamily: 'Nunito',
                    color: ColorStyles.blackColor),
                  value: dropdownValue,
                  focusColor: ColorStyles.dropdownButtonColor2,                    
                  iconEnabledColor: ColorStyles.primaryColor,
                  iconSize: 40,
                  onChanged: (int? value) {
                    setState(() {
                      dropdownValue = value ?? 0;
                    });
                  },
                  items: const [
                    DropdownMenuItem(value: 0, child: Text("Tipe Ruangan"),),
                    DropdownMenuItem(value: 1, child: Text("Indoor"),),
                    DropdownMenuItem(value: 2, child: Text("Outdoor"),),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: ColorStyles.dropdownButtonColor,
                  borderRadius: BorderRadius.circular(10),
                  // border: Border.all(color: Colors.black, width: 1),
                ),
                margin: EdgeInsets.all(10),
                child: DropdownButton(
                  isExpanded: true,
                  borderRadius: BorderRadius.circular(10),
                  dropdownColor: ColorStyles.primaryColor,
                  style: 
                  TextStyle(
                    fontSize: 16, 
                    fontFamily: 'Nunito',
                    color: ColorStyles.blackColor),
                  value: dropdownValue,
                  focusColor: ColorStyles.dropdownButtonColor2,                    
                  iconEnabledColor: ColorStyles.primaryColor,
                  iconSize: 40,
                  onChanged: (int? value) {
                    setState(() {
                      dropdownValue = value ?? 0;
                    });
                  },
                  items: const [
                    DropdownMenuItem(value: 0, child: Text("Jenis Ruangan"),),
                    DropdownMenuItem(value: 1, child: Text("Event"),),
                    DropdownMenuItem(value: 2, child: Text("Meeting"),),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: ColorStyles.dropdownButtonColor,
                  borderRadius: BorderRadius.circular(10),
                  // border: Border.all(color: Colors.black, width: 1),
                ),
                margin: EdgeInsets.all(10),
                child: DropdownButton(
                  isExpanded: true,
                  borderRadius: BorderRadius.circular(10),
                  dropdownColor: ColorStyles.primaryColor,
                  style: 
                  TextStyle(
                    fontSize: 16, 
                    fontFamily: 'Nunito',
                    color: ColorStyles.blackColor),
                  value: dropdownValue,
                  focusColor: ColorStyles.dropdownButtonColor2,                    
                  iconEnabledColor: ColorStyles.primaryColor,
                  iconSize: 40,
                  onChanged: (int? value) {
                    setState(() {
                      dropdownValue = value ?? 0;
                    });
                  },
                  items: const [
                    DropdownMenuItem(value: 0, child: Text("Kapasitas Orang"),),
                    DropdownMenuItem(value: 1, child: Text("1 - 10 Orang"),),
                    DropdownMenuItem(value: 2, child: Text("11 - 20 Orang"),),
                    DropdownMenuItem(value: 1, child: Text("21 - 30 Orang"),),
                    DropdownMenuItem(value: 2, child: Text("31 - 40 Orang"),),
                    DropdownMenuItem(value: 1, child: Text("41 - 50 Orang"),),
                    DropdownMenuItem(value: 2, child: Text("51 - 60 Orang"),),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: ElevatedButton(
            onPressed: (){}, 
            child: const Text("Pesan",
            style: TextStyle(
              fontSize: 16,
              color: ColorStyles.primaryColor, 
              fontFamily: 'avenir')
            ),
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(130, 32), primary: ColorStyles.textColor),
          ),
        ),
      ],),
    );
  }
}