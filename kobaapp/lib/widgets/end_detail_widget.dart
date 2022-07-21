import 'package:flutter/material.dart';
import 'package:map_koba/components/color.dart';
import 'package:map_koba/model/detail_model.dart';
import 'package:map_koba/pages/chat_page.dart';
import 'package:map_koba/view_model/detail_view_model.dart';
import 'package:map_koba/view_model/office_view_model.dart';
import 'package:provider/provider.dart';

class EndDetailWidget extends StatefulWidget {
  final Data detailData;
  final DetailViewModel providers;

  const EndDetailWidget({Key? key, required this.detailData, required this.providers}) : super(key: key);

  @override
  State<EndDetailWidget> createState() => _EndDetailWidgetState();
}

class _EndDetailWidgetState extends State<EndDetailWidget> {
  @override
  Widget body(OfficeViewModel viewModel) { {
    return SizedBox(
      height: 80,
        child: Card(
          color: ColorStyles.secondaryColor,
          elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)),
          child: Container(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Rp.${widget.detailData.price.toString()} x 1",
                      // widget.buildingModel.price.toString(),
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'avenir',
                          color: ColorStyles.primaryColor,
                          fontWeight: FontWeight.w800),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        children: [
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (_) => ChatPage()));
                              },
                              child: const Text("Pesan",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: ColorStyles.searchColor,
                                      fontFamily: 'avenir')),
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(200, 35),
                                  primary: ColorStyles.textColor),
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
    }
  }

  @override
  Widget build(BuildContext context) {
    OfficeViewModel viewModel = Provider.of<OfficeViewModel>(context);
    return body(viewModel);
  }
}