import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:stemcon/class/ProjectDataExpansionPanelList.dart';
import 'package:stemcon/class/TaskDataExpansionPanelList.dart';


class NavHome extends StatefulWidget {
  @override
  _NavHomeState createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome>{


  final String url = "http://socio.likeview.in/api/allSubFiles";
  List data = <int>[];
  var  newdata;

  @override
  void initState(){
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async{
    var response = await http.post(
      // Encode the url

        Uri.parse(Uri.encodeFull(url)), body: data
      //only accept json response
      //headers: {"Accept": "application/json"}
    );

    if(response.statusCode == 200) {
      print(response.body);


      setState(() {
        var convertDataToJson = json.decode(response.body);
//     data = convertDataToJson['res_data'];

        data = convertDataToJson["res_data"]["subfiles_with_user_detail_history"];
      });

    }

    return "Success";
  }

  Widget build(BuildContext context){
    return new
    Scaffold(
      backgroundColor: Colors.white,
      body:

      Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dadline",style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 5,),
                          Text("12/02/2022",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Time Zone ",style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 5,),
                          Text("GMT",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          )
                        ],
                      ),


                    ],
                  ),
                  SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Unit",style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 5,),
                          Text("Feet",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          )
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Man Hour   ",style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 5,),
                          Text("450 Hr",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          )
                        ],
                      ),


                    ],
                  ),
                  // SizedBox(height: 10,),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8,0),
              child: Divider(
              ),
            ),
            Expanded(
              child: new ListView.builder(
                  itemCount: data == null ? 0 : data.length,
                  itemBuilder: (BuildContext context, int index){

                    return
                        TaskDataExpansionPanelList(data[index]['name']);
//                       Container(
//                         color: Colors.white,
//                         child: Column(
//                           children: <Widget>[
//                             Container(
//                               padding: EdgeInsets.symmetric(
//                                 horizontal: 10,
//                                 vertical: 10,
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: <Widget>[
//                                   Row(
//                                     children: <Widget>[
//                                       ClipRRect(
//                                         borderRadius: BorderRadius.circular(40),
//                                         child: Image(
//                                           image: NetworkImage(data[index]['sub_file_path']),
//                                           width: 40,
//                                           height: 40,
//                                           fit: BoxFit.cover,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: 10,
//                                       ),
//                                       Text(data[index]['name'],style: TextStyle
//                                         (
//                                         fontSize: 20.00
//                                       ),),
//                                     ],
//                                   ),
//                                   IconButton(
//                                     icon: Icon(Icons.ac_unit),
//                                     onPressed: () {},
//                                   ),
//                                 ],
//                               ),
//                             ),
//
//                             FadeInImage(
//                               image: NetworkImage(data[index]['sub_file_path']),
//                               placeholder: AssetImage("assets/placeholder.png"),
//                               width: MediaQuery.of(context).size.width,
//
//                             ),
//
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: <Widget>[
//                                 Row(
//                                   children: <Widget>[
//                                     IconButton(
//                                       onPressed: () {},
//                                       icon: Icon(Icons.ac_unit),
//                                     ),
//                                     IconButton(
//                                       onPressed: () {},
//                                       icon: Icon(Icons.ac_unit),
//                                     ),
//                                     IconButton(
//                                       onPressed: () {},
//                                       icon: Icon(Icons.ac_unit),
//                                     ),
//                                   ],
//                                 ),
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: Icon(Icons.bookmark),
//                                 ),
//                               ],
//                             ),
//
//                             Container(
//                               width: MediaQuery.of(context).size.width,
//                               margin: EdgeInsets.symmetric(
//                                 horizontal: 14,
//                               ),
//                               child: RichText(
//                                 softWrap: true,
//                                 overflow: TextOverflow.visible,
//                                 text: TextSpan(
//                                   children: [
//                                     TextSpan(
//                                       text: "Liked By ",
//                                       style: TextStyle(color: Colors.black),
//                                     ),
//                                     TextSpan(
//                                       text: "Dhruv,",
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.black),
//                                     ),
//                                     TextSpan(
//                                       text: " Yash,",
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.black),
//                                     ),
//                                     TextSpan(
//                                       text: " Dk",
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.black),
//                                     ),
//                                     TextSpan(
//                                       text: " and",
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                       ),
//                                     ),
//                                     TextSpan(
//                                       text: " 1263 others",
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.black),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//
//                             // caption
// //                    Container(
// //                      width: MediaQuery.of(context).size.width,
// //                      margin: EdgeInsets.symmetric(
// //                        horizontal: 14,
// //                        vertical: 5,
// //                      ),
// //                      child: RichText(
// //                        softWrap: true,
// //                        overflow: TextOverflow.visible,
// //                        text: TextSpan(
// //                          children: [
// //                            TextSpan(
// //                              text: posts[i].username,
// //                              style: TextStyle(
// //                                  fontWeight: FontWeight.bold,
// //                                  color: Colors.black),
// //                            ),
// //                            TextSpan(
// //                              text: " ${posts[i].caption}",
// //                              style: TextStyle(color: Colors.black),
// //                            ),
// //                          ],
// //                        ),
// //                      ),
// //                    ),
//
//                             // post date
//                             Container(
//                               margin: EdgeInsets.symmetric(
//                                 horizontal: 14,
//                               ),
//                               alignment: Alignment.topLeft,
//                               child: Text(
//                                 "Febuary 2020",
//                                 textAlign: TextAlign.start,
//                                 style: TextStyle(
//                                   color: Colors.grey,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       );


                    //------------stop------------------


//            new Container(
//              child: new Center(
//                child: new Column(
//                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                  children: <Widget>[
//                    new Card(
//                      child: new Container(
//                        child: new Text(data[index]['user_name']),
//                        padding: const EdgeInsets.all(20.0),
//                      ),
//                    )
//                  ],
//                ),
//              ),
//            );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
