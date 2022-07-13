import 'package:bookingoffice/components/style.dart';
import 'package:bookingoffice/providers/office_view_model.dart';
import 'package:bookingoffice/widgets/filters_booking_widget.dart';
import 'package:bookingoffice/widgets/office_widget.dart';
import 'package:bookingoffice/widgets/testimoni_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({ Key? key }) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
        centerTitle: true,
        backgroundColor: ColorStyles.secondaryColor,
      ),
      backgroundColor: ColorStyles.primaryColor,
    );
  }
}