import 'package:inventory_assistant_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class InventoryEndpoint extends Endpoint {
  // Fetch Products from DB
  Future<List<Products>> fetchProducts(Session session, {String? searchQuery}) async {
    return await Products.db.find(
      session,
      where: (t) => searchQuery != null ? t.productName.like('%$searchQuery%') : Constant.bool(true),
    );
  }

  // Create a new product
  Future<bool> addProduct(Session session, Products products) async {
    await Products.db.insertRow(session, products);
    return true;
  }

  // Update existing product
  Future<bool> updateProduct(Session session, Products products) async {
    await Products.db.updateRow(session, products);
    return true;
  }

  // Delete a product
  Future<bool> deleteProduct(Session session, int id) async {
    await Products.db.deleteWhere(session, where: (t) => t.id.equals(id));
    return true;
  }
}
