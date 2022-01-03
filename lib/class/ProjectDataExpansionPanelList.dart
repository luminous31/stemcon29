import 'package:flutter/material.dart';

class ProjectDataExpansionPanelList extends StatefulWidget {
  @override
  _ProjectDataExpansionPanelListState createState() => _ProjectDataExpansionPanelListState();
}

class _ProjectDataExpansionPanelListState extends State<ProjectDataExpansionPanelList> {
  int index = -1;
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ExpansionPanelList(
            expansionCallback: (i, isOpen) {
              setState(() {
                if (index == i)
                  index = -1;
                else
                  index = i;
              });
            },
            animationDuration: Duration(seconds: 1),
            dividerColor: Colors.teal,
            elevation: 2,
            children: [
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return
                  //   ListTile(
                  //   title: Text("Index 0 (Header Tap Enabled)"),
                  // );
                  Row(
                    children: [

                      Padding(padding: EdgeInsets.fromLTRB(16, 8, 8, 8),child:
                      Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/dubai1.jpg'),
                                fit: BoxFit.cover,

                              )
                          )
                      ),
                        ),


                      // Padding(padding: EdgeInsets.all(5.0),child: Image.asset('assets/images/dubai1.jpg', height: 40,),),
                      // Image.asset('assets/logo/roundlogo.jpg', height: 40,),
                      SizedBox(width: 10,),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('GOKUL MATHURA',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800),),
                          SizedBox(height: 3,),
                          Text('PMC 4456',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          SizedBox(height: 3,),
                          Text('morbi',style: TextStyle(fontSize: 10),),


                        ],
                      )
                    ],
                  );
                },
                // canTapOnHeader: true,
                body:
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
                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: OutlinedButton.icon(
                              onPressed: () {
                                // Respond to button press
                              },
                              icon: Icon(Icons.edit, size: 18,color: Colors.black,),
                              label: Text("Edit",style: TextStyle(color: Colors.black),),
                              style: OutlinedButton.styleFrom(
                                  primary: Colors.black,
                                  // backgroundColor: Colors.amber,
                                  padding: EdgeInsets.fromLTRB(45, 12, 45, 12),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                // side: BorderSide(width: 2, color: Colors.green),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: OutlinedButton.icon(
                              onPressed: () {
                                // Respond to button press
                              },
                              icon: Icon(Icons.delete, size: 18,color: Colors.redAccent,),
                              label: Text("Delete",style: TextStyle(color: Colors.redAccent),),
                              style: OutlinedButton.styleFrom(
                                  primary: Colors.black,
                                  // backgroundColor: Colors.amber,
                                  padding: EdgeInsets.fromLTRB(45, 12, 45, 12),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                // side: BorderSide(width: 2, color: Colors.grey),
                              ),
                            ),
                          ),


                        ],
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
                isExpanded: index == 0,
              ),

            ],
          ),
        ),
      ),
    );
  }
}