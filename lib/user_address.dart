import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/set_location.dart';
import 'package:flutter/material.dart';
import 'package:demo/providers/address_provider.dart';
import 'package:provider/provider.dart';

class UserAddress extends StatefulWidget {
  const UserAddress({Key? key}) : super(key: key);

  @override
  State<UserAddress> createState() => _UserAddressState();
}

class _UserAddressState extends State<UserAddress> {
  @override
  Widget build(BuildContext context) {
    context.read<Address>().readAddress();

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(context.watch<Address>().street),
            Text(context.watch<Address>().barangay),
            Text('hello'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SetAddress()),
          );
        },
        label: const Text('Edit Address'),
        icon: const Icon(Icons.edit),
        backgroundColor: const Color(0xff27ae60),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

// class UserAddress extends StatefulWidget {
//   const UserAddress({Key? key}) : super(key: key);

//   @override
//   State<UserAddress> createState() => _UserAddressState();
// }

// class _UserAddressState extends State<UserAddress> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xff27ae60),
//         // title: const Text(
//         //   'User Address',
//         //   style: TextStyle(
//         //     fontWeight: FontWeight.bold,
//         //     fontSize: 16,
//         //   ),
//         //),
//       ),
//       body: FutureBuilder<Address?>(
//         future: context.read<Address>().readAddress(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             final address = snapshot.data;
//             return address == null
//                 ? const Center(child: Text('No User Address'))
//                 : buildAddress(address);
//           } else {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => const SetAddress()),
//           );
//         },
//         label: const Text('Edit Address'),
//         icon: const Icon(Icons.edit),
//         backgroundColor: const Color(0xff27ae60),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }

//   Widget buildAddress(Address address) => ListTile(
//         title: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               padding: const EdgeInsets.all(15.0),
//               margin: const EdgeInsets.only(
//                   top: 40.0, bottom: 10.0, left: 7.0, right: 7.0),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30.0),
//                 //border: Border.all(color: Colors.black54),
//                 color: Colors.green[50],
//               ),
//               child: Text(
//                 'Full Address: \n${address.roomNumber} ${address.street} ${address.barangay} ${address.city} ${address.province}',
//                 style: const TextStyle(
//                   fontSize: 13,
//                   //color: Color.fromARGB(255, 14, 185, 85),
//                 ),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.only(
//                   top: 30.0, bottom: 10.0, left: 10.0, right: 20.0),
//               child: Text(
//                 'More Info: ${address.moreDescription}',
//                 style: const TextStyle(
//                   fontSize: 13,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );

//   // Future<Address?> readAddress() async {
//   //   final docAddress =
//   //       FirebaseFirestore.instance.collection('address').doc('my-userID');
//   //   final snapshot = await docAddress.get();
//   //   if (snapshot.exists) {
//   //     print(snapshot.data());
//   //     return Address.fromJson(snapshot.data()!);
//   //   }
//   // }
// }
