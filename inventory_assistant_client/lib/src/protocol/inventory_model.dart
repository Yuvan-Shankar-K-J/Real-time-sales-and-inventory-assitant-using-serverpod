/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Products implements _i1.SerializableModel {
  Products._({
    this.id,
    required this.productName,
    required this.price,
    required this.avlQty,
    required this.tax,
  });

  factory Products({
    int? id,
    required String productName,
    required double price,
    required int avlQty,
    required int tax,
  }) = _ProductsImpl;

  factory Products.fromJson(Map<String, dynamic> jsonSerialization) {
    return Products(
      id: jsonSerialization['id'] as int?,
      productName: jsonSerialization['productName'] as String,
      price: (jsonSerialization['price'] as num).toDouble(),
      avlQty: jsonSerialization['avlQty'] as int,
      tax: jsonSerialization['tax'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String productName;

  double price;

  int avlQty;

  int tax;

  Products copyWith({
    int? id,
    String? productName,
    double? price,
    int? avlQty,
    int? tax,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'productName': productName,
      'price': price,
      'avlQty': avlQty,
      'tax': tax,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProductsImpl extends Products {
  _ProductsImpl({
    int? id,
    required String productName,
    required double price,
    required int avlQty,
    required int tax,
  }) : super._(
          id: id,
          productName: productName,
          price: price,
          avlQty: avlQty,
          tax: tax,
        );

  @override
  Products copyWith({
    Object? id = _Undefined,
    String? productName,
    double? price,
    int? avlQty,
    int? tax,
  }) {
    return Products(
      id: id is int? ? id : this.id,
      productName: productName ?? this.productName,
      price: price ?? this.price,
      avlQty: avlQty ?? this.avlQty,
      tax: tax ?? this.tax,
    );
  }
}
