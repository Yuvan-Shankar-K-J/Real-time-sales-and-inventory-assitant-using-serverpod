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

abstract class Parties implements _i1.TableRow, _i1.ProtocolSerialization {
  Parties._({
    this.id,
    required this.partyName,
    required this.gstin,
    this.telephoneNumber,
    this.mobileNumber,
    required this.address,
  });

  factory Parties({
    int? id,
    required String partyName,
    required String gstin,
    String? telephoneNumber,
    String? mobileNumber,
    required String address,
  }) = _PartiesImpl;

  factory Parties.fromJson(Map<String, dynamic> jsonSerialization) {
    return Parties(
      id: jsonSerialization['id'] as int?,
      partyName: jsonSerialization['partyName'] as String,
      gstin: jsonSerialization['gstin'] as String,
      telephoneNumber: jsonSerialization['telephoneNumber'] as String?,
      mobileNumber: jsonSerialization['mobileNumber'] as String?,
      address: jsonSerialization['address'] as String,
    );
  }

  static final t = PartiesTable();

  static const db = PartiesRepository._();

  @override
  int? id;

  String partyName;

  String gstin;

  String? telephoneNumber;

  String? mobileNumber;

  String address;

  @override
  _i1.Table get table => t;

  Parties copyWith({
    int? id,
    String? partyName,
    String? gstin,
    String? telephoneNumber,
    String? mobileNumber,
    String? address,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'partyName': partyName,
      'gstin': gstin,
      if (telephoneNumber != null) 'telephoneNumber': telephoneNumber,
      if (mobileNumber != null) 'mobileNumber': mobileNumber,
      'address': address,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'partyName': partyName,
      'gstin': gstin,
      if (telephoneNumber != null) 'telephoneNumber': telephoneNumber,
      if (mobileNumber != null) 'mobileNumber': mobileNumber,
      'address': address,
    };
  }

  static PartiesInclude include() {
    return PartiesInclude._();
  }

  static PartiesIncludeList includeList({
    _i1.WhereExpressionBuilder<PartiesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PartiesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PartiesTable>? orderByList,
    PartiesInclude? include,
  }) {
    return PartiesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Parties.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Parties.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PartiesImpl extends Parties {
  _PartiesImpl({
    int? id,
    required String partyName,
    required String gstin,
    String? telephoneNumber,
    String? mobileNumber,
    required String address,
  }) : super._(
          id: id,
          partyName: partyName,
          gstin: gstin,
          telephoneNumber: telephoneNumber,
          mobileNumber: mobileNumber,
          address: address,
        );

  @override
  Parties copyWith({
    Object? id = _Undefined,
    String? partyName,
    String? gstin,
    Object? telephoneNumber = _Undefined,
    Object? mobileNumber = _Undefined,
    String? address,
  }) {
    return Parties(
      id: id is int? ? id : this.id,
      partyName: partyName ?? this.partyName,
      gstin: gstin ?? this.gstin,
      telephoneNumber:
          telephoneNumber is String? ? telephoneNumber : this.telephoneNumber,
      mobileNumber: mobileNumber is String? ? mobileNumber : this.mobileNumber,
      address: address ?? this.address,
    );
  }
}

class PartiesTable extends _i1.Table {
  PartiesTable({super.tableRelation}) : super(tableName: 'parties_tbl') {
    partyName = _i1.ColumnString(
      'partyName',
      this,
    );
    gstin = _i1.ColumnString(
      'gstin',
      this,
    );
    telephoneNumber = _i1.ColumnString(
      'telephoneNumber',
      this,
    );
    mobileNumber = _i1.ColumnString(
      'mobileNumber',
      this,
    );
    address = _i1.ColumnString(
      'address',
      this,
    );
  }

  late final _i1.ColumnString partyName;

  late final _i1.ColumnString gstin;

  late final _i1.ColumnString telephoneNumber;

  late final _i1.ColumnString mobileNumber;

  late final _i1.ColumnString address;

  @override
  List<_i1.Column> get columns => [
        id,
        partyName,
        gstin,
        telephoneNumber,
        mobileNumber,
        address,
      ];
}

class PartiesInclude extends _i1.IncludeObject {
  PartiesInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Parties.t;
}

class PartiesIncludeList extends _i1.IncludeList {
  PartiesIncludeList._({
    _i1.WhereExpressionBuilder<PartiesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Parties.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Parties.t;
}

class PartiesRepository {
  const PartiesRepository._();

  Future<List<Parties>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PartiesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PartiesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PartiesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Parties>(
      where: where?.call(Parties.t),
      orderBy: orderBy?.call(Parties.t),
      orderByList: orderByList?.call(Parties.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Parties?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PartiesTable>? where,
    int? offset,
    _i1.OrderByBuilder<PartiesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PartiesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Parties>(
      where: where?.call(Parties.t),
      orderBy: orderBy?.call(Parties.t),
      orderByList: orderByList?.call(Parties.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Parties?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Parties>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Parties>> insert(
    _i1.Session session,
    List<Parties> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Parties>(
      rows,
      transaction: transaction,
    );
  }

  Future<Parties> insertRow(
    _i1.Session session,
    Parties row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Parties>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Parties>> update(
    _i1.Session session,
    List<Parties> rows, {
    _i1.ColumnSelections<PartiesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Parties>(
      rows,
      columns: columns?.call(Parties.t),
      transaction: transaction,
    );
  }

  Future<Parties> updateRow(
    _i1.Session session,
    Parties row, {
    _i1.ColumnSelections<PartiesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Parties>(
      row,
      columns: columns?.call(Parties.t),
      transaction: transaction,
    );
  }

  Future<List<Parties>> delete(
    _i1.Session session,
    List<Parties> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Parties>(
      rows,
      transaction: transaction,
    );
  }

  Future<Parties> deleteRow(
    _i1.Session session,
    Parties row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Parties>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Parties>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PartiesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Parties>(
      where: where(Parties.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PartiesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Parties>(
      where: where?.call(Parties.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
