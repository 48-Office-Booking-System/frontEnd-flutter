import 'package:map_koba/components/color.dart';
import 'package:map_koba/pages/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var primaryTextColor;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ColorStyles.searchColor,
          centerTitle: true,
          leading: BackButton(color: ColorStyles.textColor)),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.account_circle),
                    color: ColorStyles.textColor,
                    iconSize: 100,
                  ),
                ),
                Positioned(
                  bottom: 8,
                  right: 131,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 4,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      color: ColorStyles.textColor,
                    ),
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Card(
              margin: const EdgeInsets.all(0),
              child: ListTile(
                title: Text(
                  'Nama',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: ColorStyles.textColor,
                  ),
                ),
                leading: Icon(
                  Icons.person,
                  color: ColorStyles.textColor,
                  size: 30,
                ),
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Card(
              margin: const EdgeInsets.all(0),
              child: ListTile(
                title: Text(
                  'Email',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: ColorStyles.textColor,
                  ),
                ),
                leading: Icon(
                  Icons.mail,
                  color: ColorStyles.textColor,
                  size: 30,
                ),
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Card(
              margin: const EdgeInsets.all(0),
              child: ListTile(
                title: Text(
                  'Password',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: ColorStyles.textColor,
                  ),
                ),
                leading: Icon(
                  Icons.lock,
                  color: ColorStyles.textColor,
                  size: 30,
                ),
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Card(
              margin: const EdgeInsets.all(0),
              child: ListTile(
                title: Text(
                  'Phone',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: ColorStyles.textColor,
                  ),
                ),
                leading: Icon(
                  Icons.call,
                  color: ColorStyles.textColor,
                  size: 30,
                ),
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Card(
              margin: const EdgeInsets.all(0),
              child: ListTile(
                title: Text(
                  'Review',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: ColorStyles.textColor,
                  ),
                ),
                leading: Icon(
                  Icons.rate_review,
                  color: ColorStyles.textColor,
                  size: 30,
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: ColorStyles.textColor,
                  size: 30,
                ),
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Card(
              margin: const EdgeInsets.all(0),
              child: ListTile(
                title: Text(
                  'Tata cara pembayaran',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: ColorStyles.textColor,
                  ),
                ),
                leading: Icon(
                  Icons.payments,
                  color: ColorStyles.textColor,
                  size: 30,
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: ColorStyles.textColor,
                  size: 30,
                ),
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Card(
              margin: const EdgeInsets.all(0),
              child: ListTile(
                title: Text(
                  'Riwayat Booking',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: ColorStyles.textColor,
                  ),
                ),
                leading: Icon(
                  Icons.today,
                  color: ColorStyles.textColor,
                  size: 30,
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: ColorStyles.textColor,
                  size: 30,
                ),
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => EditProfilePage()));
                      },
                      label: const Text(
                        'Edit',
                        style: TextStyle(
                            fontSize: 16,
                            color: ColorStyles.primaryColor,
                            fontFamily: 'avenir'),
                      ),
                      icon: const Icon(Icons.settings),
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(130, 32),
                          primary: ColorStyles.textColor),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text(
                        'Keluar',
                        style: TextStyle(
                            fontSize: 16,
                            color: ColorStyles.primaryColor,
                            fontFamily: 'avenir'),
                      ),
                      icon: const Icon(Icons.logout_outlined),
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(130, 32),
                          primary: ColorStyles.textColor),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
