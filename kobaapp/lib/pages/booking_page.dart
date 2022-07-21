import 'package:map_koba/components/color.dart';
import 'package:map_koba/widgets/booking_widget.dart';
import 'package:map_koba/widgets/filters_booking_widget.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  static const routeName = '/booking_page';

  const BookingPage({Key? key}) : super(key: key);

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Booking'),
      //   centerTitle: true,
      //   backgroundColor: ColorStyles.secondaryColor,
      // ),
      backgroundColor: ColorStyles.primaryColor,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => FiltersBookingWidget()));
                },
                label: const Text('Filters'),
                icon: const Icon(Icons.filter_list),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(400, 50),
                    primary: ColorStyles.buttonFilterColor),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            BookingView(),
          ]),
    );
  }
}
