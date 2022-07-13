// import 'package:bookingofficeapp/providers/product_view_model.dart';
import 'package:bookingoffice/components/style.dart';
import 'package:bookingoffice/providers/testimoni_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestimoniView extends StatefulWidget {
  const TestimoniView({ Key? key }) : super(key: key);

  @override
  State<TestimoniView> createState() => _TestimoniViewState();
}

class _TestimoniViewState extends State<TestimoniView> {
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
  Widget body(TestimoniViewModel viewModel) {
    // if (viewModel.state == ProductViewState.loading) {
    //   return Center(child: CircularProgressIndicator());
    // }else if (viewModel.state == ProductViewState.loaded) {
      return SizedBox(
        height: 265,
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisExtent: 230,
          ),
          // onPageChanged: (index) {
          //   setState(() {
          //     currentIndex = index % viewModel.list.length;
          //   });
          // },
          itemCount: viewModel.list.length,
          itemBuilder: (context, index){
            final testimoni = viewModel.list[index];
            return InkWell(
              onTap: () {
              // Navigator.of(context).push(
              // MaterialPageRoute(builder: (_) => DetailPage(buildingModel: building,)));
              },
              child: Card(
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
    TestimoniViewModel viewModel = Provider.of<TestimoniViewModel>(context);
    return body(viewModel);
  }
}