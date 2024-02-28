import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  final _caption = TextEditingController();
  final _hashtag = TextEditingController();

  final List<String> Hashtag = ['#cargo', '#gandhidhamstyle', '#symmatricstylechallenge', '#Arabic', '#Artsy Style', '#Athleisure Fashion', '#Biker', '#Biker Style',
    '#Bohemian Fashion Style', '#Business Casuals', '# Camp Style', '#Casual Wear', '#Chic Fashion'];
  List<String> selectedCHashtag = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Share Your Style',
          style: TextStyle(
              color: Colors.pink.shade800,
              fontFamily: 'josefin',
              fontSize: 24,
              fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
              child: Expanded(
                child: Container(
                  color: Colors.grey.shade200,
                  width: 400,
                  height: 350,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.camera_alt_outlined,
                        color: Colors.pinkAccent,
                        size: 70,
                      )),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _caption,
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.blue,
                    maxLines: 2,
                    decoration: InputDecoration(
                      hintText: 'Write a caption...',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink),),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: _hashtag,
                    readOnly: true,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 18.0),
                        child: Text('#', style: TextStyle(fontSize: 25),),
                      ),
                      hintText: 'Find your Style a hashtag',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.pink),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [

                            BoxShadow(
                                color: Colors.pink.shade900,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(10,11),
                                blurStyle: BlurStyle.outer

                            ),
                          ]
                      ),
                      child: Center(
                        child: Text(
                          'Post',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
