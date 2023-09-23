import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  var selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 250,
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'SliverAppBar',
                style: TextStyle(color: Colors.black),
              ),
              background: GestureDetector(
                onTap: () {},
                child: Image.asset('assets/icon/logo.png'),
              ),
            ),
            actions: [
              SvgPicture.asset(
                'assets/svg/heart-icon.svg',
                height: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.share,
                color: Colors.black,
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    Divider(
                      color: Colors.black26,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.sell_outlined),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Apply',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          title: Text('Extra 10% off, up to \$50'),
                          subtitle: Text('Code PROMO, Ends 9/22'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      title: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                  'Single-Day Admission for One Child\n(Ages 3-15)'),
                            ],
                          ),
                          SizedBox(
                            height: 5,
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
                        ],
                      ),
                      leading: Radio(
                        value: 1,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                  'Single-Day Admission for One Child\n(Ages 3-15)'),
                            ],
                          ),
                          SizedBox(
                            height: 5,
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
                        ],
                      ),
                      leading: Radio(
                        value: 2,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                      ),
                    ),
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: OverflowBar(
          overflowAlignment: OverflowBarAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Buy Now'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
