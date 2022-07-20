import 'package:flutter/material.dart';
import 'package:kobaspace/components/style.dart';
import 'package:kobaspace/pages/profile_page.dart';
import 'package:kobaspace/widgets/banner_widget.dart';
import 'package:kobaspace/widgets/office_widget.dart';
import 'package:kobaspace/widgets/testimoni_widget.dart';

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
        // title: Text("Booking"),
        backgroundColor: ColorStyles.primaryColor,
        // centerTitle: true,
        actions: [
          IconButton(
            color: ColorStyles.textColor,
            iconSize: 40,
            onPressed: (){
            }, 
            icon: Icon(Icons.shopping_cart)
          ),
          IconButton(
            color: ColorStyles.textColor,
            iconSize: 40,
            onPressed: (){
              Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => ProfilePage()));
            }, 
            icon: Icon(Icons.account_circle),
          ),
        ],
        title: SizedBox(
          height: 35,
          child: Card(
            color: ColorStyles.searchColor,
            margin: const EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        color: ColorStyles.searchiconColor,
                        onPressed: (){}, 
                        icon: Icon(Icons.search),
                      ),
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
      // drawer: DrawerPage(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            BannerWidget(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Bestseller',
                style: 
                TextStyle(
                  fontSize: 16, 
                  fontFamily: 'Work Sans',
                  color: ColorStyles.textColor, 
                  fontWeight: FontWeight.w800),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            OfficeView(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Testimoni',
                style: 
                TextStyle(
                  fontSize: 16, 
                  fontFamily: 'Work Sans',
                  color: ColorStyles.textColor, 
                  fontWeight: FontWeight.w800),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            TestimoniView(),
          ],
        ),
      ),
    );
  }
}