import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/widgets/appbar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: SimpleAppBar(title: 'Notifications'),
      ),
      body: const Center(
        child: Text('notification screen'),
      ),
    );
  }
}
