import 'package:flutter/material.dart';
import 'package:vetqure_task/models/staff_details.dart';

class StaffAvailabilityWidget extends StatelessWidget {
  final StaffModel _staffModel = StaffModel();

  StaffAvailabilityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _staffModel.staff.length,
      itemBuilder: (context, index) {
        final staff = _staffModel.staff[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(staff.imageUrl),
            radius: 20,
            child: staff.imageUrl.isEmpty
                ? const Icon(Icons.person) // Dummy icon when imageUrl is empty
                : null, // No child if the image is available
          ),
          title: Text(
            staff.name,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(staff.role),
          trailing: Container(
            width: 90,
            height: 30,
            decoration: BoxDecoration(
              color: staff.status == 'Leave'
                  ? const Color.fromARGB(255, 253, 0, 0)
                  : staff.status == 'Available'
                      ? const Color.fromARGB(255, 2, 189, 80)
                      : const Color.fromARGB(255, 255, 153, 0),
              borderRadius: BorderRadius.circular(12.0), // Rounded corners
            ),
            child: Center(
              child: Text(
                staff.status,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white, // White text color
                  fontWeight:
                      FontWeight.normal, // Optional for better visibility
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
