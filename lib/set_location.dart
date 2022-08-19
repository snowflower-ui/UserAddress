import 'package:demo/user_address.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:demo/providers/address_provider.dart';

class SetAddress extends StatefulWidget {
  const SetAddress({Key? key}) : super(key: key);

  @override
  State<SetAddress> createState() => _SetAddressState();
}

class _SetAddressState extends State<SetAddress> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    context.read<Address>().readAddress();
    TextEditingController roomNumberController =
        TextEditingController(text: context.read<Address>().roomNumber);
    TextEditingController streetController =
        TextEditingController(text: context.read<Address>().street);
    TextEditingController barangayController =
        TextEditingController(text: context.read<Address>().barangay);
    TextEditingController cityController =
        TextEditingController(text: context.read<Address>().city);
    TextEditingController provinceController =
        TextEditingController(text: context.read<Address>().province);
    TextEditingController moreDescriptionController =
        TextEditingController(text: context.read<Address>().moreDesccription);
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
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Form(
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
                        //container for floor
                        Container( 
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                          child: TextFormField(
                            controller: roomNumberController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              labelText: 'Floor/Unit?Room#',
                              hintStyle: const TextStyle(fontSize: 14),
                            ),
                            validator: (value) {
                              return null;
                            },
                          ),
                        ),
                        //Container for street
                        Container(
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                          child: TextFormField(
                            controller: streetController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              labelText: 'Street',
                              hintStyle: const TextStyle(fontSize: 14),
                            ),
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
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                          child: TextFormField(
                            controller: barangayController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              labelText: 'Barangay',
                              hintStyle: const TextStyle(fontSize: 14),
                            ),
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
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                          child: TextFormField(
                            controller: cityController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              labelText: 'City',
                              hintStyle: const TextStyle(fontSize: 14),
                            ),
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
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                          child: TextFormField(
                            controller: provinceController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              labelText: 'Province',
                              hintStyle: const TextStyle(fontSize: 14),
                            ),
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
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 11.0, 8.0, 10.0),
                          child: TextFormField(
                            controller: moreDescriptionController,
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
                            validator: (value) {
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  //A free space container
                  // Container(
                  //   padding: const EdgeInsets.all(57.0),
                  // ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Completely Updated'),
                            ),
                          );
                          context.read<Address>().updateAddress(
                              roomNumberController.text,
                              streetController.text,
                              barangayController.text,
                              cityController.text,
                              provinceController.text,
                              moreDescriptionController.text);
                          //Need to change route
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const UserAddress()),
                          );
                        }
        },
        label: const Text('Edit Address'),
        icon: const Icon(Icons.edit),
        backgroundColor: const Color(0xff27ae60),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
