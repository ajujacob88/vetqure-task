class WalkInClientData {
  final String timeSlot;
  final double walkInCount;
  final int newClientCount;
  final int existingClientCount;

  WalkInClientData(
      {required this.timeSlot,
      required this.walkInCount,
      required this.newClientCount,
      required this.existingClientCount});
}

class ClientGraphModel {
  // Dummy data for walk-in client statistics by time slot
  List<WalkInClientData> getWalkInClientData() {
    return [
      WalkInClientData(
          timeSlot: '9-10 AM',
          walkInCount: 10,
          newClientCount: 2,
          existingClientCount: 8),
      WalkInClientData(
          timeSlot: '10-11 AM',
          walkInCount: 20,
          newClientCount: 4,
          existingClientCount: 16),
      WalkInClientData(
          timeSlot: '11-12 PM',
          walkInCount: 25,
          newClientCount: 5,
          existingClientCount: 20),
      WalkInClientData(
          timeSlot: '12-1 PM',
          walkInCount: 30,
          newClientCount: 10,
          existingClientCount: 20),
      WalkInClientData(
          timeSlot: '1-2 PM',
          walkInCount: 10,
          newClientCount: 5,
          existingClientCount: 5),
      WalkInClientData(
          timeSlot: '2-3 PM',
          walkInCount: 30,
          newClientCount: 10,
          existingClientCount: 20),
      WalkInClientData(
          timeSlot: '3-4 PM',
          walkInCount: 30,
          newClientCount: 5,
          existingClientCount: 25),
      WalkInClientData(
          timeSlot: '4-5 PM',
          walkInCount: 30,
          newClientCount: 18,
          existingClientCount: 12),
      WalkInClientData(
          timeSlot: '5-6 PM',
          walkInCount: 40,
          newClientCount: 29,
          existingClientCount: 11),
      WalkInClientData(
          timeSlot: '6-7 PM',
          walkInCount: 20,
          newClientCount: 12,
          existingClientCount: 8),
    ];
  }
}
