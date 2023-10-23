import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_app/src/widgets/textstyle_widget/textstyle_widget.dart';

import '../../utils/utils.dart';

class SellBuyWidget extends StatelessWidget {
  final Color color;
  final String text;
  const SellBuyWidget({Key? key, required this.color, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Container(
      padding: EdgeInsets.only(left: 15 * w,top: 5 * h),
      width: 152 * w,
      height: 54 * h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color
      ),
      child: Text(text,style: GoogleFonts.inter(
        textStyle: AppStyle.twentyfour(Colors.white)
      ),),
    );
  }
}
