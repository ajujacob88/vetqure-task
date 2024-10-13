import 'package:flutter/material.dart';

class StaffDetails {
  final String name;
  final String role;
  final String imageUrl;
  final String status;

  StaffDetails({
    required this.name,
    required this.role,
    required this.imageUrl,
    required this.status,
  });
}

class StaffModel {
  final List<StaffDetails> staff = [
    StaffDetails(
      name: 'Dr. James T',
      role: 'Sr. Surgeon & Pet Practitioner',
      imageUrl: 'assets/images/staff_images/1.png',
      status: 'Available',
    ),
    StaffDetails(
      name: 'Dr. Deepak M',
      role: 'Pet Practitioner',
      imageUrl: '',
      status: 'Leave',
    ),
    StaffDetails(
      name: 'Dr. Mathew T',
      role: 'Pet Practitioner',
      imageUrl: 'assets/images/staff_images/3.png',
      status: 'Leave',
    ),
    StaffDetails(
      name: 'Dr. Reena V',
      role: 'Pet Practitioner',
      imageUrl: 'assets/images/staff_images/2.png',
      status: 'Available',
    ),
    StaffDetails(
      name: 'Mr. Dileep K',
      role: 'Sr. Superintendent',
      imageUrl: 'assets/images/staff_images/4.png',
      status: 'Available',
    ),
    StaffDetails(
      name: 'Ms. Rahila S',
      role: 'Staff Nurse',
      imageUrl: 'assets/images/staff_images/5.png',
      status: 'Leave',
    ),
    StaffDetails(
      name: 'Mr. Ajay Gopalan',
      role: 'Staff nurse',
      imageUrl: 'assets/images/staff_images/6.png',
      status: 'Available',
    ),
    StaffDetails(
      name: 'Mr. Kurian V',
      role: 'PRO',
      imageUrl: 'assets/images/staff_images/1.png',
      status: 'Leave',
    ),
    StaffDetails(
      name: 'Ms. Sabu S',
      role: 'Security Guard',
      imageUrl: '',
      status: 'Available',
    ),
  ];
}
