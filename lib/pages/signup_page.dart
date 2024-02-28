import 'package:flutter/material.dart';
import 'package:symmatric/pages/signin_page.dart';
import 'package:symmatric/pages/sub_home/profile/followers_followings.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _ispasswordhidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                child: Column(
                  children: [
                    Text('Symmatric', style: TextStyle(fontFamily: 'josefin',fontSize: 30, color: Colors.pinkAccent, fontWeight: FontWeight.w900),),
                    SizedBox(height: 20,),
                    CircleAvatar(
                      maxRadius: 30,
                      child: Image.asset('lib/images/5.png'),
                    ),
                    SizedBox(height: 20,),
                    Text('Sign Up', style: TextStyle(fontFamily: 'josefin',fontSize: 30, color: Colors.deepPurple, fontWeight: FontWeight.w300),),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          cursorColor: Colors.blue,
                          controller: _username,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: 'Username',
                              prefixIcon: Icon(Icons.perm_identity_outlined,),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink.shade500),
                              borderRadius: BorderRadius.circular(10),),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink.shade500),
                              borderRadius: BorderRadius.circular(10),),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink.shade500),
                              borderRadius: BorderRadius.circular(10),),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          cursorColor: Colors.blue,
                          controller: _email,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Email Address',
                            prefixIcon: Icon(Icons.email_outlined),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink.shade500),
                              borderRadius: BorderRadius.circular(10),),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink.shade500),
                              borderRadius: BorderRadius.circular(10),),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          cursorColor: Colors.blue,
                          controller: _password,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: _ispasswordhidden,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _ispasswordhidden
                                  ? Icons.visibility
                                  : Icons.visibility_off
                                ),
                                onPressed: () {
                                  setState(() {
                                    _ispasswordhidden =! _ispasswordhidden;
                                  });
                                },
                              ),
                              hintText: 'Password',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink.shade500),
                              borderRadius: BorderRadius.circular(10),),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink.shade500),
                              borderRadius: BorderRadius.circular(10),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 13.0, top: 40),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      blurStyle: BlurStyle.outer,
                                      color: Colors.pink.shade900,
                                      blurRadius: 3,
                                      spreadRadius: 0,
                                      offset: Offset(10,11),
                                    ),
                                  ]
                              ),
                              child: Center(
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(height: 60,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an acoount?', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => SignIn(),)
                                  );},
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
                            Text('By signing up you agree to our', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),),
                            TextButton(onPressed: () {}, child: Text('Terms & Conditions', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Expanded(
              //   child: Container(
              //     width: double.infinity,
              //     color: Colors.green,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
