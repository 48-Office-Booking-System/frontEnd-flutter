import 'package:map_koba/components/color.dart';
import 'package:map_koba/view_model/review_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReviewWidget extends StatefulWidget {
  const ReviewWidget({Key? key}) : super(key: key);

  @override
  State<ReviewWidget> createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> {
  @override
  Widget body(RiviewViewModel viewModel) {
    // if (viewModel.state == ProductViewState.loading) {
    //   return Center(child: CircularProgressIndicator());
    // }else if (viewModel.state == ProductViewState.loaded) {
    return SizedBox(
      height: 245,
      width: 800,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: viewModel.list.length,
        itemBuilder: (context, index) {
          final reviewdetail = viewModel.list[index];
          return Row(
            children: [
              const Icon(
                Icons.person,
                size: 50,
              ),
              const SizedBox(
                width: 3,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reviewdetail.name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontFamily: 'avenir',
                      color: ColorStyles.blackColor,
                      fontWeight: FontWeight.w800,
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
                    reviewdetail.title,
                    style: const TextStyle(
                      fontSize: 15,
                      fontFamily: 'avenir',
                      color: ColorStyles.blackColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ],
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
    RiviewViewModel viewModel = Provider.of<RiviewViewModel>(context);
    return body(viewModel);
  }
}
