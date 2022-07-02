import 'package:bookingoffice/components/style.dart';
import 'package:bookingoffice/models/office_model.dart';
import 'package:flutter/material.dart';

class BookingWidget extends StatefulWidget {
  const BookingWidget({ Key? key }) : super(key: key);

  @override
  State<BookingWidget> createState() => _BookingWidgetState();
}

class _BookingWidgetState extends State<BookingWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 540,
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 220,
        ),
        itemCount: buildingModelData.length, 
        itemBuilder: (context, index){
          final building = buildingModelData[index];
          return InkWell(
            onTap: () {
              // Navigator.of(context).push(
              // MaterialPageRoute(builder: (_) => DetailPage(buildingModel: building,)));
            },
            child: Card(
              color: ColorStyles.primaryColor,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Container(
                padding: EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Image.asset(
                        "${building.img}",
                        height: 160,
                        width: 260,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "${building.name}",
                      maxLines: 2,
                      style:
                      TextStyle(
                        fontSize: 14, 
                        fontFamily: 'avenir',
                        color: ColorStyles.textColor),
                      // overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 3),
                    Text(
                      '\Rp${"${building.price}"}/Jam',
                      style: TextStyle(
                        fontSize: 14,
                        color: ColorStyles.textColor, 
                        fontFamily: 'avenir',
                        fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}