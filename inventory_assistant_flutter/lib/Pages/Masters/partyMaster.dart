import 'package:flutter/material.dart';
import 'package:inventory_assistant_client/inventory_assistant_client.dart';
import 'package:inventory_assistant_flutter/base.dart';
import 'package:inventory_assistant_flutter/main.dart';
import 'package:inventory_assistant_flutter/Models/snackbar.dart';
class PartyMaster extends StatefulWidget {
  const PartyMaster({super.key});

  @override
  State<PartyMaster> createState() => _PartyMasterState();
}

class _PartyMasterState extends State<PartyMaster> {
  String? _resultMessage;
  String? _errorMessage;
  bool showForm = false;
  // Controllers for each text field
  final _partyNameController = TextEditingController();
  final _gstinController = TextEditingController();
  final _teleNumbercontrollerController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _addressController = TextEditingController();

  void _displayStatus() async {
    final result = await client.example.hello(_partyNameController.text);
    try {
      setState(() {
        _errorMessage = null;
        _resultMessage = result;
      });
    } catch (e) {
      setState(() {
        _errorMessage = '$e';
        _resultMessage = result;
      });
    }
  }

  Future <bool> addParty() async {
    var party = Parties(
      partyName: _partyNameController.text,
      gstin: _gstinController.text,
      mobileNumber: _mobileNumberController.text,
      telephoneNumber: _teleNumbercontrollerController.text,
      address: _addressController.text,
    );

    try {
      bool? isAdded = await client.party.addParty(party); // Ensure nullable check
      return isAdded;

    }catch(e){
      print(e.toString());
      return false ;
    }
    }

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
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
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
                            icon: Icon(Icons.arrow_back, size: 24), // Back icon
                            label: const Text("Back to Search"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      controller: _partyNameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Party Name',
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: _gstinController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'GSTIN',
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: _teleNumbercontrollerController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Telephone Number',
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: _mobileNumberController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Mobile Number',
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: _addressController,
                      maxLines: 3,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Address',
                        hintText: "Enter Party Address here",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
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
                                 // Hide form, show search section again
                              });
                            },
                            icon: Icon(Icons.clear_all, size: 24), // Back icon
                            label: const Text("Clear all"),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
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
                            onPressed: () async {
                              bool isAdded = await addParty();
                              Snackbar.show(
                                  context,
                                  isAdded,
                                  isAdded
                                      ? 'Party ${_partyNameController.text} added Successfully'
                                      :'failed to add ${_partyNameController.text}'
                              );
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
