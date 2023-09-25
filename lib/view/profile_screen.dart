import 'package:Dibadnd/component/widgets/appbar.dart';
import 'package:Dibadnd/component/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: SimpleAppBar(title: 'My Stuff'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.grey.shade100,
                  height: 40,
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('My Groupon'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 8,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return CustomButton(
                        height: 55,
                        text: 'shop',
                        leadingicon: Icons.access_alarm_sharp,
                      );
                    },
                  ),
                ),
                Container(
                  color: Colors.grey.shade100,
                  height: 40,
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('My Stting'),
                ),
                SizedBox(
                  height: 550,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return CustomButton(
                        height: 55,
                        text: 'shop',
                        leadingicon: Icons.access_alarm_sharp,
                      );
                    },
                  ),
                ),
              ],
            ),
          )
          // CustomButton(
          //   height: 60,
          //   text: 'shop',
          //   leadingicon: Icons.access_alarm_sharp,
          //   trailingicon: Icons.keyboard_arrow_down_outlined,
          // ),

          // SingleChildScrollView(
          //   child: Column(
          //     children: [
          //       ListTile(
          //         contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
          //         leading: Icon(Icons.favorite), // Icon on the left
          //         title: InkWell(
          //           onTap: () {
          //             // Handle the tap event for the text
          //             // print('Text Clicked!');
          //           },
          //           child: Text(
          //             'Clickable Text',
          //             style: TextStyle(
          //               color: Colors.black,
          //               // decoration: TextDecoration.underline,
          //             ),
          //           ),
          //         ),
          //       ),
          //       Divider(
          //         color: Colors.black, // Underline color
          //         thickness: 1.0, // Underline thickness
          //       ),
          //       // Other columns can be added here
          //     ],
          //   ),
          // ),
          ),
    );
  }
}
//         body: Column(
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 scrollDirection: Axis.vertical,
//                 itemCount: 12,
//                 itemBuilder: (context, index) {
//                   if (index == 0) {
//                     // Display title for the first section
//                     return Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         'My Groupons',
//                         style: TextStyle(
//                             fontSize: 24, fontWeight: FontWeight.bold),
//                       ),
//                     );
//                   } else if (index == 3) {
//                     // Display title for the second section
//                     return Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         'My Settings',
//                         style: TextStyle(
//                             fontSize: 24, fontWeight: FontWeight.bold),
//                       ),
//                     );
//                   } else {
//                     // Display clickable rows
//                     return _buildClickableRow(context, index);
//                   }
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildClickableRow(BuildContext context, int index) {
//     List<String> pageNames = [
//       'My Groupons',
//       'Groupon Credits',
//       'Payment Methods',
//       'Shipping Addresses',
//       'Customer Support',
//       'Notification Settings',
//       'Preferences',
//       'Email Preferences',
//       'Sell on Groupon',
//       'Accessibility',
//       'About Groupon',
//       'Sign Out'
//     ];

//     return InkWell(
//       onTap: () {
//         if (index >= 0 && index < pageNames.length) {
//           String pageName = pageNames[index];
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => AnotherPage(title: pageName),
//             ),
//           );
//         } else {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('You clicked on Row $index')),
//           );
//         }
//       },
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             Text('${pageNames[index]}'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class AnotherPage extends StatelessWidget {
//   final String title;

//   const AnotherPage({required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: Text('This is another page for $title'),
//       ),
//     );
//   }
// }
