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
import '../endpoints/example_endpoint.dart' as _i2;
import '../endpoints/inventory_endpoint.dart' as _i3;
import '../endpoints/party_endpoint.dart' as _i4;
import 'package:inventory_assistant_server/src/generated/inventory_model.dart'
    as _i5;
import 'package:inventory_assistant_server/src/generated/party_model.dart'
    as _i6;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'example': _i2.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'inventory': _i3.InventoryEndpoint()
        ..initialize(
          server,
          'inventory',
          null,
        ),
      'party': _i4.PartyEndpoint()
        ..initialize(
          server,
          'party',
          null,
        ),
    };
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['inventory'] = _i1.EndpointConnector(
      name: 'inventory',
      endpoint: endpoints['inventory']!,
      methodConnectors: {
        'fetchProducts': _i1.MethodConnector(
          name: 'fetchProducts',
          params: {
            'searchQuery': _i1.ParameterDescription(
              name: 'searchQuery',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['inventory'] as _i3.InventoryEndpoint).fetchProducts(
            session,
            searchQuery: params['searchQuery'],
          ),
        ),
        'addProduct': _i1.MethodConnector(
          name: 'addProduct',
          params: {
            'products': _i1.ParameterDescription(
              name: 'products',
              type: _i1.getType<_i5.Products>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['inventory'] as _i3.InventoryEndpoint).addProduct(
            session,
            params['products'],
          ),
        ),
        'updateProduct': _i1.MethodConnector(
          name: 'updateProduct',
          params: {
            'products': _i1.ParameterDescription(
              name: 'products',
              type: _i1.getType<_i5.Products>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['inventory'] as _i3.InventoryEndpoint).updateProduct(
            session,
            params['products'],
          ),
        ),
        'deleteProduct': _i1.MethodConnector(
          name: 'deleteProduct',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['inventory'] as _i3.InventoryEndpoint).deleteProduct(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['party'] = _i1.EndpointConnector(
      name: 'party',
      endpoint: endpoints['party']!,
      methodConnectors: {
        'fetchParties': _i1.MethodConnector(
          name: 'fetchParties',
          params: {
            'searchQuery': _i1.ParameterDescription(
              name: 'searchQuery',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['party'] as _i4.PartyEndpoint).fetchParties(
            session,
            searchQuery: params['searchQuery'],
          ),
        ),
        'addParty': _i1.MethodConnector(
          name: 'addParty',
          params: {
            'parties': _i1.ParameterDescription(
              name: 'parties',
              type: _i1.getType<_i6.Parties>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['party'] as _i4.PartyEndpoint).addParty(
            session,
            params['parties'],
          ),
        ),
        'updateParty': _i1.MethodConnector(
          name: 'updateParty',
          params: {
            'parties': _i1.ParameterDescription(
              name: 'parties',
              type: _i1.getType<_i6.Parties>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['party'] as _i4.PartyEndpoint).updateParty(
            session,
            params['parties'],
          ),
        ),
        'deleteParty': _i1.MethodConnector(
          name: 'deleteParty',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['party'] as _i4.PartyEndpoint).deleteParty(
            session,
            params['id'],
          ),
        ),
      },
    );
  }
}
