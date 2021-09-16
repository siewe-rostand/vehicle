import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';

class ConfirmRegistration extends StatefulWidget {
  const ConfirmRegistration({Key key, this.imageFile}) : super(key: key);

  final File imageFile;

  @override
  _ConfirmRegistrationState createState() => _ConfirmRegistrationState();
}

class _ConfirmRegistrationState extends State<ConfirmRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Information"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Vous êtes magnifique !",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(70)),
                        child: CircleAvatar(
                          radius: 70,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: Image.file(
                              widget.imageFile,
                              width: 70,
                              height: 70,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Yaya',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    Divider(),
                    Text(
                      '31 ans',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.navigate_before_rounded,
                    size: 45,
                    color: Colors.black87,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    color: Colors.black87,
                    child: Row(
                      children: [
                        TextButton(
                          child: Text(
                            'Peux mieux faire',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.bold)),
                          onPressed: () {},
                        ),
                        TextButton(
                          child: Text(
                            'SPLENDIDE',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.bold)),
                          onPressed: () {},
                        ),
                      ],
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
