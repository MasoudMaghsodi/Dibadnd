import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/widgets/appbar.dart';
import 'package:flutter_application_1/component/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarWidget(),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ProductCardWidget();
          },
        ),
      ),
    );
  }
}
