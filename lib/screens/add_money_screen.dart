import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walletapp/colors/colors.dart';
import 'package:walletapp/widgets/curve_toolbar.dart';
import 'package:walletapp/widgets/texts_widget.dart';
import 'package:walletapp/widgets/transaction_list_widget.dart';

class AddMoneyScreen extends StatefulWidget {
  AddMoneyState createState() => AddMoneyState();
}

class AddMoneyState extends State<AddMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CurveTooblarWidget('Add Money', context),
            SizedBox(height: 15),
            Expanded(
                child: ListView(
              children: <Widget>[
                TextWidgetAddMoney(),
                TextWidgetPrice(),
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 10, right: 15),
                  child: Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 160.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          SizedBox(height: 13),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Add Money in Wallet',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'IBMPlexSansSemiBold',
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 5),
                            child: Text(
                              'It’s quick, save and secure ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'IBMPlexSans',
                                  color: MyColor.timeFontColor),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 15, right: 15, top: 12),
                            child: Container(
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontSize: 12,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'IBMPlexSansMedium'),
                                initialValue: '₱',
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(
                                      left: 10.0, bottom: 15),
                                  border: InputBorder.none,
                                  hintText: 'Enter amount',
                                  hintStyle: TextStyle(
                                      color: Colors.black12,
                                      fontSize: 12,
                                      decoration: TextDecoration.none,
                                      fontFamily: 'IBMPlexSans'),
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.3),
                                border: Border.all(
                                    color: Colors.black54, width: 0.2),
                                color: Colors.white,
                              ),
                              height: 33,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemCount: 3,
                                scrollDirection: Axis.horizontal,
                                itemBuilder:
                                    (BuildContext context, int position) {
                                  return TransactionWidget();
                                }),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 37,
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Stack(
                      children: <Widget>[
                        Image.asset('images/rounded_rect_blue.png', height: 37),
                        Center(
                          child: Text(
                            'ADD MONEY',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'IBMPlexSansSemiBold',
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Recent Activity',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'IBMPlexSansMedium',
                        color: Colors.black),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.only(top: 12, bottom: 0),
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int position) {
                            return Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 5),
                                      child: Image.asset(
                                        'images/currency.png',
                                        height: 31,
                                        width: 31,
                                      ),
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Container(
                                          width: 200,
                                          padding:
                                              EdgeInsets.only(left: 10, top: 5),
                                          child: Text(
                                            '₱1000',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily:
                                                    'IBMPlexSansSemiBold',
                                                color: Colors.black),
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            'Jan 27, 08:15 AM',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: 'IBMPlexSans',
                                                color: MyColor.timeFontColor),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 6)
                              ],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider(
                              color: Colors.black26,
                            );
                          },
                        )),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
