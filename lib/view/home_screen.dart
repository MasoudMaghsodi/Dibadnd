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
            return ProductCardWidget(
              image: Image.asset('assets/icon/logo.png'),
              title: 'Bird Kingdom',
              address: '5651 River Road,Nigara Falls',
              ratings: 1268,
              originalPrice: 18.02,
              discount: 16,
              discountPercent: 11,
              description: '11% Off - Single-Day Admission for One Child(Ages 3-15)',
            );
          },
        ),
      ),
    );
  }
}
