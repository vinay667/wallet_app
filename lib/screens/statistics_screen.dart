import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walletapp/colors/colors.dart';
import 'package:walletapp/widgets/curve_toolbar.dart';
import 'package:walletapp/widgets/horizontal_dashed_line.dart';

class StatisticsScreen extends StatefulWidget {
  StatisticsState createState() => StatisticsState();
}

class StatisticsState extends State<StatisticsScreen> {
  double incomeBoxOpacity=1.0;
  double expenseBoxOpacity=0.0;
  String headerText='INCOME';
  Color graphColor=MyColor.topGreen;
  List<String> monthsList = <String>[
    'JAN',
    'FEB',
    'MAR',
    'APR',
    'MAY',
    'JUN',
    'JUL',
    'AUG',
    'SEP',
    'OCT',
    'NOV',
    'DEC'
  ];
  List<double> monthsBarHeight = <double>[
    200,
    150,
    220,
    140,
    180,
    160,
    205,
    100,
    195,
    145,
    200,
    150,
  ];
  String selectedItem = 'Month';
  String _value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.rectanColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CurveTooblarWidget('Statistics', context),
            SizedBox(height: 15),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('March',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'IBMPlexSansSemiBold',
                                  fontSize: 16,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('2020',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.4),
                                  fontFamily: 'IBMPlexSans',
                                  fontSize: 11,
                                )),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: DropdownButton<String>(
                          items: [
                            DropdownMenuItem<String>(
                              child: Text('January'),
                              value: 'one',
                            ),
                            DropdownMenuItem<String>(
                              child: Text('February'),
                              value: 'two',
                            ),
                            DropdownMenuItem<String>(
                              child: Text('March'),
                              value: 'three',
                            ),
                            DropdownMenuItem<String>(
                              child: Text('April'),
                              value: 'four',
                            ),
                            DropdownMenuItem<String>(
                              child: Text('May'),
                              value: 'five',
                            ),
                            DropdownMenuItem<String>(
                              child: Text('June'),
                              value: 'six',
                            ),
                            DropdownMenuItem<String>(
                              child: Text('July'),
                              value: 'seven',
                            ),
                            DropdownMenuItem<String>(
                              child: Text('August'),
                              value: 'eight',
                            ),
                            DropdownMenuItem<String>(
                              child: Text('September'),
                              value: 'nine',
                            ),
                            DropdownMenuItem<String>(
                              child: Text('October'),
                              value: 'ten',
                            ),
                            DropdownMenuItem<String>(
                              child: Text('November'),
                              value: 'elevan',
                            ),
                            DropdownMenuItem<String>(
                              child: Text('December'),
                              value: 'twelve',
                            ),
                          ],
                          onChanged: (String value) {
                            setState(() {
                              _value = value;
                            });
                          },
                          hint: Text(
                            'Month',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'IBMPlexSansSemiBold',
                                fontSize: 15),
                          ),
                          value: _value,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: <Widget>[
                     InkWell(
                       onTap:(){
                         setState(() {
                           incomeBoxOpacity=1.0;
                           expenseBoxOpacity=0.0;
                           headerText='INCOME';
                           graphColor=MyColor.topGreen;


                         });

            },
                       child:  Container(
                         height: 64.3,
                         width: 102,
                         margin: EdgeInsets.only(left: 15),
                         decoration: BoxDecoration(
                             color: MyColor.greenColorLight,
                             borderRadius: BorderRadius.circular(6.7)),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             AnimatedOpacity(
                               opacity: incomeBoxOpacity,
                               duration: Duration(seconds: 1),
                               child: Container(
                                   height: 4,
                                   decoration: BoxDecoration(
                                       color: MyColor.topGreen,
                                       borderRadius: BorderRadius.only(
                                           topLeft: Radius.circular(6.7),
                                           topRight: Radius.circular(6.7)))),


                             ),
                             Padding(
                               padding: EdgeInsets.only(left: 10, top: 10),
                               child: Text(
                                 'INCOME',
                                 style: TextStyle(
                                     color: MyColor.darkGreen,
                                     fontFamily: 'IBMPlexSansSemiBold',
                                     fontSize: 14),
                               ),
                             ),
                             Padding(
                               padding: EdgeInsets.only(left: 10),
                               child: Text(
                                 '\$150.00',
                                 maxLines: 1,
                                 overflow: TextOverflow.ellipsis,
                                 style: TextStyle(
                                     color: MyColor.softBlack,
                                     fontFamily: 'IBMPlexSansSemiBold',
                                     fontSize: 18),
                               ),
                             ),
                           ],
                         ),
                       ),


                     ),
                      InkWell(
                        onTap: (){

                          setState(() {

                            incomeBoxOpacity=0.0;
                            expenseBoxOpacity=1.0;
                            headerText='EXPENSE';
                            graphColor=MyColor.topRed;


                          });

                        },
                        child: Container(
                          height: 64.3,
                          width: 102,
                          margin: EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                              color: MyColor.redColorLight,
                              borderRadius: BorderRadius.circular(6.7)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              AnimatedOpacity(
                                opacity: expenseBoxOpacity,
                                duration: Duration(seconds: 1),
                                child:Container(
                                    height: 4,
                                    decoration: BoxDecoration(
                                        color: MyColor.topRed,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(6.7),
                                            topRight: Radius.circular(6.7)))),



                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 10),
                                child: Text(
                                  'EXPENSES',
                                  style: TextStyle(
                                      color: MyColor.darkRed,
                                      fontFamily: 'IBMPlexSansSemiBold',
                                      fontSize: 14),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  '\$150.00',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: MyColor.softBlack,
                                      fontFamily: 'IBMPlexSansSemiBold',
                                      fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ),


                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    height: 260,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: monthsList.length,
                        itemBuilder: (BuildContext context, int position) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                height: monthsBarHeight[position],
                                width: 17,
                                decoration: BoxDecoration(
                                    color: graphColor,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(7.7),
                                        topRight: Radius.circular(7.7))),
                              ),
                              Container(
                                width: 70,
                                child: HorizontalDash(
                                    height: 1,
                                    color: Colors.black.withOpacity(0.2)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 5),
                                child: Text(
                                  monthsList[position],
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                      fontFamily: 'IBMPlexSansSemiBold',
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: Text(
                            headerText,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'IBMPlexSansSemiBold',
                                fontSize: 15),
                          ),
                        ),
                        SizedBox(height: 10),
                        ListView.builder(
                            itemCount: 5,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int position) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, bottom: 5),
                                child: Card(
                                  elevation: 4,
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
                                                  'images/my_food.png',
                                                  height: 30.7,
                                                  width: 30.7,
                                                ),
                                                Column(
                                                  children: <Widget>[
                                                    SizedBox(height: 10),
                                                    Container(
                                                      width: 208,
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Text(
                                                        'Food',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontFamily:
                                                                'IBMPlexSansSemiBold',
                                                            fontSize: 14),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 208,
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Text(
                                                        '70%',
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
                                              child: Text(
                                                '₱300',
                                                style: TextStyle(
                                                    color: MyColor
                                                        .walletThemeFontColor,
                                                    fontFamily:
                                                        'IBMPlexSansSemiBold',
                                                    fontSize: 17),
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
                        SizedBox(height: 20),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
