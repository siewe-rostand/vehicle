import 'package:co_vehicle/views/add-photo.dart';
import 'package:co_vehicle/views/vehicle-detail.dart';
import 'package:flutter/material.dart';

class PasswordSet extends StatefulWidget {
  const PasswordSet({Key key}) : super(key: key);

  @override
  _PasswordSetState createState() => _PasswordSetState();
}

class _PasswordSetState extends State<PasswordSet> {
  bool _obscureText = false;

  String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Password"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: ListView(
                    children: [
                      Text("Un mot de passe pour se connecter",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Tapez votre mot de passe...',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide.none
                                ),
                              ),
                              obscureText: _obscureText,
                            ),
                          ),
                          IconButton(onPressed: _toggle, icon: Icon(Icons.remove_red_eye)),
                        ],
                      ),
                      Divider(thickness: 3,color: Colors.black,),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Confirmer le mot de passe...',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide.none
                                ),
                              ),
                              obscureText: _obscureText,
                            ),
                          ),
                          IconButton(onPressed: _toggle, icon: Icon(Icons.remove_red_eye)),
                        ],
                      ),
                      Divider(thickness: 3,color: Colors.black,)
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
                    Icon(Icons.navigate_before_rounded,size: 45,color: Colors.black87,),
                    Container(
                      alignment: Alignment.bottomCenter,
                      color: Colors.black87,
                      child: Row(
                        children: [
                          TextButton(
                            child: Text('Ignorer',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            style: ElevatedButton.styleFrom(
                                textStyle: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)
                            ),
                            onPressed: (){
                              Navigator.of(context);
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddPhoto()));
                            },
                          ),
                          Icon(Icons.navigate_next_rounded,size: 25,color: Colors.white,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
