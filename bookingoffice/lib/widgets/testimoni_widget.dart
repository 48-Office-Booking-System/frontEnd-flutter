// import 'package:bookingofficeapp/providers/product_view_model.dart';
import 'package:bookingoffice/components/style.dart';
import 'package:bookingoffice/models/testimoni_model.dart';
import 'package:flutter/material.dart';

class TestimoniView extends StatefulWidget {
  const TestimoniView({ Key? key }) : super(key: key);

  @override
  State<TestimoniView> createState() => _TestimoniViewState();
}

class _TestimoniViewState extends State<TestimoniView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 265,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: 230,
        ),
        itemCount: testimoniModelData.length, 
        itemBuilder: (context, index){
          final testimoni = testimoniModelData[index];
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Image.asset(
                        "${testimoni.img}",
                        height: 140,
                        width: 240,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3, 
                        (index) => Icon(
                          Icons.star,
                          color: ColorStyles.ratingColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "${testimoni.title}",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(
                        fontSize: 14, 
                        fontFamily: 'avenir',
                        color: ColorStyles.textColor, 
                        fontWeight: FontWeight.w800),
                      // overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 3),
                    Text(
                      '\-${"${testimoni.username}"}-',
                      style: TextStyle(
                        fontSize: 14,
                        color: ColorStyles.textColor, 
                        fontFamily: 'avenir')
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