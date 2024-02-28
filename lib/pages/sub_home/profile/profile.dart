import 'package:flutter/material.dart';
import 'package:symmatric/pages/sub_home/post.dart';
import 'package:symmatric/pages/sub_home/profile/profile_edit/profile_edit.dart';
import 'package:symmatric/pages/sub_home/profile/profile_setting/profile_setting.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  //final _username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileEdit(),));
              },
              icon: Icon(Icons.mode_edit_outline_outlined)),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileSetting(),));
              }, icon: Icon(Icons.settings_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // width: double.infinity,
              // height: 225,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, left: 15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(

                          maxRadius: 55,
                          backgroundColor: Colors.grey.shade300,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.person,
                                color: Colors.pink,
                                size: 80,
                              )
                          ),
                        ),
                        SizedBox(width: 20.0,),
                        Text(
                          AutofillHints.username,
                            //'${_username}',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('0',
                            style: TextStyle
                              (fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'josefin',
                                color: Colors.pink.shade700
                            ),),
                          Text('Posts',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'josefin',
                                color: Colors.pink.shade700
                            ),)
                        ],
                      ),
                      Column(
                        children: [
                          Text('0',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'josefin',
                                color: Colors.pink.shade700
                            ),),
                          Text('Followers',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'josefin',
                                color: Colors.pink.shade700
                            ),)
                        ],
                      ),
                      Column(
                        children: [
                          Text('0',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'josefin',
                                color: Colors.pink.shade700
                            ),),
                          Text('Following',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'josefin',
                                color: Colors.pink.shade700
                            ),)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Divider(
              color: Colors.pink.shade600,
              thickness: 6,
            ),
           Container(
             height: 500,
             width:400,
             color: Colors.red.shade50,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(
                   'Not post yet',
                   style: TextStyle(
                     color: Colors.black,
                       fontSize: 16,
                       fontWeight: FontWeight.w400
                   ),),
                 InkWell(
                     onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePost(),));
                     },
                     child: Text(
                       'Share your first post with us!',
                       style: TextStyle(
                           color: Colors.pink,
                           fontSize: 16,
                           fontWeight: FontWeight.w400
                       ),))
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
