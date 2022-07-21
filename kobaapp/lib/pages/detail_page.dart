import 'package:flutter/material.dart';
import 'package:map_koba/components/result_state.dart';
import 'package:map_koba/model/list_model.dart';
import 'package:map_koba/services/remote_services.dart';
import 'package:map_koba/view_model/detail_view_model.dart';
import 'package:map_koba/widgets/detail_widget.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/detail_page';

  final Datum listData;

  const DetailPage({Key? key, required this.listData, required int id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DetailViewModel provider;

    return ChangeNotifierProvider<DetailViewModel>(
      create: (_) => DetailViewModel(remoteServices: RemoteServices(), id: listData.id!),
      child: Scaffold(
        appBar: AppBar(
          title: Text(listData.name!),
        ),
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
                      listData: listData,
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
