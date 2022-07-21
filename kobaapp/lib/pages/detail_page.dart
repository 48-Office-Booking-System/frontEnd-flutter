import 'package:flutter/material.dart';
import 'package:map_koba/components/color.dart';
import 'package:map_koba/components/result_state.dart';
import 'package:map_koba/model/list_model.dart';
import 'package:map_koba/pages/chat_page.dart';
import 'package:map_koba/services/remote_services.dart';
import 'package:map_koba/view_model/detail_view_model.dart';
import 'package:map_koba/widgets/detail_widget.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/detail_page';

  final int id;

  const DetailPage({required this.id});

  @override
  Widget build(BuildContext context) {
    late DetailViewModel provider;

    return ChangeNotifierProvider(
      create: (_) => DetailViewModel(remoteServices: RemoteServices(), id: id),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorStyles.searchColor,
          centerTitle: true,
          title: Text(
            "Detail",
            style: const TextStyle(
              color: ColorStyles.blackColor,
          ),
        ),
        actions: [
            IconButton(
              icon: const Icon(Icons.chat),
              color: ColorStyles.textColor,
              iconSize: 27,
              onPressed: () {
                Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => ChatPage()));
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (_) => openwhatsapp(widget.buildingModel.nohp)));
              },
            ),
          ],
          leading: const BackButton(color: ColorStyles.textColor)),
        body: SingleChildScrollView(
          child: Consumer<DetailViewModel>(
            builder: (context, state, _) {
              provider = state;
              if (state.state == ResultState.loading) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 2.4,
                      ),
                      const CircularProgressIndicator(
                        color: Colors.blue,
                      ),
                    ],
                  ),
                );
              } else if (state.state == ResultState.hasData) {
                final detailData = state.result;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DataWidget(
                      detailData: detailData,
                      providers: provider,
                    ),
                  ],
                );
              } else if (state.state == ResultState.noData) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 2.5,
                      ),
                      Text(
                        state.message,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              } else if (state.state == ResultState.error) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "No Connection!",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Center(
                        child: Text(
                          "Please check your connection or try again later.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 2.5,
                      ),
                      Text(
                        "Error",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      )

    );
  }
}
