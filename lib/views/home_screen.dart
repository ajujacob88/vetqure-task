import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Track the selected button by storing an index
  int selectedIndex = 0;
  // Define the buttons with text and icons
  final List<Map<String, dynamic>> buttons = [
    {'icon': Icons.dashboard, 'label': 'Dashboard'},
    {'icon': Icons.calendar_today, 'label': 'Calendar'},
    {'icon': Icons.people, 'label': 'Client'},
    {'icon': Icons.person, 'label': 'Profile'},
    {'icon': Icons.attach_money, 'label': 'Finance'},
    {'icon': Icons.inventory, 'label': 'Inventory'},
    {'icon': Icons.shopping_cart, 'label': 'Order'},
    {'icon': Icons.logout, 'label': 'Logout'},
  ];
  @override
  Widget build(BuildContext context) {
    // Get screen width
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          // Left panel (20% of screen width)
          Container(
            width: screenWidth * 0.2, // 20% of the screen width
            color: const Color(0xFF00358C),
            child: Column(
              children: [
                const SizedBox(height: 40), // Add space at the top
                // Profile picture button
                ElevatedButton(
                  onPressed: () {
                    // Add action when the button is pressed
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(), // Make the button circular
                    padding: const EdgeInsets.all(
                        10), // Padding around the CircleAvatar
                  ),
                  child: const CircleAvatar(
                    radius: 60, // Profile picture size
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),

                const SizedBox(height: 10),
                // Profile name
                const Text(
                  'Aju Jacob', // Replace with your user's name
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20), // Top padding
                // ElevatedButton(
                //   onPressed: () {},
                //   child: const Text('Dashboard'),
                // ),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: const Text('Calender'),
                // ),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: const Text('Client'),
                // ),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: const Text('Profile'),
                // ),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: const Text('Finance'),
                // ),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: const Text('Inventory'),
                // ),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: const Text('Order'),
                // ),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: const Text('Logout'),
                // ),

                // Button list

                ...buttons.asMap().entries.map((entry) {
                  int index = entry.key;
                  String label = entry.value['label'];
                  IconData icon = entry.value['icon'];

                  bool isSelected = index == selectedIndex;

                  return ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: isSelected
                          ? Colors.white
                          : Colors.transparent, // Button background color
                      backgroundColor: isSelected
                          ? Colors.white
                          : Colors.transparent, // Text and icon color
                      elevation: 0, // Optional: remove shadow
                    ),
                    child: Row(
                      children: [
                        Icon(icon,
                            color: isSelected ? Colors.blue : Colors.white),
                        SizedBox(width: 10), // Space between icon and text
                        Text(
                          label,
                          style: TextStyle(
                              color: isSelected
                                  ? Color.fromARGB(255, 10, 54, 21)
                                  : const Color.fromARGB(255, 166, 10, 10)),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
          // Main content (80% of screen width)
          Container(
            width: screenWidth * 0.8, // 80% of the screen width
            padding: const EdgeInsets.all(20), // Padding around the content
            color: Colors.white,
            child: const Center(
              child: Text(
                'Main Content Area with Charts and Details',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
