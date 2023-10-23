import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_app/src/widgets/textstyle_widget/textstyle_widget.dart';

import '../../utils/utils.dart';

class CurrencyPairWidget extends StatefulWidget {
  final String text;
  final Color color;
  final Function() onTap;
  const CurrencyPairWidget({Key? key, required this.text, required this.color, required this.onTap}) : super(key: key);

  @override
  State<CurrencyPairWidget> createState() => _CurrencyPairWidgetState();
}

class _CurrencyPairWidgetState extends State<CurrencyPairWidget> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 140 * w,
        height: 54 * h,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(widget.text,style: GoogleFonts.inter(
            textStyle: AppStyle.fourteenbold(Colors.white)
          ),),
        ),
      ),
    );
  }
}
