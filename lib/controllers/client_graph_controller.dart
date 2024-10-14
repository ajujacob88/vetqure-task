import '../models/client_graph_model.dart';

class ClientGraphController {
  final ClientGraphModel _model = ClientGraphModel();

  // Fetch the walk-in client data
  List<WalkInClientData> getWalkInClientData() {
    return _model.getWalkInClientData();
  }

  // Calculate total walk-ins from the data
  int getTotalWalkIn() {
    final data = getWalkInClientData();
    return data.fold(0, (sum, item) => sum + item.walkInCount.toInt());
  }
}
