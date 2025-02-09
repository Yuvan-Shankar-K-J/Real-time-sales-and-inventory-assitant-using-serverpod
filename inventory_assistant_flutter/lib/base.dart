import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  final Widget child;
  final int selectedIndex;
  final String title;
  const BaseScreen({super.key, required this.child, this.selectedIndex = 0, required this.title});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {


  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(String route) {
    if (ModalRoute.of(context)?.settings.name != route) {
      Navigator.pushReplacementNamed(context, route);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((widget.title  ?? "").isNotEmpty ? widget.title : "Inventory Assistant"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Welcome, User!",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              _buildDrawerItem(Icons.speed_rounded, "Dashboard", '/dashboard'),
              _buildExpansionTile("Masters", Icons.person, [
                _buildDrawerItem(Icons.handshake_rounded, "Party Master", '/partyMaster'),
                _buildDrawerItem(Icons.shopping_cart, "Item Master", '/itemMaster'),
                _buildDrawerItem(Icons.import_contacts_rounded, "Address Book", '/addressBook'),
                _buildDrawerItem(Icons.directions_car, "Vehicle Master", '/vehicleMaster'),
              ]),
              _buildExpansionTile("Inventory Status", Icons.inventory_2, [
                _buildDrawerItem(Icons.add_shopping_cart, "Add to Inventory", '/addToInventory'),
                _buildDrawerItem(Icons.warehouse, "Stock Availability", '/stockAvailability'),
              ]),
              _buildExpansionTile("Invoices & Orders", Icons.receipt_long, [
                _buildDrawerItem(Icons.receipt_long, "Create Invoice", '/createInvoice'),
                _buildDrawerItem(Icons.production_quantity_limits_rounded, "Raise Purchase Order", '/purchaseOrder'),
              ]),
              _buildExpansionTile("Sales & Collections", Icons.business_center, [
                _buildDrawerItem(Icons.delivery_dining, "Order Tracker", '/orderTracker'),
                _buildDrawerItem(Icons.currency_rupee, "Credit Recollection", '/creditRecollection'),
              ]),
            ],
          ),
        ),
      ),
      body: widget.child,
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, String route) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () => _onItemTapped(route),
    );
  }

  Widget _buildExpansionTile(String title, IconData icon, List<Widget> children) {
    return ExpansionTile(
      title: Text(title),
      leading: Icon(icon),
      childrenPadding: const EdgeInsets.only(left: 60),
      children: children,
    );
  }
}
