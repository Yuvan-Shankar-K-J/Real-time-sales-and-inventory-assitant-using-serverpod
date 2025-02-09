import 'package:flutter/material.dart';

class VehicleMaster extends StatefulWidget {
  const VehicleMaster({super.key});

  @override
  State<VehicleMaster> createState() => _VehicleMasterState();
}

class _VehicleMasterState extends State<VehicleMaster> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vehicle Master"),
      ),
      body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Align(
                child: Text("Add new Party here",
                  textAlign: TextAlign.center,
                ))
          ],

        ),

      ),
    );
  }
}
