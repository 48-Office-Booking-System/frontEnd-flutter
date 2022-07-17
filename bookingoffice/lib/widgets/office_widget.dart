import 'package:map_koba/components/color.dart';
import 'package:map_koba/pages/detail_page.dart';
import 'package:map_koba/view_model/office_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OfficeView extends StatefulWidget {
  const OfficeView({Key? key}) : super(key: key);

  @override
  State<OfficeView> createState() => _OfficeViewState();
}

class _OfficeViewState extends State<OfficeView> {
  // int currentIndex = 0;

  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance?.addPostFrameCallback((timeStamp) async {
  //     var viewModel = Provider.of<ProductViewModel>(context, listen: false);
  //     await viewModel.fetchProducts();
  //   });
  // }

  @override
  Widget body(OfficeViewModel viewModel) {
    // if (viewModel.state == ProductViewState.loading) {
    //   return Center(child: CircularProgressIndicator());
    // }else if (viewModel.state == ProductViewState.loaded) {
    return SizedBox(
      height: 235,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: 340,
        ),
        // onPageChanged: (index) {
        //   setState(() {
        //     currentIndex = index % viewModel.list.length;
        //   });
        // },
        itemCount: viewModel.list.length,
        itemBuilder: (context, index) {
          final building = viewModel.list[index];
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => DetailPage(
                        buildingModel: building,
                      )));
            },
            child: Card(
              color: ColorStyles.cardbestseller,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            SizedBox(
                              child: Image.asset(
                                "${building.img}",
                                height: 130,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              child: IconButton(
                                alignment: Alignment.bottomRight,
                                iconSize: 25,
                                color: ColorStyles.primaryColor,
                                onPressed: () {},
                                icon: Icon(Icons.favorite),
                              ),
                            ),
                          ],
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
                                style: TextStyle(
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
                                "${building.capacity} orang",
                                maxLines: 2,
                                style: TextStyle(
                                    fontFamily: 'avenir',
                                    color: ColorStyles.primaryColor,
                                    fontWeight: FontWeight.w800),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 3),
                              Text('Rp ${"${building.price}"}/jam',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: ColorStyles.primaryColor,
                                      fontFamily: 'avenir')),
                              SizedBox(height: 3),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text("Pesan",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: ColorStyles.textColor,
                                          fontFamily: 'avenir')),
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(80, 35),
                                      primary: ColorStyles.buttonPesanColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
    // }else if (viewModel.state == ProductViewState.error) {
    //   return Center(child: Text('Gagal mengambil data.'));
    // }else {
    //   return Container();
    // }
  }

  // Widget buildIndicator(bool isSelected) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 1),
  //     child: Container(
  //       height: isSelected ? 14 : 12,
  //       width: isSelected ? 14 : 12,
  //       decoration: BoxDecoration(
  //         shape: BoxShape.circle,
  //         color: isSelected ? Colors.grey : Colors.white,
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    OfficeViewModel viewModel = Provider.of<OfficeViewModel>(context);
    return body(viewModel);
  }
}
