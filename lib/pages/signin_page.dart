import 'package:flutter/material.dart';
import 'package:symmatric/common/container.dart';
import 'package:symmatric/common/textfield.dart';
import 'package:symmatric/pages/signup_page.dart';
import 'package:symmatric/pages/sub_home/bottombar.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Symmatric', style: TextStyle(fontFamily: 'josefin',fontSize: 30, color: Colors.pinkAccent, fontWeight: FontWeight.w900),),
            CircleAvatar(
              maxRadius: 30,
              child: Image.asset('lib/images/5.png'),
            ),
            Text('Sign In', style: TextStyle(fontFamily: 'josefin',fontSize: 30, color: Colors.deepPurple, fontWeight: FontWeight.w300),),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      MyTextField(
                          controller: emailController,
                          textInputType: TextInputType.emailAddress,
                          hint: "Email Address",
                          PreIcon: Icon(Icons.email_outlined)
                      ),
                      MyTextField(
                        obscureText: isPasswordHidden,
                        controller: passwordController,
                        textInputType: TextInputType.visiblePassword,
                        hint: "Password",
                        PreIcon: Icon(Icons.lock_outline),
                        Suffixicon: IconButton(
                          icon: Icon(
                              isPasswordHidden
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              isPasswordHidden = !isPasswordHidden;
                            });
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  color: Colors.pink.shade500,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ],
                      ),



                    ],
                  ),
                ),
              ),
            ),
            InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => SignUp(),));
                },
                child: MyContainer(title: "Sign In")
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an acoount? ", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp(),)
                      );},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    )),
              ],
            ),
            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BottomPage(),));
            }, child: Text('Main Page ==>'))


            // Expanded(
            //   child: Container(
            //     width: double.infinity,
            //     color: Colors.green,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
