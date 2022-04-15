import 'package:flutter/material.dart';
import 'package:materi_contact/model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:materi_contact/stores/contact.dart' show Contact;
import 'package:provider/provider.dart';
import 'package:materi_contact/stores/contact.dart'as contact_stores;
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SharedPreferences nama;
  String nomorHp = '';

  String _name ='';
  String _phoneNumber ='';
  final formKey=GlobalKey<FormState>();
  final _nameController =TextEditingController();
  final _phoneNumberController = TextEditingController();
  
  late SharedPreferences _nama;
  late bool _nomorHp;

  bool get isValidForm => true;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkNama();
  }
  void checkNama()async{
    nama= await SharedPreferences.getInstance();
    nomorHp = (nama.getBool('kontak')??true) as String;

    if(nomorHp == false){
      Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(
          builder: (context)=> const HomePage(),
          ), 
          (route) => false);
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final contactProvider=Provider.of<contact_stores.Contact>(context);
    return Scaffold(
      appBar:AppBar(
        title:const Text('Contact'),
      ),
      body:Form(key:formKey,
      child: Column(
        children: [
          const Text ('Create New Contact'),
          const SizedBox(height : 20),
          TextFormField(
            controller: _nameController ,
            onChanged: (String value){
              _name=value;
            },
          ),
           TextFormField(
            controller: _phoneNumberController ,
            onChanged: (String value){
              _phoneNumber=value;
            },
          ),
          ElevatedButton(
            onPressed: (){
              nama.setBool('nama',true);
              nama.remove('nomorHp');
              
              if (isValidForm){
                nama.setBool('nama', false);
                nama.setString('nomorHp', _phoneNumber);
              }
              // return;

            formKey.currentState!.save();
            contactProvider.add(GetContact(
              name: _name,
              phoneNumber: _phoneNumber,
              ),
              );
            }, 
          child: const Text('Add Contact'),
          ),
          Expanded(
          child:ListView.builder(
            itemCount: contactProvider.contacts.length,
            itemBuilder: (context,index){
            return ListTile(
              title:Text(contactProvider.contacts[index].name),
              subtitle: Text(contactProvider.contacts[index].phoneNumber),
              );

          },
          ),
          ),
        ],
      )),
      
    );
  }
}