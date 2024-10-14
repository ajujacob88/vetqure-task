class DemographicsModel {
  final String location;
  final double walkInCount;

  DemographicsModel({required this.location, required this.walkInCount});

  static List<DemographicsModel> getDummyData() {
    return [
      DemographicsModel(location: 'Pattom', walkInCount: 100),
      DemographicsModel(location: 'Thampanoor', walkInCount: 100),
      DemographicsModel(location: 'Kowdiar', walkInCount: 200),
      DemographicsModel(location: 'Palayam', walkInCount: 100),
    ];
  }
}
