import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:trade_app/src/view/main/main_screen.dart';
import 'package:trade_app/src/view/top/top_screen.dart';
import 'package:trade_app/src/widgets/textstyle_widget/textstyle_widget.dart';

import '../../utils/utils.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 4),(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const MainScreen())
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/BG.png",
            width: MediaQuery.of(context).size.width,fit: BoxFit.cover,),
          Center(
            child: LinearPercentIndicator(
              padding: EdgeInsets.symmetric(horizontal: 40 * w),
              animation: true,
              animationDuration: 3000,
              lineHeight: 24 * h,
              barRadius: const Radius.circular(20.0),
              percent: 1,
              center: Text("100.0%",style: GoogleFonts.inter(
                textStyle: AppStyle.sixteenbold(Colors.white)
              ),),
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Color(0xff35B972),
              backgroundColor: Color(0xff5B5A60),
            ),
          ),
        ],
      ),
    );
  }
}
