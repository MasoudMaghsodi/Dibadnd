import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      actions: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 2, 0, 2),
            child: Container(
              height: 20,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      icon: Icon(Icons.search),
                      iconColor: Colors.black),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            color: Colors.grey,
            width: 1,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 5, 2),
            child: Container(
              height: 20,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Location',
                      icon: Icon(Icons.location_on),
                      iconColor: Colors.black),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class SimpleAppBar extends StatelessWidget {
  const SimpleAppBar({
    required this.title,
    this.icon,
  });
  final String title;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        title,
        textAlign: TextAlign.start,
        style: TextStyle(color: Colors.black),
      ),
      leading: icon,
    );
  }
}
