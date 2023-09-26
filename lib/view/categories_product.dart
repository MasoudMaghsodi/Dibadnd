import 'package:Dibadnd/component/widgets/categories_detail_list.dart';
import 'package:Dibadnd/component/widgets/product_card.dart';
import 'package:flutter/material.dart';

class CategoriesProductScreen extends StatelessWidget {
  const CategoriesProductScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
              alignment: Alignment.centerLeft,
              child: Text(
                'Categorie title',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
            CateDetailList(),
            ProductCardWidget(
              image: Image.asset('assets/icon/logo.png'),
              title: 'Bird Kingdom',
              address: '5651 River Road,Nigara Falls',
              ratings: 1268,
              originalPrice: 18.02,
              discount: 16,
              discountPercent: 11,
              description:
                  '11% Off - Single-Day Admission for One Child(Ages 3-15)',
            ),
          ],
        ),
      )),
    );
  }
}
