import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_app/src/widgets/textstyle_widget/textstyle_widget.dart';

import '../../utils/utils.dart';

class BitcoinList extends StatelessWidget {
  const BitcoinList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15 * w),
      padding: EdgeInsets.all(10 * w * h),
      width: MediaQuery.of(context).size.width,
      height: 50 * h,
      decoration: BoxDecoration(
        color: Color(0xff2E303E),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("№",style: GoogleFonts.inter(
            textStyle: AppStyle.twelve(Colors.white)
          ),),
          SizedBox(width: 25 * w,),
          Text("Сountry",style: GoogleFonts.inter(
              textStyle: AppStyle.twelve(Colors.white)
          ),),
          SizedBox(width: 28 * w,),
          Text("Name",style: GoogleFonts.inter(
              textStyle: AppStyle.twelve(Colors.white)
          ),),
          SizedBox(width: 28 * w,),
          Text("Deposit",style: GoogleFonts.inter(
              textStyle: AppStyle.twelve(Colors.white)
          ),),
          SizedBox(width: 28 * w,),
          Text("Profit",style: GoogleFonts.inter(
              textStyle: AppStyle.twelve(Colors.white)
          ),),
        ],
      ),
    );
  }
}
