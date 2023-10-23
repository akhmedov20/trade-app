import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_app/src/widgets/buttons/currency_pair_widget.dart';
import 'package:trade_app/src/widgets/textstyle_widget/textstyle_widget.dart';

import '../../../models/currencyModel/currency_model.dart';
import '../../../utils/utils.dart';

class CurrencyPairScreen extends StatefulWidget {
  const CurrencyPairScreen({Key? key}) : super(key: key);

  @override
  State<CurrencyPairScreen> createState() => _CurrencyPairScreenState();
}

class _CurrencyPairScreenState extends State<CurrencyPairScreen> {
  int selectedIndex = 0;
  List<CurrencyModel> currency = [
    CurrencyModel(id: 0, name: "EUR / USD"),
    CurrencyModel(id: 1, name: "GPB / USD"),
    CurrencyModel(id: 2, name: "CAD / USD"),
    CurrencyModel(id: 3, name: "USD / CAD"),
    CurrencyModel(id: 4, name: 'RUB / USD'),
    CurrencyModel(id: 5, name: "USD / RUB"),
    CurrencyModel(id: 6, name: "USD / JPY"),
    CurrencyModel(id: 7, name: 'JPY / USD'),
    CurrencyModel(id: 8, name: "USD / UZS"),
    CurrencyModel(id: 9, name: "UZB / USD"),
    CurrencyModel(id: 10, name: "USD / JPY"),
    CurrencyModel(id: 11, name: 'JPY / USD'),
    CurrencyModel(id: 12, name: "USD / UZS"),
    CurrencyModel(id: 13, name: "UZB / USD"),
  ];
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: Color(0xff121629),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff121629),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(CupertinoIcons.left_chevron,color: Colors.white,)),
        title: Text("Currency pair",style: GoogleFonts.inter(
          textStyle: AppStyle.twenty(Colors.white)
        ),),
      ),
      body: SafeArea(
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20 * w,vertical: 20 * h),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 1.8 / 1.0,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: currency.length,
            itemBuilder: (context,i){
              return CurrencyPairWidget(text: currency[i].name, color: selectedIndex == currency[i].id ? Color(0xff35B972):Color(0xff333749),
                onTap: (){
                  selectedIndex = currency[i].id;
                  setState(() {

                  });
                },);
            }
        ),
      ),
    );
  }
}
