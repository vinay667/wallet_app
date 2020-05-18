import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walletapp/colors/colors.dart';
import 'package:walletapp/widgets/toolbar_widget.dart';

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
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        CustomToolbar('Home'),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 32, top: 10),
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
                          padding: EdgeInsets.only(left: 32, top: 70),
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
              Expanded(
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int position) {
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
                                  (BuildContext context, int position) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, bottom: 7),
                                  child: Card(
                                    elevation: 8,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Container(
                                      height: 53,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                                    children: <Widget>[
                                                      SizedBox(height: 10),
                                                      Container(
                                                        width: 208,
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10),
                                                        child: Text(
                                                          expenseName[position],
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontFamily:
                                                                  'IBMPlexSansSemiBold',
                                                              fontSize: 14),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 208,
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10),
                                                        child: Text(
                                                          'Jan 27, 08:15 AM',
                                                          textAlign:
                                                              TextAlign.left,
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
                                                padding:
                                                    EdgeInsets.only(left: 15),
                                                child: Column(
                                                  children: <Widget>[
                                                    SizedBox(height: 7),
                                                    Row(
                                                      children: <Widget>[
                                                        Image.asset(
                                                            transImage[
                                                                position],
                                                            height: 15,
                                                            width: 15),
                                                        SizedBox(width: 2),
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
              ),
            ],
          ),
          Positioned(
              right: 7,
              bottom: 15,
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      width: 90,
                      height: 90,
                      child: Stack(
                        children: <Widget>[
                          Image.asset('images/floating_icon.png'),
                        ],
                      )))),
        ],
      )),
    );
  }
}
