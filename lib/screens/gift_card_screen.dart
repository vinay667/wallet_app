

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:walletapp/colors/colors.dart';
import 'package:walletapp/widgets/curve_toolbar.dart';

class GiftCardScreen extends StatefulWidget
{
  GiftCardState createState()=>GiftCardState();
}
class GiftCardState extends State<GiftCardScreen>
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CurveTooblarWidget('Gift Card',context),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',textAlign:TextAlign.center,style: TextStyle(
                fontSize: 13,
                color: Colors.black,
                fontFamily: 'IBMPlexSans'
              ),),
            ),
            SizedBox(height: 30),

            Container(
              height: 360.3,
              margin: EdgeInsets.only(left: 25,right: 25),
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                Container(
                  height:309,
                  margin: EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.7),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [MyColor.lightGreen.withOpacity(0.6),MyColor.lightOrange.withOpacity(0.6)],
                      tileMode: TileMode.repeated,
                    ),
                  ),
                ),

                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 20,right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.7),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [MyColor.gradientStart,MyColor.gradientEnd],
                        tileMode: TileMode.repeated,
                      ),
                    ),
                    
                    child: Column(

                      children: <Widget>[
                        SizedBox(height: 20),
                        Image.asset('images/drinks.png',height: 95.3,width: 79.3),
                        SizedBox(height: 20),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 80),
                            Text('50% ',style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontFamily: 'GilroySemiBold'
                            ),
                              textAlign: TextAlign.center,
                            ),

                           Flexible(
                             child:  Text('off on Drinks ',maxLines:1,overflow:TextOverflow.ellipsis,style: TextStyle(
                                 fontSize: 12,
                                 color: Colors.white,
                                 fontFamily: 'GilroySemiBold'
                             ),


                             )
                             ,


                           )


                          ],


                        ),
                        SizedBox(height:20),

                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing  and typesetting industry.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: MyColor.whiteOpacity,
                                fontFamily: 'IBMPlexSans'),
                          ),
                        ),

                        SizedBox(height: 30),


                        Container(
                        width: 172.7,height: 37.7,
                         child: Stack(

                        children: <Widget>[

                          Image.asset('images/border_rect.png'),
                         Center(child: Text('150 points',style: TextStyle(
                           fontSize: 13,
                           color: Colors.white,
                           fontFamily: 'GilroySemiBold'






                         ),
                         ),)

                        ],

                         ),

                        )










                        
                      ],
                      
                      
                    ),
                    
                    
                    
                  ),




                ],

              ),



            ),



            Container(
              transform: Matrix4.translationValues(0.0, -20.0, 0.0),
              width: 172.7,height: 39.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.3),
                color: MyColor.lightOrange,
              ),
              child: Center(
                child: Text('BUY NOW',style: TextStyle(color: MyColor.darkBlue,fontFamily: 'GilroyBold',fontSize: 13,letterSpacing: 0.19),),


              ),



            )



















          ],


        ),


      )



    );



  }
}
