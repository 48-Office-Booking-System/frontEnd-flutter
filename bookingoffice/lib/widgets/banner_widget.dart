import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({ Key? key }) : super(key: key);

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  int currentIndex = 0;
  final PageController controller = PageController();
  // final GedungModel gedungModel = gedungData[index];

  List<String> images = [
    "assets/images/benner1.png",
    "assets/images/benner2.png",
    "assets/images/benner3.png",
  ];
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80), 
          ),
          height: 125,
          width: double.infinity,
          child: PageView.builder(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index % images.length;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                // padding: const EdgeInsets.symmetric(horizontal: 12),
                child: SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: Image.asset(
                    images[index % images.length],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < images.length; i++)
                  buildIndicator(currentIndex == i)
              ],
            ),
          ),
        ),    
      ],
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