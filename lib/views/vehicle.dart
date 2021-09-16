import 'package:co_vehicle/views/vehicle-detail.dart';
import 'package:flutter/material.dart';

class Vehicle extends StatelessWidget {
  const Vehicle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Text("Possedez-vous un véhicule ?",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),

                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      child: Text('Oui',style: TextStyle(fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      child: Text('Non',style: TextStyle(fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)
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
                          child: Text('Ignorer',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)
                          ),
                          onPressed: (){
                            Navigator.of(context);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>VehicleDetail()));
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
