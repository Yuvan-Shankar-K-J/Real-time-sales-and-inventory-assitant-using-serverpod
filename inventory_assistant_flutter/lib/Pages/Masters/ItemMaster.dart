import 'package:flutter/material.dart';

class ItemMaster extends StatefulWidget {
  const ItemMaster({super.key});

  @override
  State<ItemMaster> createState() => _ItemMasterState();
}

class _ItemMasterState extends State<ItemMaster> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Item Master"),
      ),
      body: Container(

        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Align(
                child: Text("Add Something New in products",
                  textAlign: TextAlign.center,
                ))
          ],

        ),

      ),
    );
  }
}
