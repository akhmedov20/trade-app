import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_app/src/view/trade/currency_pair/currency_pair.dart';
import 'package:trade_app/src/view/trade/practise.dart';
import 'package:trade_app/src/widgets/buttons/balance_container_widget.dart';
import 'package:trade_app/src/widgets/buttons/sell_buy_button_widget.dart';
import 'package:trade_app/src/widgets/plus_minus/minus_plus.dart';
import 'package:trade_app/src/widgets/plus_minus/plus_minus.dart';
import 'package:trade_app/src/widgets/textstyle_widget/textstyle_widget.dart';

import '../../utils/utils.dart';

class TradeScreen extends StatefulWidget {
  const TradeScreen({Key? key}) : super(key: key);

  @override
  State<TradeScreen> createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      showDialog(context: context,
          builder: (context) => AlertDialog(
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            contentPadding: const EdgeInsets.only(top: 10.0),
            insetPadding: EdgeInsets.all(10),
            backgroundColor: const Color(0xff000000),
            content: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("“Trade App” would like to Send You Notifications",textAlign: TextAlign.center,style: GoogleFonts.inter(
                textStyle: AppStyle.seventeen(Colors.white)
              ),),
            ),
            actions: [
              const SizedBox(height: 20,),
              Text("Notifications may include alerts, sounds and icon badges. These can be configured in Settings.",textAlign: TextAlign.center,style: GoogleFonts.inter(
                textStyle: AppStyle.thirteen(Colors.white)
              ),),
              const SizedBox(height: 60,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Don't allow",style: GoogleFonts.inter(
                      textStyle: AppStyle.seventeen(Colors.blue)
                  ),),),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 1,
                    height: 44,
                    color: Colors.grey,
                  ),
                  TextButton(onPressed: (){}, child: Text("Allow",style: GoogleFonts.inter(
                      textStyle: AppStyle.seventeen(Colors.blue)
                  ),),),
                ],
              )
            ],
          )
      );
    });
  }
  String letter = '1000';
  final TextEditingController _controller = TextEditingController();
  String text = "GPB/USD";
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: const Color(0xff121629),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30 * w),
          children: [
            SizedBox(height: 20 * h,),
            Center(
              child: Text("Trade",style: GoogleFonts.inter(
                textStyle: AppStyle.twenty(Colors.white)
              ),),
            ),
            SizedBox(height: 15 * h,),
            BalanceWidget(width: MediaQuery.of(context).size.width,text: 'Balance', text2: 10000,),
            const LineChartSample2(),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const CurrencyPairScreen();
                }));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 54 * h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xff333749)
                ),
                child: Row(
                  children: [
                    const Spacer(),
                    Text(text,style: GoogleFonts.inter(
                      textStyle: AppStyle.sixteenbold(Colors.white)
                    ),),
                    const Spacer(),
                    const Icon(CupertinoIcons.right_chevron,color: Colors.white,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 10 * h,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               PlusMinus(text: "Timer"),
               MinusPlus(text: "Investment"),
              ],
            ),
            SizedBox(height: 18 * h,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SellBuyWidget(color: Color(0xffFE3D43), text: "Sell"),
                SellBuyWidget(color: Color(0xff35B972), text: "Buy"),
              ],
            ),
            SizedBox(height: 18 * h,),
          ],
        ),
      ),
    );
  }
}
