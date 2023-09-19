import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final String text;
  final IconData? leadingicon;
  final IconData? trailingicon;

  CustomButton({
    required this.height,
    required this.text,
    this.leadingicon,
    this.trailingicon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: height,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                if (leadingicon != null)
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 8, 17, 8),
                    child: Icon(leadingicon),
                  ),
                if (leadingicon == null)
                  SizedBox(
                    width: 10.0,
                  ),
                Container(
                    height: height - 1,
                    alignment: Alignment.centerLeft,
                    child: Text(text)),
                Expanded(
                  child: Container(),
                ),
                if (trailingicon != null)
                  Container(
                    height: height - 1,
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          width: 1,
                          color: Colors.black26,
                        ),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(trailingicon),
                    ),
                  ),
              ],
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade400,
              indent: leadingicon == null ? 0.0 : 50.0,
            )
          ],
        ),
      ),
    );
  }
}
