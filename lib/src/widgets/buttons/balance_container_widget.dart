
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_app/src/widgets/textstyle_widget/textstyle_widget.dart';

import '../../utils/utils.dart';

class BalanceWidget extends StatelessWidget {
  final double width;
  final String text;
  final int text2;
  const BalanceWidget({Key? key, required this.width,required this.text, required this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff333749)
      ),
      child: Column(
        children: [
          SizedBox(height: 8 * h,),
          Text(text,style: GoogleFonts.inter(
            textStyle: AppStyle.twelve(Color(0xFFC8C8C8))
          ),),
          Text(text2.toString(),style: GoogleFonts.inter(
              textStyle: AppStyle.sixteenbold(Colors.white)
          ),),
          SizedBox(height: 8 * h,),
        ],
      ),
    );
  }
}
