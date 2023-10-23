import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/utils.dart';
import '../textstyle_widget/textstyle_widget.dart';

class UserListWidget extends StatelessWidget {
  final int id;
  final String flag;
  final String name;
  final int deposit;
  final int profit;
  final Color color;
  const UserListWidget({Key? key, required this.id, required this.flag, required this.name, required this.deposit, required this.profit, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15 * w),
      padding: EdgeInsets.all(10 * w * h),
      width: MediaQuery.of(context).size.width,
      height: 60 * h,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(id.toString(),style: GoogleFonts.inter(
              textStyle: AppStyle.twelve(Colors.white)
          ),),
          SizedBox(width: 35 * w,),
          SvgPicture.asset(flag),
          SizedBox(width: 38 * w,),
          Text(name,style: GoogleFonts.inter(
              textStyle: AppStyle.twelve(Colors.white)
          ),),
          SizedBox(width: 38 * w,),
          Text("\$" + deposit.toString(),style: GoogleFonts.inter(
              textStyle: AppStyle.twelve(Colors.white)
          ),),
          SizedBox(width: 28 * w,),
          Text("\$" + profit.toString(),style: GoogleFonts.inter(
              textStyle: AppStyle.twelve(Color(0xff35B972))
          ),),
        ],
      ),
    );
  }
}
