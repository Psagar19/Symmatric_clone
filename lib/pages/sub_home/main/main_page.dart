import 'package:flutter/material.dart';
import 'package:symmatric/pages/sub_home/main/search.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    spreadRadius: 1,
                    offset: Offset(1,0)
                  ),
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      spreadRadius: 1,
                      offset: Offset(-1,0)
                  )
                ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, left: 8.0),
                          child: CircleAvatar(
                            maxRadius: 20,
                            child: Image.asset('lib/images/5.png'),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Search(),));
                      },
                      child: Text(
                        'Symmatric',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontFamily: 'josefin',
                            fontSize: 24,
                            fontWeight: FontWeight.w600
                        ),

                      ),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Search(),));
                        },
                        icon: Icon(Icons.search, color: Colors.black,size: 30,))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
