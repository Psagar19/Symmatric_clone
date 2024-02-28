import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Search',
          style: TextStyle(
              color: Colors.deepPurple,
              fontFamily: 'josefin',
              fontSize: 24,
              fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller: _search,
                keyboardType: TextInputType.text,
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                    hintText: 'Search Users',
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink.shade500),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink.shade500),
                    borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink.shade500),
                  borderRadius: BorderRadius.circular(10))
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
