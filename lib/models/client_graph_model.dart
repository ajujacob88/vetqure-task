class WalkInClientData {
  final String timeSlot;
  final double walkInCount;

  WalkInClientData({required this.timeSlot, required this.walkInCount});
}

class ClientGraphModel {
  // Dummy data for walk-in client statistics by time slot
  List<WalkInClientData> getWalkInClientData() {
    return [
      WalkInClientData(timeSlot: '9-10 AM', walkInCount: 10),
      WalkInClientData(timeSlot: '10-11 AM', walkInCount: 20),
      WalkInClientData(timeSlot: '11-12 PM', walkInCount: 25),
      WalkInClientData(timeSlot: '12-1 PM', walkInCount: 30),
      WalkInClientData(timeSlot: '1-2 PM', walkInCount: 10),
      WalkInClientData(timeSlot: '2-3 PM', walkInCount: 30),
      WalkInClientData(timeSlot: '3-4 PM', walkInCount: 30),
      WalkInClientData(timeSlot: '4-5 PM', walkInCount: 30),
      WalkInClientData(timeSlot: '5-6 PM', walkInCount: 40),
      WalkInClientData(timeSlot: '6-7 PM', walkInCount: 20),
    ];
  }
}
