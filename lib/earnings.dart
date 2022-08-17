import 'package:demo/nav_bar.dart';
import 'package:flutter/material.dart';

class Earnings extends StatefulWidget {
  const Earnings({Key? key}) : super(key: key);

  @override
  State<Earnings> createState() => _EarningsState();
}

class _EarningsState extends State<Earnings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Already had a widget
      appBar: AppBar(
        toolbarOpacity: 1,
        centerTitle: true,
        title: const Text(
          'EARNINGS',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff27ae60),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        // add more IconButton
        bottom: PreferredSize(
            preferredSize:
                const Size.fromHeight(26.0), // here the desired height
            child: Center(
              child: Container(
                height: 20.0,
                width: 300.0,
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(28.0, 28.0, 8.0, 20.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 10.0),
                    height: 60,
                    child: const Image(
                        image: AssetImage('assets/images/scrapcoin_logo.png'),
                        fit: BoxFit.fill),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      //Needs real data
                      Text(
                        '320',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Your total earnings in Scrapcycle'),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 150,
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                      bottom: 10,
                      child: Card(
                        elevation: 10,
                        color: const Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: 285,
                          height: 105,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: Card(
                        elevation: 10,
                        color: const Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: 305,
                          height: 105,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      child: Card(
                        elevation: 10,
                        color: const Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: 327,
                          height: 105,
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xff219653),
                                        width: 1.5,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(11.0),
                                          bottomRight: Radius.circular(11.0)),
                                    ),
                                    child: const Text(
                                      'Scrapcoins for your Nov 22 Scraps',
                                      //Needs real date
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xff219653),
                                      ),
                                    ),
                                  ),
                                  Container(),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    //color: Colors.deepOrange,
                                    padding: const EdgeInsets.only(
                                        left: 30.0, right: 3.0, bottom: 8.0),
                                    height: 35,
                                    child: const Image(
                                        image: AssetImage(
                                            'assets/images/scrapcoin_logo.png'),
                                        fit: BoxFit.fill),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          padding: const EdgeInsets.only(
                                              top: 6.0, bottom: 3.0),
                                          child: const Text(
                                            '34.56',
                                            //Needs real data
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Color(0xff4F4F4F),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 56.5,
                                          height: 21.5,
                                          //Need an action for this button
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5.0,
                                                      horizontal: 5.0),
                                              backgroundColor:
                                                  const Color(0xFF27AE60),
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(16.0)),
                                              ),
                                            ),
                                            onPressed: () {}, //here
                                            child: const Text(
                                              'Claim',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 9,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 25.0),
                                    child: const Text(
                                      'Thank for your environmental \nefforts, Scrapper!',
                                      style: TextStyle(
                                        fontSize: 11.5,
                                        color: Color(0xff4F4F4F),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 12.0, bottom: 12.0, left: 24.0, right: 24.0),
              child: const Text(
                'All Transaction',
                style: TextStyle(
                  color: Color(0xff333333),
                  fontSize: 15,
                ),
              ),
            ),
            //Change this to list view builder
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //This is one whole widget
                Container(
                  padding: const EdgeInsets.all(2.0),
                  height: 120,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        right: 43,
                        child: Card(
                          elevation: 10,
                          color: const Color(0xffffffff),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(2.0),
                            width: 300,
                            height: 100,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Container(
                                  width: 38,
                                  //color: Colors.amber,
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: 14.0, bottom: 3.0),
                                      width: 180,
                                      child: const Text(
                                        'Earnings for',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                    //This needs real data from database
                                    Container(
                                      padding: const EdgeInsets.all(2.0),
                                      width: 180,
                                      child: Wrap(
                                        runSpacing: 6.0,
                                        spacing: 6.0,
                                        children: <Widget>[
                                          Container(
                                            padding: const EdgeInsets.all(2.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xff219653),
                                                width: 1.5,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(16.0)),
                                            ),
                                            child: const Text(
                                              'Plastic bottle',
                                              //Needs real data
                                              style: TextStyle(
                                                fontSize: 8.0,
                                                color: Color(0xff27ae60),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(2.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xff219653),
                                                width: 1.5,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(16.0)),
                                            ),
                                            child: const Text(
                                              'Plastic cellophane',
                                              //Needs real data
                                              style: TextStyle(
                                                fontSize: 8.0,
                                                color: Color(0xff27ae60),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(2.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xff219653),
                                                width: 1.5,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(16.0)),
                                            ),
                                            child: const Text(
                                              'Plastic cups',
                                              //Needs real data
                                              style: TextStyle(
                                                fontSize: 8.0,
                                                color: Color(0xff27ae60),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      width: 180,
                                      child: const Text(
                                        'Nov 4, 2022',
                                        //Needs real data
                                        style: TextStyle(
                                          fontSize: 8,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: const Text(
                                    'P120.00',
                                    //Needs real data
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 17,
                        bottom: 40,
                        top: 30,
                        child: Container(
                          width: 50,
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.green,
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Colors.yellowAccent, Colors.green],
                            ),
                          ),
                          child: const Image(
                            image: AssetImage('assets/images/mask_group.png'),
                            //fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //This will be change to list view
                Container(
                  padding: const EdgeInsets.all(2.0),
                  height: 120,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        right: 43,
                        child: Card(
                          elevation: 10,
                          color: const Color(0xffffffff),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(2.0),
                            width: 300,
                            height: 100,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Container(
                                  width: 38,
                                  //color: Colors.amber,
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: 14.0, bottom: 3.0),
                                      width: 180,
                                      child: const Text(
                                        'Earnings for',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                    //This needs real data from database
                                    Container(
                                      padding: const EdgeInsets.all(2.0),
                                      width: 180,
                                      child: Wrap(
                                        runSpacing: 6.0,
                                        spacing: 6.0,
                                        children: <Widget>[
                                          Container(
                                            padding: const EdgeInsets.all(2.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xff219653),
                                                width: 1.5,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(16.0)),
                                            ),
                                            child: const Text(
                                              'Plastic bottle',
                                              style: TextStyle(
                                                fontSize: 8.0,
                                                color: Color(0xff27ae60),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(2.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xff219653),
                                                width: 1.5,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(16.0)),
                                            ),
                                            child: const Text(
                                              'Plastic cellophane',
                                              style: TextStyle(
                                                fontSize: 8.0,
                                                color: Color(0xff27ae60),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      width: 180,
                                      child: const Text(
                                        'Nov 4, 2022',
                                        style: TextStyle(
                                          fontSize: 8,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: const Text(
                                    'P120.00',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 17,
                        bottom: 40,
                        top: 30,
                        child: Container(
                          width: 50,
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.green,
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Colors.yellowAccent, Colors.green],
                            ),
                          ),
                          child: const Image(
                            image: AssetImage('assets/images/mask_group.png'),
                            //fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(2.0),
                  height: 120,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        right: 43,
                        child: Card(
                          elevation: 10,
                          color: const Color(0xffffffff),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(2.0),
                            width: 300,
                            height: 100,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Container(
                                  width: 38,
                                  //color: Colors.amber,
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: 14.0, bottom: 3.0),
                                      width: 180,
                                      child: const Text(
                                        'Earnings for',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                    //This needs real data from database
                                    Container(
                                      padding: const EdgeInsets.all(2.0),
                                      width: 180,
                                      child: Wrap(
                                        runSpacing: 6.0,
                                        spacing: 6.0,
                                        children: <Widget>[
                                          Container(
                                            padding: const EdgeInsets.all(2.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xff219653),
                                                width: 1.5,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(16.0)),
                                            ),
                                            child: const Text(
                                              'Plastic bottle',
                                              style: TextStyle(
                                                fontSize: 8.0,
                                                color: Color(0xff27ae60),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(2.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xff219653),
                                                width: 1.5,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(16.0)),
                                            ),
                                            child: const Text(
                                              'Plastic cellophane',
                                              style: TextStyle(
                                                fontSize: 8.0,
                                                color: Color(0xff27ae60),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(2.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xff219653),
                                                width: 1.5,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(16.0)),
                                            ),
                                            child: const Text(
                                              'Plastic cups',
                                              style: TextStyle(
                                                fontSize: 8.0,
                                                color: Color(0xff27ae60),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      width: 180,
                                      child: const Text(
                                        'Nov 4, 2022',
                                        style: TextStyle(
                                          fontSize: 8,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: const Text(
                                    'P120.00',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 17,
                        bottom: 40,
                        top: 30,
                        child: Container(
                          width: 50,
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.green,
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Colors.yellowAccent, Colors.green],
                            ),
                          ),
                          child: const Image(
                            image: AssetImage('assets/images/mask_group.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
