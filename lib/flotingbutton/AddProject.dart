import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddProject extends StatefulWidget {
  const AddProject({Key? key}) : super(key: key);

  @override
  _AddProjectState createState() => _AddProjectState();
}

class _AddProjectState extends State<AddProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
          //change your color here
        ),
        title: Text('Add Product',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset("assets/images/uploadimage.svg",height: 120,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Unit"),
                      Text("Unit1"),
                      Text("Unit2"),
                      Text("Unit3"),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  // initialValue: 'C100',
                  // obscureText: isPassword,
                  // autofillHints: 'C100',
                  decoration: InputDecoration(

                      border: OutlineInputBorder(borderRadius: BorderRadius.all( Radius.circular(6)),borderSide: const BorderSide(color: Colors.yellow)),
                      hintText: "Project Name",
                      // errorText: "error",
                      focusColor: Color(0xffffffff),
                      fillColor: Color(0xffffffff),
                      filled: true)

              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Project Code"),
                        SizedBox(height: 10,),
                        TextFormField(
                            // obscureText: isPassword,
                            // autofillHints: 'C100',
                            decoration: InputDecoration(

                                border: OutlineInputBorder(borderRadius: BorderRadius.all( Radius.circular(6)),borderSide: const BorderSide(color: Colors.yellow)),
                                hintText: "CODE",
                                // errorText: "error",
                                focusColor: Color(0xffffffff),
                                fillColor: Color(0xffffffff),
                                filled: true)

                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Man Hour"),
                        SizedBox(height: 10,),
                        TextFormField(
                            // initialValue: 'hour',
                            // obscureText: isPassword,
                            // autofillHints: 'C100',
                            decoration: InputDecoration(

                                border: OutlineInputBorder(borderRadius: BorderRadius.all( Radius.circular(6)),borderSide: const BorderSide(color: Colors.yellow)),
                                hintText: "HOUR",
                                // errorText: "error",
                                focusColor: Color(0xffffffff),
                                fillColor: Color(0xffffffff),
                                filled: true)

                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  // initialValue: 'Code',
                  // obscureText: isPassword,
                  // autofillHints: 'C100',
                  decoration: InputDecoration(

                      border: OutlineInputBorder(borderRadius: BorderRadius.all( Radius.circular(6)),borderSide: const BorderSide(color: Colors.yellow)),
                      hintText: "ADDRESS",
                      // errorText: "error",
                      focusColor: Color(0xffffffff),
                      fillColor: Color(0xffffffff),
                      filled: true)

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                // initialValue: 'Code',
                // obscureText: isPassword,
                // autofillHints: 'C100',
                  decoration: InputDecoration(

                      border: OutlineInputBorder(borderRadius: BorderRadius.all( Radius.circular(6)),borderSide: const BorderSide(color: Colors.yellow)),
                      hintText: "Purpose",
                      // errorText: "error",
                      focusColor: Color(0xffffffff),
                      fillColor: Color(0xffffffff),
                      filled: true)

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                // initialValue: 'Code',
                // obscureText: isPassword,
                // autofillHints: 'C100',
                  decoration: InputDecoration(

                      border: OutlineInputBorder(borderRadius: BorderRadius.all( Radius.circular(6)),borderSide: const BorderSide(color: Colors.yellow)),
                      hintText: "TIME ZONE",
                      // errorText: "error",
                      focusColor: Color(0xffffffff),
                      fillColor: Color(0xffffffff),
                      filled: true)

              ),
            ),
            Padding(padding: EdgeInsets.only(left: 8.0 ,right: 8.0),
                child: InkWell(
                  onTap: () {
                    // Navigator.of(context).pop();

                    // Navigator.pop(context);
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => LoginPage()));
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
                      'SUBMIT',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                )

            ),

          ],
        ),
      ),
    );
  }
}

