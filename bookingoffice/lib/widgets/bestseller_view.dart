import 'package:bookingoffice/components/style.dart';
import 'package:bookingoffice/models/office_model.dart';
import 'package:bookingoffice/pages/detail_page.dart';
import 'package:flutter/material.dart';

class BestSellerView extends StatefulWidget {
  const BestSellerView({ Key? key }) : super(key: key);

  @override
  State<BestSellerView> createState() => _BestSellerViewState();
}

class _BestSellerViewState extends State<BestSellerView> {
  int currentIndex = 0;
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: GridView.builder(
        // controller: controller,
        // onPageChanged: (index) {
        //   setState(() {
        //     currentIndex = index % buildingModelData.length;
        //   });
        // },
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: 340,
        ),
        itemCount: buildingModelData.length, 
        itemBuilder: (context, index){
          final building = buildingModelData[index];
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => DetailPage(buildingModel: building,)));
            },
            child: Card(
              color: ColorStyles.cardbestseller,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          child: Image.asset(
                            "${building.img}",
                            height: 130,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Text(
                                "${building.name}",
                                maxLines: 2,
                                style:
                                TextStyle(
                                  fontSize: 16, 
                                  fontFamily: 'avenir',
                                  color: ColorStyles.primaryColor, 
                                  fontWeight: FontWeight.w800),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 3),
                              Row(
                                children: List.generate(
                                  5, 
                                  (index) => Icon(
                                    Icons.star,
                                    color: ColorStyles.ratingColor,
                                  ),
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                "${building.category}",
                                maxLines: 2,
                                style:
                                TextStyle(
                                  fontFamily: 'avenir',
                                  color: ColorStyles.primaryColor, 
                                  fontWeight: FontWeight.w800),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 3),
                              Text(
                                '\Rp ${"${building.price}"}/jam',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: ColorStyles.primaryColor, 
                                  fontFamily: 'avenir')
                              ),
                              SizedBox(height: 3),
                              Center(
                                child: ElevatedButton(
                                  onPressed: (){}, 
                                  child: const Text("Pesan",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: ColorStyles.textColor, 
                                    fontFamily: 'avenir')
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(80, 35), primary: ColorStyles.buttonPesanColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),   
                    const SizedBox(height: 3),
                    SafeArea(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (var i = 0; i < buildingModelData.length; i++)
                              buildIndicator(currentIndex == i)
                          ],
                        ),
                      ),
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

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 14 : 12,
        width: isSelected ? 14 : 12,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.grey : Colors.white,
        ),
      ),
    );
  }
}