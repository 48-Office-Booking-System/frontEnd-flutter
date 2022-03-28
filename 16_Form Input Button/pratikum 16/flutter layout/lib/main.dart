import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar : AppBar(
        title: const Text('Flutter Layout'),
        centerTitle: true,
        ),
        body : const GridViewWidget(),//RowWidget(),//ColumnWidget(), /*CenterWidget(), *sebelumnya const ContainerWidget*/
      ),
    );
  }
}
// class ContainerWidget extends StatelessWidget {
//   const ContainerWidget({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin : const EdgeInsets.all(10),
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         border : Border.all(),
//       ),
//       child : const Text('HELLO!')
//     );
//   }
// }  //=> vid bagian fluttercontainer

// class CenterWidget extends StatelessWidget {
//   const CenterWidget({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('HELLO'),
//     );
//   }
// } =>vid bagian container 

// class ColumnWidget extends StatelessWidget {
//   const ColumnWidget({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           margin : const EdgeInsets.all(10),
//           padding : const EdgeInsets.all(10),
//           child: const Text('H'),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//         ),
//         Container(
//           margin : const EdgeInsets.all(10),
//           padding : const EdgeInsets.all(10),
//           child: const Text('E'),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//         ),
//         Container(
//           margin : const EdgeInsets.all(10),
//           padding : const EdgeInsets.all(10),
//           child: const Text('L'),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//         ),
//         Container(
//           margin : const EdgeInsets.all(10),
//           padding : const EdgeInsets.all(10),
//           child: const Text('L'),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//         ),
//         Container(
//           margin : const EdgeInsets.all(10),
//           padding : const EdgeInsets.all(10),
//           child: const Text('O'),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//         ),
//       ],
//     );
//   }
// } => colom widget 


// class RowWidget extends StatelessWidget {
//   const RowWidget({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//           margin : const EdgeInsets.all(10),
//           padding : const EdgeInsets.all(10),
//           child: const Text('H'),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//         ),
//         Container(
//           margin : const EdgeInsets.all(10),
//           padding : const EdgeInsets.all(10),
//           child: const Text('E'),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//         ),
//         Container(
//           margin : const EdgeInsets.all(10),
//           padding : const EdgeInsets.all(10),
//           child: const Text('L'),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//         ),
//         Container(
//           margin : const EdgeInsets.all(10),
//           padding : const EdgeInsets.all(10),
//           child: const Text('L'),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//         ),
//         Container(
//           margin : const EdgeInsets.all(10),
//           padding : const EdgeInsets.all(10),
//           child: const Text('O'),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//         ),
//       ],
//     );
//   }
// } => VID ROW


// class ListViewWidget extends StatelessWidget {
//   const ListViewWidget({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Container(
//           margin : const EdgeInsets.all(10),
//           padding : const EdgeInsets.all(10),
//           child: const Text('HELLO!'),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//         ),
//          Container(
//           margin : const EdgeInsets.all(10),
//           padding : const EdgeInsets.all(10),
//           child: const Text('HELLO!'),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//         ),
//    
//          Container(
//           margin : const EdgeInsets.all(10),
//           padding : const EdgeInsets.all(10),
//           child: const Text('HELLO!'),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//         ),

//       ],
//     );
//   }
// } =>Vid ListView

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2 ,
      children: [
        Container(
          margin : const EdgeInsets.all(10),
          padding : const EdgeInsets.all(10),
          child: const Text('H'),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
        ),
         Container(
          margin : const EdgeInsets.all(10),
          padding : const EdgeInsets.all(10),
          child: const Text('E'),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
        ),
         Container(
          margin : const EdgeInsets.all(10),
          padding : const EdgeInsets.all(10),
          child: const Text('HELLO!'),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
        ),
         Container(
          margin : const EdgeInsets.all(10),
          padding : const EdgeInsets.all(10),
          child: const Text('HELLO!'),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
        ),
      ],
      
    );
  }
}