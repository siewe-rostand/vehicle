import 'package:co_vehicle/views/confirm-registration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';

class AddPhoto extends StatefulWidget {
  const AddPhoto({Key key}) : super(key: key);

  @override
  _AddPhotoState createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {
  File imageFile;

  /// Get from gallery
  _getFromGallery() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  /// Get from Camera
  _getFromCamera() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _getFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _getFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Photo"),
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
                      "Ajouter une photo pour que vos covoitureurs vous reconnaissent",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 70,
                        child: imageFile == null
                            ? Image.asset('images/original.jpg')
                            : Future.delayed(Duration.zero,()async{
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ConfirmRegistration(imageFile: imageFile,)));
                        }),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Vous, seul.e',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                    ),
                    Divider(),
                    Text(
                      'Pas de filtre',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                    ),
                    Divider(),
                    Text(
                      'Pas de lunettes de soleil',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              color: Colors.black,
              child: TextButton(
                child: Text(
                  'Choisir une photo',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    textStyle:
                        TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
                onPressed: () {
                  _showPicker(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
