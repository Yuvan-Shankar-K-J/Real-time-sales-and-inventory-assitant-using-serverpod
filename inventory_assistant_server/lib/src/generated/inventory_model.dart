/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Products implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = ProductsTable();

  static const db = ProductsRepository._();

  @override
  int? id;

  String productName;

  double price;

  int avlQty;

  int tax;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'productName': productName,
      'price': price,
      'avlQty': avlQty,
      'tax': tax,
    };
  }

  static ProductsInclude include() {
    return ProductsInclude._();
  }

  static ProductsIncludeList includeList({
    _i1.WhereExpressionBuilder<ProductsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductsTable>? orderByList,
    ProductsInclude? include,
  }) {
    return ProductsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Products.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Products.t),
      include: include,
    );
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

class ProductsTable extends _i1.Table {
  ProductsTable({super.tableRelation}) : super(tableName: 'products_tbl') {
    productName = _i1.ColumnString(
      'productName',
      this,
    );
    price = _i1.ColumnDouble(
      'price',
      this,
    );
    avlQty = _i1.ColumnInt(
      'avlQty',
      this,
    );
    tax = _i1.ColumnInt(
      'tax',
      this,
    );
  }

  late final _i1.ColumnString productName;

  late final _i1.ColumnDouble price;

  late final _i1.ColumnInt avlQty;

  late final _i1.ColumnInt tax;

  @override
  List<_i1.Column> get columns => [
        id,
        productName,
        price,
        avlQty,
        tax,
      ];
}

class ProductsInclude extends _i1.IncludeObject {
  ProductsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Products.t;
}

class ProductsIncludeList extends _i1.IncludeList {
  ProductsIncludeList._({
    _i1.WhereExpressionBuilder<ProductsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Products.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Products.t;
}

class ProductsRepository {
  const ProductsRepository._();

  Future<List<Products>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Products>(
      where: where?.call(Products.t),
      orderBy: orderBy?.call(Products.t),
      orderByList: orderByList?.call(Products.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Products?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductsTable>? where,
    int? offset,
    _i1.OrderByBuilder<ProductsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Products>(
      where: where?.call(Products.t),
      orderBy: orderBy?.call(Products.t),
      orderByList: orderByList?.call(Products.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Products?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Products>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Products>> insert(
    _i1.Session session,
    List<Products> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Products>(
      rows,
      transaction: transaction,
    );
  }

  Future<Products> insertRow(
    _i1.Session session,
    Products row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Products>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Products>> update(
    _i1.Session session,
    List<Products> rows, {
    _i1.ColumnSelections<ProductsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Products>(
      rows,
      columns: columns?.call(Products.t),
      transaction: transaction,
    );
  }

  Future<Products> updateRow(
    _i1.Session session,
    Products row, {
    _i1.ColumnSelections<ProductsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Products>(
      row,
      columns: columns?.call(Products.t),
      transaction: transaction,
    );
  }

  Future<List<Products>> delete(
    _i1.Session session,
    List<Products> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Products>(
      rows,
      transaction: transaction,
    );
  }

  Future<Products> deleteRow(
    _i1.Session session,
    Products row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Products>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Products>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ProductsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Products>(
      where: where(Products.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Products>(
      where: where?.call(Products.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
