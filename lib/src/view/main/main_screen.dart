import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trade_app/src/view/top/top_screen.dart';
import 'package:trade_app/src/view/trade/trade_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex=0;
  bool _onTap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff121629),
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: (i){
          setState(() {
            selectedIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/vector.svg",color: selectedIndex == 0 ? Colors.green : Colors.grey,),
              label: "Trade",),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/user.svg",color: selectedIndex == 1 ? Colors.green : Colors.grey,),
              label: "Top"),
        ],
      ),
    );
  }
  List<Widget> screen = [
    TradeScreen(),
    TopScreen()
  ];
}
