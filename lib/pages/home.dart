import 'package:flutter/material.dart';
import 'package:symmatric/pages/signup_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(child: Image.asset('lib/images/5.png'),),
                SizedBox(width: 5,),
                Text('Symmatric', style: TextStyle(fontSize: 30, color: Colors.pinkAccent, fontWeight: FontWeight.w500),)
              ],
            ),),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 400,
              child: Image.asset('lib/images/4.jpg'),
            ),
          ),
          Expanded(child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 20.0),
                  child: RichText(
                    text: TextSpan(style: TextStyle(color: Colors.deepPurple, fontSize: 20, fontWeight: FontWeight.w600),
                        children: <TextSpan>[
                          TextSpan(text: 'Share '),
                          TextSpan(text: 'your Outfit of the Day! ', style: TextStyle(color: Colors.pinkAccent)),
                          TextSpan(text: 'Rate & flaunt '),
                          TextSpan(text: 'your favourite looks', style: TextStyle(color: Colors.pinkAccent))
                      ]
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 20.0, top: 200),
                  child: InkWell(
                     onTap: () {
                       Navigator.push(context,
                       MaterialPageRoute(builder: (context) => SignUp(),));
                     },
                    child: Container(
                      width: 200,
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
                            offset: Offset(10,15),
                          ),
                        ]
                      ),
                      child: Center(
                          child: Text(
                              'Get Started',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          )),
                    ),
                  ),
                )
              ],
            ),
          ))

        ],
      ),
    );
  }
}
