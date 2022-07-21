import 'dart:io';

import 'package:map_koba/components/color.dart';
import 'package:map_koba/view_model/office_view_model.dart';
import 'package:map_koba/widgets/filters_booking_widget.dart';
import 'package:map_koba/widgets/office_widget.dart';
import 'package:map_koba/widgets/testimoni_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../model/office_model.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.deepPurple),
              ),
              onPressed: () {
                openwhatsapp("+62895401010022");
              },
              child: Text("Hubungi Admin Via WhatsApp"))
        ],
      ),
    ));
  }

  openwhatsapp(String nohp) async {
    var whatsapp = nohp;
    var whatsappURl_android = "whatsapp://send?phone=" +
        whatsapp +
        "&text= Halo Koba-min^^ ~ \nSaya mau booking (nama build) \nUntuk tanggal (...) jam (...) \nsampai dengan \nTanggal (...) jam (...) \nApakah tersedia ? \nSpill persyaratannya dong min🤗 \nTerima Kasih.  ";
    var whatappURL_ios =
        "https://wa.me/$whatsapp?text=${Uri.parse("Halo , saya mau tanya ...")}";
    if (Platform.isIOS) {
      // for iOS phone only
      if (await canLaunch(whatappURL_ios)) {
        await launch(whatappURL_ios, forceSafariVC: false);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
      }
    } else {
      // android , web
      if (await canLaunch(whatsappURl_android)) {
        await launch(whatsappURl_android);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
      }
    }
  }
}
