import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/widgets/appbar.dart';
import 'package:flutter_application_1/component/widgets/custom_button.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: SimpleAppBar(title: 'Categories'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Popular Categories',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150,
                      childAspectRatio: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(8)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            // Image.asset(
                            //   'assets/icon/logo.png',
                            //   fit: BoxFit.cover,
                            // ),
                            Text(
                              'text',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'All Categories',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Local',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Divider(),
              CustomButton(
                height: 55,
                text: 'beauty',
              ),
              SizedBox(
                height: 480,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return CustomButton(
                      height: 55,
                      text: 'beauty',
                      trailingicon: Icons.keyboard_arrow_down_sharp,
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Goods',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Divider(),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return CustomButton(
                      height: 55,
                      text: 'beauty',
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Travel',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Divider(),
              CustomButton(
                height: 55,
                text: 'All Travel Deals',
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return CustomButton(
                      height: 55,
                      text: 'beauty',
                      trailingicon: Icons.keyboard_arrow_down_sharp,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
