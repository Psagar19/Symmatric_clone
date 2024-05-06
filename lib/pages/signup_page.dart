import 'package:flutter/material.dart';
import 'package:symmatric/common/container.dart';
import 'package:symmatric/common/textfield.dart';
import 'package:symmatric/pages/signin_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                children: [
                  const Text(
                    'Symmatric',
                    style: TextStyle(
                        fontFamily: 'josefin',
                        fontSize: 30,
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: 30.0),
                  CircleAvatar(
                    maxRadius: 30,
                    child: Image.asset('lib/images/5.png'),
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        fontFamily: 'josefin',
                        fontSize: 30,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),

            Container(
              child: Column(
               children: [
                 MyTextField(
                   validat: () {},
                   controller: usernameController,
                   textInputType: TextInputType.text,
                   hint: "Username",
                   PreIcon: Icon(Icons.person),
                 ),
                 MyTextField(
                     controller: emailController,
                     textInputType: TextInputType.emailAddress,
                     hint: "Email Address",
                     PreIcon: Icon(Icons.email_outlined)),
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
                 InkWell(
                     onTap: () {},
                     child: MyContainer(title: "SignUp")),
               ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an acoount?',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignIn(),
                                ));
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'By signing up you agree to our',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Terms & Conditions',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ))
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  ScaffoldMessenger showSnakbar(String Contant) {
    return ScaffoldMessenger(child: Text(Contant));
  }
}
