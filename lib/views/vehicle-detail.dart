import 'package:co_vehicle/views/password.dart';
import 'package:co_vehicle/views/register.dart';
import 'package:flutter/material.dart';

class VehicleDetail extends StatelessWidget {
  const VehicleDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle Detail'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Text("Peux-t’on en savoir plus sur votre bougna ?",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),

                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.directions_car, size: 70,),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Marque',
                                border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Immatriculation',
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
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
                  Icon(Icons.navigate_before_rounded,size: 45,color: Colors.black87,),
                  Container(
                    alignment: Alignment.bottomCenter,
                    color: Colors.black87,
                    child: Row(
                      children: [
                        TextButton(
                          child: Text('SUIVANT',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)
                          ),
                          onPressed: (){
                            Navigator.of(context);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>PasswordSet()));
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
    );
  }
}
