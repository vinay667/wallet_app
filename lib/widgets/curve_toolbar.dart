


import 'package:flutter/cupertino.dart';
import 'package:walletapp/widgets/toolbar_widget.dart';

class CurveTooblarWidget extends StatelessWidget
{
  CurveTooblarWidget(this.toolbarText);
  final String toolbarText;
  @override
  Widget build(BuildContext context) {

   return Container(
     width: double.infinity,
     height: 65.7,
     child: Stack(
       children: <Widget>[
         Container(
           transform: Matrix4.translationValues(0.0, -2.0, 0.0),
           child: Image.asset('images/curve_top.png', height: 65.7),


         ),
         Padding(
           padding: EdgeInsets.only(top: 5),
           child: CustomToolbar(toolbarText),
         )
       ],
     ),
   );


  }
}

