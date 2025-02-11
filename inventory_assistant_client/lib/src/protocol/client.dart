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
import 'dart:async' as _i2;
import 'package:inventory_assistant_client/src/protocol/inventory_model.dart'
    as _i3;
import 'package:inventory_assistant_client/src/protocol/party_model.dart'
    as _i4;
import 'protocol.dart' as _i5;

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointInventory extends _i1.EndpointRef {
  EndpointInventory(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'inventory';

  _i2.Future<List<_i3.Products>> fetchProducts({String? searchQuery}) =>
      caller.callServerEndpoint<List<_i3.Products>>(
        'inventory',
        'fetchProducts',
        {'searchQuery': searchQuery},
      );

  _i2.Future<bool> addProduct(_i3.Products products) =>
      caller.callServerEndpoint<bool>(
        'inventory',
        'addProduct',
        {'products': products},
      );

  _i2.Future<bool> updateProduct(_i3.Products products) =>
      caller.callServerEndpoint<bool>(
        'inventory',
        'updateProduct',
        {'products': products},
      );

  _i2.Future<bool> deleteProduct(int id) => caller.callServerEndpoint<bool>(
        'inventory',
        'deleteProduct',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointParty extends _i1.EndpointRef {
  EndpointParty(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'party';

  _i2.Future<List<_i4.Parties>> fetchParties({String? searchQuery}) =>
      caller.callServerEndpoint<List<_i4.Parties>>(
        'party',
        'fetchParties',
        {'searchQuery': searchQuery},
      );

  _i2.Future<bool> addParty(_i4.Parties parties) =>
      caller.callServerEndpoint<bool>(
        'party',
        'addParty',
        {'parties': parties},
      );

  _i2.Future<bool> updateParty(_i4.Parties parties) =>
      caller.callServerEndpoint<bool>(
        'party',
        'updateParty',
        {'parties': parties},
      );

  _i2.Future<bool> deleteParty(int id) => caller.callServerEndpoint<bool>(
        'party',
        'deleteParty',
        {'id': id},
      );
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i5.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    example = EndpointExample(this);
    inventory = EndpointInventory(this);
    party = EndpointParty(this);
  }

  late final EndpointExample example;

  late final EndpointInventory inventory;

  late final EndpointParty party;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'inventory': inventory,
        'party': party,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
