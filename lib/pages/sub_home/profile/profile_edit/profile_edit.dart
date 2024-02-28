import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:symmatric/pages/sub_home/profile/profile_edit/password_account.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();
  final _identity = TextEditingController();
  final _birthdate = TextEditingController();
  String? _gender;
  bool _ismale = true;

  final List<String> Gender = ['Male' , 'Female' , 'Other' , 'None'];

  @override
  void initState() {
    _birthdate.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            'Edit Profile',
          style: TextStyle(
            color: Colors.pink.shade800,
            fontWeight: FontWeight.w600,
            fontSize: 24,
            fontFamily: 'josefin',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, right: 20.0, left: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              TextFormField(
                controller: _username,
                keyboardType: TextInputType.text,
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  hintText: 'Username',
                  prefixIcon: Icon(Icons.person_outline),
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
                controller: _email,
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.blue,
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
                controller: _phone,
                keyboardType: TextInputType.phone,
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  prefixIcon: Icon(Icons.phone_outlined),
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
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      enabled: true,
                      controller: _birthdate,
                      readOnly: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.calendar_month),
                        hintText: 'Date of Birth',
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
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2100));
                        if(pickedDate != null) {
                          print(pickedDate);
                          String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                          print(formattedDate);
                          setState(() {
                            _birthdate.text = formattedDate;
                          });
                        } else {}
                      },
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child:
                    DropdownButtonFormField <String>(
                      value: _gender,
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          setState(() {
                            _gender = newValue;
                          });
                        }
                      },
                      items: Gender.map((String _gender) {
                        return DropdownMenuItem(
                          value: _gender,
                          child: Text(
                            _gender,
                            style: TextStyle(color: Colors.black, fontSize: 14.0), // Adjust the font size as needed
                          ),
                        );
                      }).toList(),
                      decoration: const InputDecoration(
                        fillColor: Colors.black,
                        labelText: 'Gender',
                        hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                          borderSide: BorderSide(color: Colors.pink)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10),),
                            borderSide: BorderSide(color: Colors.pink)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10),),
                            borderSide: BorderSide(color: Colors.pink)
                        )
                      ),
                      style: const TextStyle(fontSize: 14.0),
                      dropdownColor: Colors.white,
                      // Adjust the font size of the selected item
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: _identity,
                keyboardType: TextInputType.text,
                cursorColor: Colors.blue,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'This is your identity in Symmatric',
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
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordAccount(),));
                },
                readOnly: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  hintText: 'Password and Account',
                  suffixIcon: Icon(Icons.arrow_forward_ios_sharp, size: 20, color: Colors.pink,),
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
              InkWell(
                onTap: () => null,
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.shade900,
                        spreadRadius: 2,
                        blurRadius: 2,
                        blurStyle: BlurStyle.outer,
                        offset: Offset(10,11)
                      )]
                  ),
                  child: Center(
                    child: Text(
                      'Save',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
