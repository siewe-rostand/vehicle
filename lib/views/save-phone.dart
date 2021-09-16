import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SavePhoneNumber extends StatelessWidget {
  const SavePhoneNumber({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        Text("Saisissez votre numéro de téléphone portable",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
          IntlPhoneField(
            decoration: InputDecoration(
              labelText: 'Phone Number',
              border:OutlineInputBorder(
                borderRadius:BorderRadius.circular(25)
              )
            ),
            initialCountryCode: 'CMR',
            onChanged: (phone){
              print(phone.completeNumber);
            },
          ),
          Text('Si  vous  continuez,  vous  recevrez  peut-être  un  SMS  de '
            'vérification.  Des  frais  de  messagerie  SMS  et  de  transfert  de'
            'données peuvent d’appliquer'),
          Row(
            children: [
              Row(
                children: [
                  ElevatedButton(onPressed: (){},
                      child: Text('SUIVANT'),
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)
                    ),
                  ),
                  Icon(Icons.skip_next,size: 25,color: Colors.black87,),
                ],
              ),
              Icon(Icons.skip_previous_outlined,size: 25,color: Colors.black87,),
            ],
          )
      ],
    ),);
  }
}
