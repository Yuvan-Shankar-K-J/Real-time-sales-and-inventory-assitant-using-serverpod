import 'package:inventory_assistant_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class PartyEndpoint extends Endpoint {
  // Fetch Parties from DB
  Future<List<Parties>> fetchParties(Session session, {String? searchQuery}) async {
    return await Parties.db.find(
      session,
      where: (t) => searchQuery != null && searchQuery.isNotEmpty
          ? t.partyName.ilike('%$searchQuery%')
          : Constant.bool(true),
    );
  }

  // Create a new party
  Future<bool> addParty(Session session, Parties parties) async {
    await Parties.db.insertRow(session, parties);
    return true;
  }

  // Update existing party
  Future<bool> updateParty(Session session, Parties parties) async {
    await Parties.db.updateRow(session, parties);
    return true;
  }

  // Delete a party
  Future<bool> deleteParty(Session session, int id) async {
    var deletedRows = await Parties.db.deleteWhere(
      session,
      where: (t) => t.id.equals(id),
    );
    return deletedRows.isNotEmpty;  // Returns true if any row is deleted
  }

}
