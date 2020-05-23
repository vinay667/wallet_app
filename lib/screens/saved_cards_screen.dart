import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walletapp/colors/colors.dart';
import 'package:walletapp/widgets/curve_toolbar.dart';

class SavedCardScreen extends StatefulWidget {
  SavedCardsState createState() => SavedCardsState();
}

class SavedCardsState extends State<SavedCardScreen> {
  List<String> expenseName = <String>[
    'My Food',
    'Movie Ticket',
    'Coffee Shop',
    'Cab Service',
    'My Food',
    'Movie Ticket',
  ];
  List<String> expenseImage = <String>[
    'images/my_food.png',
    'images/movie_ticket_icon.png',
    'images/coffee_icon.png',
    'images/car_service_icon.png',
    'images/my_food.png',
    'images/movie_ticket_icon.png'
  ];
  List<String> transImage = <String>[
    'images/credit_icon.png',
    'images/debit_icon.png',
    'images/credit_icon.png',
    'images/debit_icon.png',
    'images/credit_icon.png',
    'images/debit_icon.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CurveTooblarWidget('Save Cards',context),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    height: 160.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset('images/credit_card.png', width: 250),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.7),
                            color: MyColor.conColor,
                          ),
                          height: 150.3,
                          width: 58.3,
                          child: Center(
                            child: Image.asset('images/add_card.png',
                                width: 19, height: 19),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black54, width: 0.2),
                        color: Colors.white,
                      ),
                      height: 54,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 12),
                                child: Text(
                                  'AVAILABLE BALANCE',
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black.withOpacity(0.6),
                                      fontFamily: 'IBMPlexSans'),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 3),
                                child: Text(
                                  'Check',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: MyColor.greenConColor,
                                      decoration: TextDecoration.underline,
                                      fontFamily: 'IBMPlexSansSemiBold'),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Image.asset('images/right_circle.png'),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'TRANSACTIONS',
                      style: TextStyle(
                          fontFamily: 'IBMPlexSansSemiBold',
                          color: Colors.black,
                          fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 7),
                  ListView.builder(
                      itemCount: 6,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int position) {
                        return Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 5),
                          child: Card(
                            elevation: 3,
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
                                                    EdgeInsets.only(left: 10),
                                                child: Text(
                                                  expenseName[position],
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontFamily:
                                                          'IBMPlexSansSemiBold',
                                                      fontSize: 14),
                                                ),
                                              ),
                                              Container(
                                                width: 208,
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: Text(
                                                  'Jan 27, 08:15 AM',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color:
                                                          MyColor.timeFontColor,
                                                      fontFamily: 'IBMPlexSans',
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
                                        padding: EdgeInsets.only(left: 15),
                                        child: Column(
                                          children: <Widget>[
                                            SizedBox(height: 7),
                                            Row(
                                              children: <Widget>[
                                                Image.asset(
                                                    transImage[position],
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
                                                  color: MyColor.walletSubColor,
                                                  fontFamily: 'IBMPlexSans',
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
                      }),
                  SizedBox(height: 10),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
