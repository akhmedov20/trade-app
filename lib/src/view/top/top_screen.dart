import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_app/src/widgets/bitcoin_list/bitcoin_list.dart';
import 'package:trade_app/src/widgets/bitcoin_list/user_list_widget.dart';

import '../../models/trade_list_model/trade_list_model.dart';
import '../../utils/utils.dart';
import '../../widgets/textstyle_widget/textstyle_widget.dart';

class TopScreen extends StatefulWidget {
  const TopScreen({Key? key}) : super(key: key);

  @override
  State<TopScreen> createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  List<TradeListModel> list = [
    TradeListModel(id: 1, flag: "assets/icons/united-states.svg", name: "Oliver", deposit: 2367, profit: 336755),
    TradeListModel(id: 2, flag: "assets/icons/canada.svg", name: "Jack", deposit: 2367, profit: 336755),
    TradeListModel(id: 3, flag: "assets/icons/brazil.svg", name: "Harry", deposit: 2367, profit: 336755),
    TradeListModel(id: 4, flag: "assets/icons/south-korea.svg", name: "Jacob", deposit: 2367, profit: 336755),
    TradeListModel(id: 5, flag: "assets/icons/germany.svg", name: "Charley", deposit: 2367, profit: 336755),
    TradeListModel(id: 6, flag: "assets/icons/brazil.svg", name: "Thomas", deposit: 2367, profit: 336755),
    TradeListModel(id: 7, flag: "assets/icons/france.svg", name: "George", deposit: 2367, profit: 336755),
    TradeListModel(id: 8, flag: "assets/icons/new-zealand.svg", name: "Oscar", deposit: 2367, profit: 336755),
    TradeListModel(id: 9, flag: "assets/icons/india.svg", name: "James", deposit: 2367, profit: 336755),
    TradeListModel(id: 10, flag: "assets/icons/spain.svg", name: "William", deposit: 2367, profit: 336755)
  ];
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: const Color(0xff121629),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 20 * h,),
            Center(
              child: Text("TOP 10 Traders",style: GoogleFonts.inter(
                  textStyle: AppStyle.twenty(Colors.white)
              )),
            ),
            SizedBox(height: 30 * h,),
            const BitcoinList(),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: list.length,
                itemBuilder: (context, i){
              return UserListWidget(id: list[i].id, flag: list[i].flag,
                  name: list[i].name, deposit: list[i].deposit, profit: list[i].profit,
                color: list[i].id % 2 == 0 ? const Color(0xff12e303e) : const Color(0xff1C1F2D),
              );
            })
          ],
        ),
      ),
    );
  }
}
