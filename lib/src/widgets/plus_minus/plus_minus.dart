import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/utils.dart';
import '../textstyle_widget/textstyle_widget.dart';

class PlusMinus extends StatefulWidget {
  final String text;
  const PlusMinus({Key? key, required this.text}) : super(key: key);

  @override
  State<PlusMinus> createState() => _PlusMinusState();
}

class _PlusMinusState extends State<PlusMinus> {
  void add() {
    setState(() {
      _n++;
    });
  }
  void minus() {
    setState(() {
      if (_n != 0)
        _n--;
    });
  }
  double _n = 01.00;
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Container(
        width: 156 * w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xff333749)
        ),
        child: Column(
          children: [
            SizedBox(height: 5 * h,),
            Text(widget.text,style: GoogleFonts.inter(
                textStyle: AppStyle.twelve(Color(0xFFC8C8C8))
            )),
            Row(
              children: [
                IconButton(onPressed: (){
                  minus();
                }, icon: Icon(CupertinoIcons.minus_circle,color: Colors.white,)),
                Text(_n.toString(),style: GoogleFonts.inter(
                    textStyle: AppStyle.sixteenbold(Colors.white)
                ),),
                IconButton(onPressed: (){
                  add();
                }, icon: Icon(CupertinoIcons.plus_circle,color: Colors.white,)),
              ],
            )
          ],
        )
    );
  }
}
