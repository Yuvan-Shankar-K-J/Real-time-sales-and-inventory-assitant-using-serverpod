import 'package:flutter/material.dart';
import 'package:inventory_assistant_flutter/base.dart';

class PartyMaster extends StatefulWidget {
  const PartyMaster({super.key});

  @override
  State<PartyMaster> createState() => _PartyMasterState();
}

class _PartyMasterState extends State<PartyMaster> {
  bool showForm = false;
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Party Master",
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Field
            if (!showForm) ...[
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search Party here..',
                ),
              ),
              const SizedBox(height: 10),
              // "Or" Text
              Align(
                alignment: Alignment.center,
                child: Text("Or", style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 10),

              // Add New Party Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                    elevation: 5,
                    minimumSize: const Size(double.infinity, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      showForm = true;
                    });
                  },
                  child: const Text("Add new party here"),
                ),
              ),
            ],
            const SizedBox(height: 10),

            // Party Details Form in a Container
            if (showForm)
              Container(
                padding: const EdgeInsets.all(4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Party Name',
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'GSTIN',
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Telephone Number',
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Mobile Number',
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Address',
                        hintText: "Enter Party Address here",
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [

                        Expanded(
                          flex: 2,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              elevation: 5,
                              minimumSize: const Size(double.infinity, 45),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                showForm =
                                    false; // Hide form, show search section again
                              });
                            },
                            icon: Icon(Icons.clear_all, size: 24), // Back icon
                            label: const Text("Clear all"),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          flex: 2,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white,
                              elevation: 5,
                              minimumSize: const Size(double.infinity, 45),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                 // Hide form, show search section again
                              });
                            },
                            icon: Icon(Icons.check, size: 24), // Back icon
                            label: const Text("Save data"),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
