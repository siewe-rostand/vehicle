import 'package:co_vehicle/views/confirm-phone.dart';
import 'package:co_vehicle/views/phone/intl_phone_field.dart';
import 'package:flutter/material.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({Key key}) : super(key: key);

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
                    Text("Saisissez votre numéro de téléphone portable",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),

                    SizedBox(
                      height: 10,
                    ),

                    IntlPhoneField(
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        }
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Text('Si  vous  continuez,  vous  recevrez  peut-être  un  SMS  de '
                        'vérification.  Des  frais  de  messagerie  SMS  et  de  transfert  de'
                        'données peuvent d’appliquer'),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmPhone()));
                          },
                        ),
                        Icon(Icons.navigate_next_rounded,size: 25,color: Colors.white,),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
