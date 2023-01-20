import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'tabbar1.dart';
import 'tabbar2.dart';

class LogInpage extends StatefulWidget {
  const LogInpage({Key? key}) : super(key: key);

  @override
  State<LogInpage> createState() => _LogInpageState();
}

class _LogInpageState extends State<LogInpage> with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  bool isVisible = true;
  // static const List<Tab> _tabs = [
  //   Tab(child: Text('Login')),
  //   Tab(text: 'Signup')
  // ];

  // final _formkey = GlobalKey<FormState>();
  // String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Column(children: [
              Image.asset(
                "assets/8.png",
                height: 320,
              ),
              TabBar(
                  controller: _tabController,
                  indicatorPadding: const EdgeInsets.all(5),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.pinkAccent),
                  tabs: [
                    Text("login",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 18, color: Colors.black))),
                    Text("Signup",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 18, color: Colors.black))),
                  ])
            ]),
          ),
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: const [Tabbarone(), TabbarTwo()],
          ))
        ],
      ),
    );
  }
}///


