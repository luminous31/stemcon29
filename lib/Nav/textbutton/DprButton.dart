import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DprButton extends StatefulWidget {
  const DprButton({Key? key}) : super(key: key);

  @override
  _DprButtonState createState() => _DprButtonState();
}

class _DprButtonState extends State<DprButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app bar"),
      ),
      body:       SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(
                      Radius.circular(5.0) //                 <--- border radius here
      ),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/images/uploadimage.svg",height: 120,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Date"),
                      Text("01-01-2022",style: TextStyle(fontWeight: FontWeight.bold),),

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
                      hintText: "Today Work",
                      // errorText: "error",
                      focusColor: Color(0xffffffff),
                      fillColor: Color(0xffffffff),
                      filled: true)

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                // initialValue: 'C100',
                // obscureText: isPassword,
                // autofillHints: 'C100',
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all( Radius.circular(6)),borderSide: const BorderSide(color: Colors.yellow)),
                      hintText: "Tomorrow Work",
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
