
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Post',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Create Post'),
            leading: GestureDetector(
              onTap: () {/* Write listener code here */},
              child: const Icon(
                Icons.menu, // add custom icons also
              ),
            ),
          ),
          body: Container(
            padding: const EdgeInsets.all(30),
            child: ListView(
              children: [
                const FormUploadFile(),
                const FormTanggal(),
                const FormWarna(),
                const FormCaption(),
                Container(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 110,
                      right: 110,
                    ),
                    child:
                        ElevatedButton(onPressed: () {}, child: const Text('Simpan')))
              ],
            ),
          )),
    );
  }
}

class FormUploadFile extends StatelessWidget {
  const FormUploadFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // fungsi untuk menampilkan file yg di pilih
    void _openFile(PlatformFile file) {
      // OpenFile.open(file.path);
    }

    // fungsi untuk memilih file
    void _pickFile() async {
      final result = await FilePicker.platform.pickFiles();
      if (result == null) return;
      final file = result.files.first;
      _openFile(file);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // form pilih file
        const Text(
          'Cover',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
            width: double.infinity, // <-- match_parent
            child: ElevatedButton(
              child: const Text('Pilih File'),
              onPressed: () {
                _pickFile();
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey)),
            )),
      ],
    );
  }
}

class FormTanggal extends StatefulWidget {
  const FormTanggal({Key? key}) : super(key: key);

  @override
  State<FormTanggal> createState() => _FormTanggalState();
}

class _FormTanggalState extends State<FormTanggal> {
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // form pilih file
        const Text(
          'Date',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
            width: double.infinity, // <-- match_parent
            child: OutlinedButton(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  DateFormat('dd-MM-yyyy').format(_dueDate),
                  textAlign: TextAlign.left,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
              onPressed: () async {
                final selectDate = await showDatePicker(
                    context: context,
                    initialDate: currentDate,
                    firstDate: DateTime(1990),
                    lastDate: DateTime(currentDate.year + 5));
                setState(() {
                  if (selectDate != null) {
                    _dueDate = selectDate;
                  }
                });
              },
            )),
      ],
    );
  }
}

class FormWarna extends StatefulWidget {
  const FormWarna({Key? key}) : super(key: key);

  @override
  State<FormWarna> createState() => _FormWarnaState();
}

class _FormWarnaState extends State<FormWarna> {
  Color _currentColor = Colors.orange;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // form pilih file
        const Text(
          'Color Theme',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
            width: double.infinity, // <-- match_parent
            child: OutlinedButton(
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Pick a color",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Pick a color'),
                        content: BlockPicker(
                          pickerColor: _currentColor,
                          onColorChanged: (color) {
                            setState(() {
                              _currentColor = color;
                            });
                          }
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Save')),
                        ],
                      );
                    });
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(_currentColor)),
            )),
      ],
    );
  }
}

class FormCaption extends StatelessWidget {
  const FormCaption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // form pilih file
        const Text(
          'Caption',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(
            width: double.infinity, // <-- match_parent
              child: const TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 10,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            )),
      ],
    );
  }
}