import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walletapp/colors/colors.dart';
import 'package:walletapp/screens/add_money_screen.dart';
import 'package:walletapp/screens/gift_card_screen.dart';
import 'package:walletapp/screens/profile_screen.dart';
import 'package:walletapp/screens/saved_cards_screen.dart';
import 'package:walletapp/screens/scanner_screen.dart';
import 'package:walletapp/screens/settings_screen.dart';
import 'package:walletapp/screens/statistics_screen.dart';
import 'package:walletapp/screens/wallet_transactions_screen.dart';
import 'package:walletapp/widgets/side_menu_text_widget.dart';
class WalletHomeScreen extends StatefulWidget {
  WalletHomeState createState() => WalletHomeState();
}

class WalletHomeState extends State<WalletHomeScreen> {
  List<String> expenseName = <String>[
    'My Food',
    'Movie Ticket',
    'Coffee Shop',
    'Cab Service'
  ];
  List<String> dayName = <String>['TODAY', 'Yesterday'];
  List<String> expenseImage = <String>[
    'images/my_food.png',
    'images/movie_ticket_icon.png',
    'images/coffee_icon.png',
    'images/car_service_icon.png'
  ];
  List<String> transImage = <String>[
    'images/credit_icon.png',
    'images/debit_icon.png',
    'images/credit_icon.png',
    'images/debit_icon.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Container(
          width: 210.3,
          child: Drawer(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [MyColor.gradientStart, MyColor.gradientEnd],
                    tileMode: TileMode.repeated,
                  ),
                ),
                child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        /*   Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => ProfileScreen()));*/
                      },
                      child: Container(
                        height: 200.0,
                        color: MyColor.gradientStart,
                        child: DrawerHeader(
                          padding: EdgeInsets.zero,
                          child: Container(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 15, top: 20),
                                    child: Row(
                                      children: <Widget>[
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(context,
                                                CupertinoPageRoute(
                                                    builder: (context) =>
                                                        ProfileScreen()));
                                          },
                                          child: Container(
                                            height: 60,
                                            width: 46.3,
                                            child: Stack(
                                              children: <Widget>[
                                                Container(
                                                    height: 46.3,
                                                    width: 46.3,
                                                    margin: EdgeInsets.only(
                                                        top: 10),
                                                    decoration: new BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        image: new DecorationImage(
                                                            fit: BoxFit.fill,
                                                            image: new AssetImage(
                                                                "images/men_dp.png")))),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 5, bottom: 3),
                                                  child: Align(
                                                    alignment: Alignment
                                                        .bottomRight,
                                                    child: Container(
                                                      width: 10,
                                                      height: 10,
                                                      decoration: new BoxDecoration(
                                                        color: Colors.green,
                                                        shape: BoxShape.circle,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.only(
                                          left: 15, top: 15, right: 15),
                                      child: Text(
                                        'Alax Angelica',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'GilroyBold',
                                            color: Colors.white),
                                      )),
                                ],
                              )),
                        ),
                      ),
                    ),


                    Stack(
                      children: <Widget>[

                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Image.asset(
                              'images/rounded_side.png', height: 40),

                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 20, top: 12),
                            child: SideMenuTextWidget('Home')
                        ),


                      ],


                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: ListTile(
                        title: SideMenuTextWidget('Add money'),
                        onTap: () {
                          Navigator.of(context).push(_createRoute());
                        },
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: ListTile(
                        title: SideMenuTextWidget('Save cards'),
                        onTap: () {
                        Navigator.push(context, CupertinoPageRoute(builder: (context)=>SavedCardScreen()));


                        },
                      ),

                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: ListTile(
                        title: SideMenuTextWidget('Transaction History'),
                        onTap: () {
                          Navigator.push(context, CupertinoPageRoute(builder: (
                              context) => WalletTransactionsScreen()));
                        },
                      ),

                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: ListTile(
                        title: SideMenuTextWidget('Gift card'),
                        onTap: () {
                          Navigator.push(context, CupertinoPageRoute(builder: (
                              context) => GiftCardScreen()));
                        },
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: ListTile(
                        title: SideMenuTextWidget('Scanner'),
                        onTap: () {
                          Navigator.push(context, CupertinoPageRoute(builder: (
                              context) => ScannerScreen()));
                        },
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: ListTile(
                        title: SideMenuTextWidget('Statistics'),
                        onTap: () {
                         Navigator.push(context, CupertinoPageRoute(builder: (context)=>StatisticsScreen()));
                        },
                      ),

                    ),


                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: ListTile(
                        title: SideMenuTextWidget('Settings'),
                        onTap: () {

                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>SettingsScreen()));


                        },
                      ),

                    ),


                    SizedBox(height: 15,),


                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Legal',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: MyColor.whiteOpacity,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'GilroySemiBold'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                              'V4.564.0001',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: MyColor.whiteOpacity,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'GilroySemiBold'),
                            ),
                          ),
                        ],
                      ),


                    ),


                  ],
                ),
              )),
        ),
        body: (Builder(
          builder: (ctx) =>
              SafeArea(
                  child: Stack(
                    children: <Widget>[
                      ListView(
                        children: <Widget>[
                          Container(
                            height: 258,
                            child: Stack(
                              children: <Widget>[
                                Image.asset(
                                  'images/wallet_cover.png',
                                  height: 258,
                                  fit: BoxFit.fill,
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                        height: 60,
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .center,
                                          children: <Widget>[
                                            Expanded(
                                              child: GestureDetector(
                                                onTap: () {
                                                  Scaffold.of(ctx).openDrawer();
                                                },
                                                child: Container(
                                                    padding: EdgeInsets.only(
                                                        left: 0),
                                                    child: Image.asset(
                                                        'images/hamberg.png',
                                                        width: 20,
                                                        height: 15)),
                                              ),
                                              flex: 1,
                                            ),
                                            Expanded(
                                              child: Center(
                                                  child: Container(
                                                    child: Text(
                                                      'Home',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                          decoration: TextDecoration
                                                              .none,
                                                          fontFamily: 'IBMPlexSansMedium'),
                                                    ),
                                                  )),
                                              flex: 5,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  height: 34.3,
                                                  width: 34.3,
                                                  margin: EdgeInsets.only(
                                                      right: 10),
                                                  decoration: new BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      image: new DecorationImage(
                                                          fit: BoxFit.fill,
                                                          image: new AssetImage(
                                                              "images/men_dp.png")))),
                                              flex: 1,
                                            )
                                          ],
                                        )),
                                    Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.only(
                                          left: 32, top: 10),
                                      child: Text(
                                        'Good Morning , \n Jackson',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'IBMPlexSansMedium',
                                            fontSize: 14),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.only(
                                          left: 32, top: 70),
                                      child: Text(
                                        'CURRENT BALANCE',
                                        style: TextStyle(
                                            color: MyColor.balanceLabelFont,
                                            fontFamily: 'IBMPlexSans',
                                            fontSize: 9),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.only(left: 36),
                                      child: Text(
                                        '₱4521.00',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'IBMPlexSansSemiBold',
                                            fontSize: 30),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),


                          ListView.builder(
                              itemCount: 2,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context,
                                  int position) {
                                return Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        dayName[position],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'IBMPlexSansSemiBold',
                                            fontSize: 16),
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    ListView.builder(
                                        itemCount: 4,
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemBuilder:
                                            (BuildContext context,
                                            int position) {
                                          return Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, right: 10, bottom: 7),
                                            child: Card(
                                              elevation: 8,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(5),
                                              ),
                                              child: Container(
                                                height: 53,
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: <Widget>[
                                                    Expanded(
                                                      child: Container(
                                                        child: Row(
                                                          children: <Widget>[
                                                            SizedBox(width: 10),
                                                            Image.asset(
                                                              expenseImage[position],
                                                              height: 30.7,
                                                              width: 30.7,
                                                            ),
                                                            Column(
                                                              children: <
                                                                  Widget>[
                                                                SizedBox(
                                                                    height: 10),
                                                                Container(
                                                                  width: 208,
                                                                  padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                      left: 10),
                                                                  child: Text(
                                                                    expenseName[
                                                                    position],
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontFamily:
                                                                        'IBMPlexSansSemiBold',
                                                                        fontSize: 14),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: 208,
                                                                  padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                      left: 10),
                                                                  child: Text(
                                                                    'Jan 27, 08:15 AM',
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: TextStyle(
                                                                        color: MyColor
                                                                            .timeFontColor,
                                                                        fontFamily:
                                                                        'IBMPlexSans',
                                                                        fontSize: 10),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      flex: 3,
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .only(
                                                              left: 15),
                                                          child: Column(
                                                            children: <Widget>[
                                                              SizedBox(
                                                                  height: 7),
                                                              Row(
                                                                children: <
                                                                    Widget>[
                                                                  Image.asset(
                                                                      transImage[
                                                                      position],
                                                                      height: 15,
                                                                      width: 15),
                                                                  SizedBox(
                                                                      width: 2),
                                                                  Text(
                                                                    '₱300',
                                                                    style: TextStyle(
                                                                        color: MyColor
                                                                            .walletThemeFontColor,
                                                                        fontFamily:
                                                                        'IBMPlexSansSemiBold',
                                                                        fontSize: 17),
                                                                  ),
                                                                ],
                                                              ),
                                                              Text(
                                                                '(\$4521)',
                                                                style: TextStyle(
                                                                    color: MyColor
                                                                        .walletSubColor,
                                                                    fontFamily:
                                                                    'IBMPlexSans',
                                                                    fontSize: 10),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      flex: 1,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        })
                                  ],
                                );
                              }),
                        ],
                      ),
                      Positioned(
                          right: 7,
                          bottom: 15,
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/addmoney');
                                  },
                                  child: Container(
                                    width: 90,
                                    height: 90,
                                    child: Image.asset(
                                        'images/floating_icon.png'),
                                  )))),
                    ],
                  )


              ),
        )));
  }

  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            AddMoneyScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(0.0, 1.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween = Tween(begin: begin, end: end);
          var curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: curve,
          );

          return SlideTransition(
            position: tween.animate(curvedAnimation),
            child: child,
          );
        });
  }


}
