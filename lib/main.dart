import 'package:electricity_app/topchart.dart';
import 'package:flutter/material.dart';

import 'bottomChart.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.white,
      ),
      // home: MyHomePage(title: 'Electricity'),
      routes: {
        // '/': (context) => _defaultHome,
        '/': (context) => MyHomePage(title: 'Electricity'),
        LineChartSample2.routeName: (context) => LineChartSample2(),
        LineChartSample3.routeName: (context) => LineChartSample3(),
        
        
        }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  padding: EdgeInsets.only(top: mediaQuery.size.height * 0.06),
                  height: mediaQuery.size.height * 0.23,
                  decoration: BoxDecoration(color: theme.primaryColor),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 25,
                              child: Icon(
                                Icons.attach_money,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Quick Pay',
                              style: TextStyle(
                                  color: theme.accentColor,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 25,
                              child: Icon(Icons.person_add),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Add User',
                                style: TextStyle(
                                    color: theme.accentColor,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 25,
                              child: Icon(Icons.account_balance_wallet),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Wallet',
                                style: TextStyle(
                                    color: theme.accentColor,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: mediaQuery.size.height * 0.20,
                right: 0.0,
                left: 0.0,
                child: Container(
                  height: mediaQuery.size.height * 0.76,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: theme.accentColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Service No: 5431684',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.keyboard_arrow_down)
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(
                            'SYAHMI SHAFAWI',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Container(
                                  height: mediaQuery.size.height * 0.21,
                                  width: mediaQuery.size.width * 0.35,
                                  child: Card(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    elevation: 4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                'Pending',
                                                style: TextStyle(
                                                    color: Colors.orange,
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Spacer(),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                'Last Month',
                                                style: TextStyle(fontSize: 10),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: mediaQuery.size.height * 0.02,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text('73',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text('Units',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12,
                                                      color: Colors.grey)),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: mediaQuery.size.height * 0.02,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text('740',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text('Amount',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12,
                                                      color: Colors.grey)),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 4,
                                  right: 4,
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: theme.primaryColor,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(4),
                                          bottomRight: Radius.circular(10)),
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 25,
                                      color: theme.accentColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            // Container(
                            //   height: mediaQuery.size.height * 0.21,
                            //   width: mediaQuery.size.width * 0.52,
                            //   child: Card(
                            //     color: Colors.white,
                            //     shape: RoundedRectangleBorder(
                            //         borderRadius: BorderRadius.circular(10)),
                            //     elevation: 4,
                            //   ),
                            // ),
                            Stack(
                              children: <Widget>[
                                Container(
                                  height: mediaQuery.size.height * 0.21,
                                  width: mediaQuery.size.width * 0.52,
                                  child: Card(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    elevation: 4,
                                    child: Container(
                                      // color: Colors.red,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          // Text('imhere'),
                                          
                                          
                                          Row(

                                          
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[


                                        
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                // child: Text(
                                                //   'Pending',
                                                //   style: TextStyle(
                                                //       color: Colors.orange,
                                                //       fontSize: 10,
                                                //       fontWeight:
                                                //           FontWeight.bold),
                                                // ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'Current Month',
                                                  style: TextStyle(fontSize: 10),
                                                ),
                                              )
                                            ],
                                          ),
                                          // SizedBox(
                                          //   height: mediaQuery.size.height * 0.02,
                                          // ),
                                        
                                     
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10),
                                                child: Text('105',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 22)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10),
                                                child: Text('Units',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                        color: Colors.grey)),
                                              )
                                            ],
                                          ),

                                          
                                          SizedBox(
                                            height: mediaQuery.size.height * 0.02,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10),
                                                child: Text('970',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 22)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10),
                                                child: Text('Amount',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                        color: Colors.grey)),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                            
                                Positioned(
                                  bottom: 4,
                                  right: 4,
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: theme.primaryColor,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(4),
                                          bottomRight: Radius.circular(10)),
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 25,
                                      color: theme.accentColor,
                                    ),
                                  ),
                                ),
                                    Positioned(
                                  // top: 0.0,
                                  top:  MediaQuery.of(context).size.height*0.05,
                                  right:  MediaQuery.of(context).size.width*0.04,
                                  child:    Container(
                                    width: MediaQuery.of(context).size.width*0.3,
                                    height: MediaQuery.of(context).size.height*0.1,
                                    child: LineChartSample2()),
                                ),
                              ],
                            ),
                          ],
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(left: 10.0 , bottom: 10.0
                        ),
                          child: Text('Usage Rate',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold), ),),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: LineChartSample3(),
                          ),

                      
                       
                    
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
