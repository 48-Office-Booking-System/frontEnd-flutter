import 'package:bookingoffice/components/style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const route = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorStyles.secondaryColor,
        actions: [
          IconButton(
            onPressed: (){
            }, 
            icon: Icon(Icons.account_circle),
          )
        ],
        title: SizedBox(
          height: 35,
          child: Card(
            margin: const EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.all(11),
                    ),
                  ),
                ),  
              ],
            ),
          ),
        ),
      ),
      backgroundColor: ColorStyles.primaryColor,
    );
  }
}
//     );
//   }
// }