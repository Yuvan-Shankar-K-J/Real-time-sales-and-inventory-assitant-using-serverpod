import 'package:flutter/material.dart';
import 'package:inventory_assistant_flutter/base.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        title: "Dashboard",
        selectedIndex: 0,
        child: Align(child: Text("DashBoard"),));

  }
}
