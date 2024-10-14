import '../models/client_graph_model.dart';

class ClientGraphController {
  final ClientGraphModel _model = ClientGraphModel();

  // Fetch the walk-in client data
  List<WalkInClientData> getWalkInClientData() {
    return _model.getWalkInClientData();
  }
}
