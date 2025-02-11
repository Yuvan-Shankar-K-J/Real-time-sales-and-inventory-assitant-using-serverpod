import 'package:flutter/material.dart';
import 'package:inventory_assistant_client/inventory_assistant_client.dart';
import 'package:inventory_assistant_flutter/base.dart';
import 'package:inventory_assistant_flutter/main.dart';

class AddStockPage extends StatefulWidget {
  const AddStockPage({super.key});

  @override
  State<AddStockPage> createState() => _AddStockPageState();
}

class _AddStockPageState extends State<AddStockPage> {
  String? _resultMessage;
  String? _errorMessage;

  // Controllers for each text field
  final _productNameController = TextEditingController();
  final _priceController = TextEditingController();
  final _avlQtyController = TextEditingController();
  final _taxController = TextEditingController();

  void _callHello() async {
    final result = await client.example.hello(_productNameController.text);
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

  addProduct() async {
    var productName = Products(
      productName: _productNameController.text,
      price: double.tryParse(_priceController.text) ?? 0.0,
      avlQty: int.tryParse(_avlQtyController.text) ?? 0,
      tax: int.tryParse(_taxController.text) ?? 0,
    );

    try {
      bool isAdded = await client.inventory.addProduct(productName);
      if (isAdded) {
        setState(() {
          _resultMessage = "Product '${_productNameController.text}' added successfully!";
        });
      }
    } catch (e) {
      print(e.toString());
      setState(() {
        _errorMessage = "Failed to add product: $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title:"Add Stock to the inventory",
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _productNameController,
              decoration: const InputDecoration(
                hintText: 'Product Name',
              ),
            ),
            TextField(
              controller: _priceController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Price',
              ),
            ),
            TextField(
              controller: _avlQtyController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Available Quantity',
              ),
            ),
            TextField(
              controller: _taxController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Tax',
              ),
            ),
            ElevatedButton(
              onPressed: addProduct,
              child: const Text("Add Product to Stock"),
            ),
            if (_resultMessage != null)
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(_resultMessage ?? '', style: TextStyle(color: Colors.green)),
              ),
            if (_errorMessage != null)
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(_errorMessage ?? '', style: TextStyle(color: Colors.red)),
              ),
          ],
        ),
      ),
    );
  }
}
