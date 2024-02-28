import 'package:flutter/material.dart';

class PasswordAccount extends StatefulWidget {
  const PasswordAccount({super.key});

  @override
  State<PasswordAccount> createState() => _PasswordAccountState();
}

class _PasswordAccountState extends State<PasswordAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Password & Account', style: TextStyle(
          color: Colors.pink.shade800,
          fontWeight: FontWeight.w600,
          fontSize: 24,
          fontFamily: 'josefin',
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 5,),
             GestureDetector(
               onTap: () => null,
               child: Container(
                 width: double.infinity,
                 height: 50,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(10),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey,
                       blurRadius: 1,
                       spreadRadius: 1,
                       offset: Offset(1, 0)
                     ),
                     BoxShadow(
                         color: Colors.grey,
                         blurRadius: 2,
                         spreadRadius: 1,
                         offset: Offset(-1,-0)
                     )
                   ]
                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     children: [
                       Icon(Icons.delete_outline),
                       Spacer(
                       ),
                       Text('Delete Account'),
                       Spacer(
                         flex: 20,
                       ),
                       Icon(Icons.keyboard_arrow_right_outlined)
                     ],
                   ),
                 ),
               ),
             ),
            AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              backgroundColor: Colors.grey.shade300,
              title: Text('Delete'),
            )
          ],
        ),
      ),
    );
  }
}
