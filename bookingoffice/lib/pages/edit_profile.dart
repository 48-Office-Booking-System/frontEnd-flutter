import 'package:bookingoffice/components/style.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({ Key? key }) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorStyles.searchColor,
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            color: ColorStyles.blackColor,
          ),
        ),
        centerTitle: true,
        leading: BackButton(color: ColorStyles.textColor)
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nama',
                  border: UnderlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.clear,
                      color: ColorStyles.blackColor,
                      size: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: UnderlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.clear,
                      color: ColorStyles.blackColor,
                      size: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password Lama',
                  border: UnderlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.clear,
                      color: ColorStyles.blackColor,
                      size: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password Baru',
                  border: UnderlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.clear,
                      color: ColorStyles.blackColor,
                      size: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'No. Telepon',
                  border: UnderlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.clear,
                      color: ColorStyles.blackColor,
                      size: 20,
                    ),
                  ),
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
                      ElevatedButton(
                        onPressed: (){}, 
                        child: const Text("Simpan",
                        style: TextStyle(
                          fontSize: 16,
                          color: ColorStyles.primaryColor, 
                          fontFamily: 'avenir')
                        ),
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(130, 32), primary: ColorStyles.textColor),
                      ),
                    ],
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