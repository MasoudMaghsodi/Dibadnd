import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      actions: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 2, 0, 2),
            child: Container(
              height: 20,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      icon: Icon(Icons.search),
                      iconColor: Colors.black),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Container(
            color: Colors.grey,
            width: 1,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 5, 2),
            child: Container(
              height: 20,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Location',
                      icon: Icon(Icons.location_on),
                      iconColor: Colors.black),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class SimpleAppBar extends StatelessWidget {
  const SimpleAppBar({
    required this.title,
    this.icon,
  });
  final String title;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.5,
      backgroundColor: Colors.white,
      title: Text(
        title,
        textAlign: TextAlign.start,
        style: TextStyle(color: Colors.black),
      ),
      leading: icon,
    );
  }
}

// class SliverAppBarWidget extends StatefulWidget {
//   const SliverAppBarWidget({
//     super.key,
//   });

//   @override
//   State<SliverAppBarWidget> createState() => _SliverAppBarWidgetState();
// }

// class _SliverAppBarWidgetState extends State<SliverAppBarWidget> {
//   bool _pinned = true;
//   bool _snap = false;
//   bool _floating = false;
//   late final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             pinned: _pinned,
//             snap: _snap,
//             floating: _floating,
//             expandedHeight: 250,
//             backgroundColor: Colors.white,
//             leading: Icon(
//               Icons.arrow_back,
//               color: Colors.black,
//             ),
//             flexibleSpace: FlexibleSpaceBar(
//               title: Text(
//                 'SliverAppBar',
//                 style: TextStyle(color: Colors.black),
//               ),
//               background: GestureDetector(
//                 onTap: () {},
//                 child: Image.asset('assets/icon/logo.png'),
//               ),
//             ),
//             actions: [
//               SvgPicture.asset(
//                 'assets/svg/heart-icon.svg',
//                 height: 20,
//               ),
//               SizedBox(
//                 width: 10,
//               ),
//               Icon(
//                 Icons.share,
//                 color: Colors.black,
//               ),
//             ],
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//                 return child;
//               },
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: OverflowBar(
//           overflowAlignment: OverflowBarAlignment.center,
//           children: <Widget>[
//             Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.black26),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   child: Text('Buy Now'),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
