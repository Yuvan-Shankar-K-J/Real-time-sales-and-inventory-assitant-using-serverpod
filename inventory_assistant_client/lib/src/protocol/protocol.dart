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
import 'example.dart' as _i2;
import 'inventory_model.dart' as _i3;
import 'party_model.dart' as _i4;
import 'package:inventory_assistant_client/src/protocol/inventory_model.dart'
    as _i5;
import 'package:inventory_assistant_client/src/protocol/party_model.dart'
    as _i6;
export 'example.dart';
export 'inventory_model.dart';
export 'party_model.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Example) {
      return _i2.Example.fromJson(data) as T;
    }
    if (t == _i3.Products) {
      return _i3.Products.fromJson(data) as T;
    }
    if (t == _i4.Parties) {
      return _i4.Parties.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Example?>()) {
      return (data != null ? _i2.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Products?>()) {
      return (data != null ? _i3.Products.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Parties?>()) {
      return (data != null ? _i4.Parties.fromJson(data) : null) as T;
    }
    if (t == List<_i5.Products>) {
      return (data as List).map((e) => deserialize<_i5.Products>(e)).toList()
          as dynamic;
    }
    if (t == List<_i6.Parties>) {
      return (data as List).map((e) => deserialize<_i6.Parties>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.Example) {
      return 'Example';
    }
    if (data is _i3.Products) {
      return 'Products';
    }
    if (data is _i4.Parties) {
      return 'Parties';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Example') {
      return deserialize<_i2.Example>(data['data']);
    }
    if (dataClassName == 'Products') {
      return deserialize<_i3.Products>(data['data']);
    }
    if (dataClassName == 'Parties') {
      return deserialize<_i4.Parties>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
