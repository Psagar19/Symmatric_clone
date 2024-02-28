import 'package:flutter/material.dart';
import 'package:symmatric/pages/signup_page.dart';
import 'package:symmatric/pages/sub_home/bottombar.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                    Text('Sign In', style: TextStyle(fontFamily: 'josefin',fontSize: 30, color: Colors.deepPurple, fontWeight: FontWeight.w300),),
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
                          controller: _email,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: 'Email Address',
                              prefixIcon: Icon(Icons.email_outlined),
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
                        Padding(
                          padding: const EdgeInsets.only(right: 13.0, top: 40),
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(context,
                              //     MaterialPageRoute(builder: (context) => SignUp(),));
                            },
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
                                    'Sign In',
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
                        // Text(
                        //   textAlign: TextAlign.center,
                        //     'Sign In with',
                        //   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.deepPurple),
                        // ),
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
