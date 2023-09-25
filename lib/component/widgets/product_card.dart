import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.originalPrice,
    required this.discount,
    required this.discountPercent,
    required this.description,
    this.address,
    this.ratings,
  });
  final Image image;
  final String title;
  final String? address;
  final int? ratings;
  final double originalPrice;
  final double discount;
  final int discountPercent;
  final String description;

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
              image,
              SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(address!),
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
                  Text(' ${ratings} Rating'),
                ],
              ),
              Row(
                children: [
                  Text(
                    '\$${originalPrice}',
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
                    '\$${discount}',
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
                      '${discountPercent}% Off',
                      style: TextStyle(
                          color: Colors.green.shade700,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
              Text('${description}')
            ],
          ),
        ),
      ),
    );
  }
}
