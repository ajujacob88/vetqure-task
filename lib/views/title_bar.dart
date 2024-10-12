import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:vetqure_task/views/widgets/custom_buttons.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      color: Colors.white, // Background color for title bar
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //const SizedBox(width: 10),
          const SizedBox(width: 16.0), // Adjust width as needed

          // Title on the left
          const Text(
            'Title',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),

          // Buttons on the right
          buildButtonWithIconText('Message', CupertinoIcons.chat_bubble_fill),
          const SizedBox(width: 18.0),
          buildButtonWithIconText('Cart', CupertinoIcons.cart_fill),
          const SizedBox(width: 18.0),
          buildButtonWithIconText('Notification', Icons.notifications),
          //   const SizedBox(width: 5.0),
          const SizedBox(
            height: 34, // Set the height of the vertical divider
            child: VerticalDivider(
              width: 30, // Width between the buttons
              thickness: 1,
              color: Colors.black,
            ),
          ),
          // Logout Button with Profile, Name, and Down Arrow
          //  const SizedBox(width: 5.0),

          const Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              SizedBox(width: 8.0),

              Text(
                'Aju Jacob',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8.0),

              // Down arrow icon
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black, // Icon color
              ),
              SizedBox(width: 14.0),
            ],
          ),
        ],
      ),
    );
  }
}
