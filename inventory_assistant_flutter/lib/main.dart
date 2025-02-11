import 'package:flutter/material.dart';
import 'package:inventory_assistant_client/inventory_assistant_client.dart';
import 'package:inventory_assistant_flutter/Pages/Dashboard.dart';
import 'package:inventory_assistant_flutter/Pages/Masters/AddressBook.dart';
import 'package:inventory_assistant_flutter/Pages/Masters/ItemMaster.dart';
import 'package:inventory_assistant_flutter/Pages/Masters/VehicleMaster.dart';
import 'package:inventory_assistant_flutter/Pages/Masters/partyMaster.dart';
import 'package:inventory_assistant_flutter/Pages/Inventory_Status/addToInventory.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
// import '';
// Sets up a singleton client object
var client = Client('http://192.168.135.35:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(primarySwatch: Colors.blue,useMaterial3: true),
      initialRoute: '/dashboard',
      routes: {
        // Masters
        '/dashboard':(context) => Dashboard(),
        '/partyMaster':(context)=>PartyMaster(),
        '/itemMaster':(context)=>ItemMaster(),
        '/addressBook':(context)=>AddressBook(),
        '/vehicleMaster':(context)=>VehicleMaster(),

        //Inventory Status
        '/addToInventory':(context)=> AddStockPage(),
      },
    );
  }
}
