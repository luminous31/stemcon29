import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 100,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(16.0),
                        child: Image.asset('assets/logo/roundlogo.jpg',height: 100,),
                      ),
                      Padding(padding: EdgeInsets.all(16.0),
                          child: Text("STEMCON",style: TextStyle(color: Color(0xff000000),fontSize: 24,fontWeight: FontWeight.w500),)
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: const EdgeInsets.only(left: 16.0 ,right: 16.0,bottom: 14.0,top: 8.0),
                          child: Theme(
                            data: new ThemeData(
                                primaryColor: Colors.pink,primaryColorDark: Colors.teal
                            ),
                            child: TextFormField(
                                keyboardType: TextInputType.number,

                                // initialValue: 'C100',
                                // obscureText: isPassword,
                                // autofillHints: 'C100',
                                decoration: InputDecoration(

                                    border: OutlineInputBorder(borderRadius: BorderRadius.all( Radius.circular(6)),borderSide: const BorderSide(color: Colors.yellow)),
                                    hintText: "INDIA +91",
                                    // errorText: "error",
                                    focusColor: Color(0xffffffff),
                                    fillColor: Color(0xffffffff),
                                    filled: true)

                            ),
                          )                  ),
                      Padding(padding: const EdgeInsets.only(left: 16.0 ,right: 16.0,bottom: 14.0,top: 8.0),
                          child: Theme(
                            data: new ThemeData(
                                primaryColor: Colors.pink,primaryColorDark: Colors.teal
                            ),
                            child: TextFormField(
                                keyboardType: TextInputType.number,
                                // initialValue: 'C100',
                              // obscureText: isPassword,
                              // autofillHints: 'C100',
                                decoration: InputDecoration(

                                    border: OutlineInputBorder(borderRadius: BorderRadius.all( Radius.circular(6)),borderSide: const BorderSide(color: Colors.yellow)),
                                    hintText: "Mobile Number",
                                    // errorText: "error",
                                    focusColor: Color(0xffffffff),
                                    fillColor: Color(0xffffffff),
                                    filled: true)

                            ),
                          )                  ),

                      Padding(padding: EdgeInsets.only(left: 16.0 ,right: 16.0),
                          child: InkWell(
                            onTap: () {
//          Navigator.of(context).pop();

                              // Navigator.pop(context);
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => Dashboard()));
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(vertical: 15),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.grey.shade200,
                                        offset: Offset(2, 4),
                                        blurRadius: 5,
                                        spreadRadius: 2)
                                  ],
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [Color(0xfff116BA7), Color(0xff116BA7)])),
                              child: Text(
                                'LOG IN',
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            ),
                          )

                      ),
                    ],
                  ),



                ],
              ),
            ),
          )
      );
  }
}