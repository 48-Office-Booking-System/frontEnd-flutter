// import 'package:bookingoffice/components/style.dart';
// import 'package:bookingoffice/models/office_model.dart';
import 'package:bookingoffice/components/style.dart';
import 'package:bookingoffice/pages/detail_page.dart';
import 'package:bookingoffice/providers/office_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookingView extends StatefulWidget {
  const BookingView({ Key? key }) : super(key: key);

  @override
  State<BookingView> createState() => _BookingViewState();
}

class _BookingViewState extends State<BookingView> {

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
        height: 540,
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 220,
          ),
          itemCount: viewModel.list.length,
          itemBuilder: (context, index){
            final building = viewModel.list[index];
            return InkWell(
              onTap: () {
              Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => DetailPage(buildingModel: building,)));
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
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          SizedBox(
                            child: Image.asset(
                              "${building.img}",
                              height: 160,
                              width: 260,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            child: IconButton(
                              alignment: Alignment.bottomRight,
                              iconSize: 25,
                              color: ColorStyles.primaryColor,
                              onPressed: (){}, 
                              icon: Icon(Icons.favorite),
                            ),
                          ),
                        ],
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
    // }else if (viewModel.state == ProductViewState.error) {
    //   return Center(child: Text('Gagal mengambil data.'));
    // }else {
    //   return Container();
    // }
  }

  @override
  Widget build(BuildContext context) {
    OfficeViewModel viewModel = Provider.of<OfficeViewModel>(context);
    return body(viewModel);
  }
}

