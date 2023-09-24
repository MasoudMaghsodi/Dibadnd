import 'package:Dibadnd/component/widgets/appbar.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: SimpleAppBar(title: 'Notifications'),
      ),
      body: Container(
        color: Colors.white,
        child: ListTile(
          leading: SizedBox(
              height: 100,
              width: 100,
              child: Image.asset('assets/icon/logo.png')),
          title: Text('Save Big on SiriusXM'),
          subtitle:
              Text('new enjoy 4 months of non-stop music hhhhhhhhhhhhhhh'),
        ),
      ),
    );
  }
}
