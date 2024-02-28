import 'package:flutter/material.dart';
import 'package:symmatric/pages/signin_page.dart';

import 'interests.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({super.key});

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            'Profile Setting',
          style: TextStyle(
            color: Colors.pink.shade800,
            fontWeight: FontWeight.w600,
            fontSize: 24,
            fontFamily: 'josefin',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Interests(),));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.favorite_border),
                          Spacer(),
                          Text('Interests',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16
                          ),),
                          Spacer(flex: 15),
                          Icon(Icons.keyboard_arrow_right_sharp, color: Colors.pinkAccent,),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Icon(Icons.notifications_none_sharp),
                        Spacer(),
                        Text('Privacy Policy',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16
                            )),
                        Spacer(flex: 15),
                        Icon(Icons.keyboard_arrow_right_sharp, color: Colors.pinkAccent,),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.new_releases),
                        Spacer(),
                        Text("What's new",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                          ),),
                        Spacer(
                          flex: 3,
                        ),
                        Text(
                            'Coming Soon',
                          style:TextStyle(
                              background: Paint()
                                ..strokeWidth = 20
                                ..color = Colors.green.shade200
                                ..strokeCap = StrokeCap.round
                                ..strokeJoin = StrokeJoin.round
                                ..style = PaintingStyle.stroke,
                            fontSize: 10,
                            fontWeight: FontWeight.w500
                          ),),
                        Spacer(flex: 15),
                        Icon(Icons.keyboard_arrow_right_sharp, color: Colors.pinkAccent,),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.support_agent),
                        Spacer(),
                        Text('Support',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16
                            )),
                        Spacer(
                          flex: 3 ,
                        ),
                        Text(
                          'Coming Soon',
                          style:TextStyle(
                              background: Paint()
                                ..strokeWidth = 20
                                ..color = Colors.green.shade200
                                ..strokeCap = StrokeCap.round
                                ..strokeJoin = StrokeJoin.round
                                ..style = PaintingStyle.stroke,
                              fontSize: 10,
                            fontWeight: FontWeight.w500
                          ),),
                        Spacer(flex: 15),
                        Icon(Icons.keyboard_arrow_right_sharp, color: Colors.pinkAccent,),
                      ],
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn(),));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.shade900,
                        blurRadius: 1,
                        spreadRadius: 0,
                        offset: Offset(10, 10),
                        blurStyle: BlurStyle.outer
                      )
                    ]),
                  child: Center(
                      child: Text(
                          'Log Out',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
