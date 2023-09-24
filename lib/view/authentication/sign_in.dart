import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 30, 8, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sing In',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Not a member? Sign up',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                InfoTextField(
                  text: 'Email Address',
                ),
                SizedBox(
                  height: 25.0,
                ),
                InfoTextField(
                  text: 'Password',
                  icon: Icon(Icons.remove_red_eye),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'By clicking an option below, I agree to the ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: 'Terms of Use ',
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(
                          text: 'and have red the ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: 'Privacy Statement',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.05,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Sign in with groupon'),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text('Or sign in with:'),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        icon: SvgPicture.asset('assets/svg/facebook.svg'),
                        label: Text(
                          "Facebook",
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(color: Colors.black26)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: ElevatedButton.icon(
                        icon: SvgPicture.asset('assets/svg/google.svg',
                            height: 20),
                        label: Text(
                          "Google",
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: BorderSide(color: Colors.black26)),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Continue as Guest',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoTextField extends StatelessWidget {
  const InfoTextField({super.key, required this.text, this.icon});
  final String text;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(text),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon: icon,
            ),
          ),
        )
      ],
    );
  }
}
