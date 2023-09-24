import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 300,
          width: double.infinity,
          color: Colors.grey.shade200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/icon/logo.png'),
              SizedBox(
                height: 15,
              ),
              Text(
                'Bird Kingdom',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text('5651 River Road,Nigara Falls'),
              Row(
                children: [
                  Text('4.5 '),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 24,
                    itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Text(' 16,012 Rating'),
                ],
              ),
              Row(
                children: [
                  Text(
                    '\$18.02',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '\$16',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    color: Colors.lightGreenAccent.shade200,
                    child: Text(
                      '11% Off',
                      style: TextStyle(
                          color: Colors.green.shade700,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
              Text('11% Off - Single-Day Admission for One Child(Ages 3-15)')
            ],
          ),
        ),
      ),
    );
  }
}
