import 'package:co_vehicle/views/register.dart';
import 'package:flutter/material.dart';

class ConfirmPhone extends StatelessWidget {
  const ConfirmPhone({Key key}) : super(key: key);

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
                    Text("Saisissez le code à 4 chiffres envoyé au ******86",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),

                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.zero,
                            height: 90,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border:OutlineInputBorder(
                                  borderSide: BorderSide.none
                                ),
                                  fillColor: Colors.grey.shade200,
                                  filled: true
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.zero,
                            height: 90,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border:OutlineInputBorder(
                                  borderSide: BorderSide.none
                                ),
                                  fillColor: Colors.grey.shade200,
                                  filled: true
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.zero,
                            height: 90,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border:OutlineInputBorder(
                                  borderSide: BorderSide.none
                                ),
                                  fillColor: Colors.grey.shade200,
                                  filled: true
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.zero,
                            height: 90,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border:OutlineInputBorder(
                                  borderSide: BorderSide.none
                                ),
                                  fillColor: Colors.grey.shade200,
                                  filled: true
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      child: Text('Je n’ai pas recu le code',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)
                        )
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterUser()));
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
