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

abstract class Parties implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String partyName;

  String gstin;

  String? telephoneNumber;

  String? mobileNumber;

  String address;

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
