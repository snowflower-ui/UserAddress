import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SetAddress extends StatefulWidget {
  const SetAddress({Key? key}) : super(key: key);

  @override
  State<SetAddress> createState() => _SetAddressState();
}

class _SetAddressState extends State<SetAddress> {
  final _formkey = GlobalKey<FormState>();

  var phoneNumber = '';
  var roomNumber = '';
  var street = '';
  var barangay = '';
  var city = '';
  var province = '';
  var moreDescription = 'None';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff27ae60),
        title: const Text(
          'Edit Address',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        actions: <Widget>[
          Container(
              padding: const EdgeInsets.only(right: 20),
              child: const Icon(Icons.edit)),
        ],
      ),
      body: Form(
        key: _formkey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Divider(),
                Container(
                  padding: const EdgeInsets.fromLTRB(19.0, 0.0, 19.0, 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //Show phone number here.
                      //container for floor
                      Container(
                        margin:
                            const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            labelText: 'Floor/Unit/Room #',
                            hintStyle: const TextStyle(fontSize: 14),
                          ),
                          onChanged: (value) {
                            roomNumber = value;
                          },
                          validator: (value) {
                            return null;
                          },
                        ),
                      ),
                      //Container for street
                      Container(
                        margin:
                            const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            labelText: 'Street',
                            hintStyle: const TextStyle(fontSize: 14),
                          ),
                          onChanged: (value) {
                            street = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      //Container for barangay
                      Container(
                        margin:
                            const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            labelText: 'Barangay',
                            hintStyle: const TextStyle(fontSize: 14),
                          ),
                          onChanged: (value) {
                            barangay = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      //Container for city
                      Container(
                        margin:
                            const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            labelText: 'City',
                            hintStyle: const TextStyle(fontSize: 14),
                          ),
                          onChanged: (value) {
                            city = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      //Container for province
                      Container(
                        margin:
                            const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            labelText: 'Province',
                            hintStyle: const TextStyle(fontSize: 14),
                          ),
                          onChanged: (value) {
                            province = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      //Container for more description
                      Container(
                        margin: const EdgeInsets.fromLTRB(8.0, 11.0, 8.0, 10.0),
                        child: TextFormField(
                          keyboardType: TextInputType.multiline,
                          textInputAction: TextInputAction.newline,
                          minLines: 1,
                          maxLines: 5,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            hintText: 'Add Description \n\n\n',
                            hintStyle: const TextStyle(fontSize: 14),
                          ),
                          onChanged: (value) {
                            moreDescription = value;
                          },
                          validator: (value) {
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                //A free space container
                Container(
                  padding: const EdgeInsets.all(57.0),
                ),
                //A container with one border and text button
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  padding: const EdgeInsetsDirectional.fromSTEB(40, 8, 40, 8),
                  decoration: const BoxDecoration(
                      border: Border(
                    top: BorderSide(color: Colors.black38),
                  )),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF27AE60),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      ),
                    ),
                    child: const Text(
                      'Save and Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    //here the code for updating in thew database
                    onPressed: () {
                      final address = FirebaseFirestore.instance
                          .collection('address')
                          .doc('my-userID');

                      if (_formkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Completely Updated'),
                          ),
                        );
                        address
                            .update({
                              'phoneNumber': phoneNumber,
                              'roomNumber': roomNumber,
                              'street': street,
                              'barangay': barangay,
                              'city': city,
                              'province': province,
                              'moreDescription': moreDescription
                            })
                            .then((value) => print('User Address Added'))
                            .catchError((error) =>
                                print('Failed to add user address: $error'));
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
