import 'package:flutter/material.dart';
import 'package:vetqure_task/views/title_bar.dart';
import 'side_panel.dart';
import 'dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0; // Track the selected button

  // Define the buttons with text and icons
  final List<Map<String, dynamic>> buttons = [
    {'icon': Icons.view_comfy_alt, 'label': 'Dashboard'},
    {'icon': Icons.calendar_month_sharp, 'label': 'Calendar'},
    {'icon': Icons.people, 'label': 'Client'},
    {'icon': Icons.person, 'label': 'Profile'},
    {'icon': Icons.attach_money, 'label': 'Finance'},
    {'icon': Icons.inventory, 'label': 'Inventory'},
    {'icon': Icons.shopping_cart, 'label': 'Order'},
    {'icon': Icons.logout, 'label': 'Logout'},
  ];

  // Method to get the currently selected content view
  Widget _getSelectedContent() {
    switch (selectedIndex) {
      case 0:
        return const Dashboard(); // Dashboard view
      case 1:
        return const Center(
            child: Column(
          children: [
            TitleBar(),
            SizedBox(
              height: 300,
            ),
            Text('Calendar Content'),
          ],
        ));
      case 2:
        return const Center(child: Text('Client Content'));

      case 3:
        return const Center(
            child: Column(
          children: [
            TitleBar(),
            SizedBox(
              height: 300,
            ),
            Text('Profile Content'),
          ],
        ));
      case 4:
        return const Center(child: Text('Finance Content'));
      case 5:
        return const Center(child: Text('Inventory Content'));
      case 6:
        return const Center(child: Text('Order Content'));
      case 7:
        return const Center(child: Text('Logout Content'));
      default:
        return Dashboard();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          // Left panel (20% of screen width)
          SidePanel(
            buttons: buttons,
            selectedIndex: selectedIndex,
            onButtonPressed: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
          // Main content (85% of screen width)
          Container(
            width: screenWidth * 0.85,
            //padding: const EdgeInsets.all(20),
            // color: const Color.fromARGB(31, 0, 0, 0),
            color: const Color.fromARGB(31, 149, 149, 149),
            child: _getSelectedContent(), // Display selected content
          ),
        ],
      ),
    );
  }
}
