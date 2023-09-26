import 'package:flutter/material.dart';

class CateDetailList extends StatelessWidget {
  const CateDetailList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: Container(
                alignment: Alignment.centerLeft,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 15, 0, 8),
                      child: Icon(Icons.food_bank_outlined),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 15, 8, 8),
                      child: Text('Food'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
