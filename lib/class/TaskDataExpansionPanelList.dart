import 'package:flutter/material.dart';

class TaskDataExpansionPanelList extends StatefulWidget {
  String Name = '';

  TaskDataExpansionPanelList(String newName){
    this.Name = newName;
  }

  @override
  _TaskDataExpansionPanelListState createState() => _TaskDataExpansionPanelListState(Name);
}

class _TaskDataExpansionPanelListState extends State<TaskDataExpansionPanelList> {
  String textname = '';
  int index = -1;
  // String testname;
  _TaskDataExpansionPanelListState(String name){
    this.textname = name;
  }
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
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Task 1 By",style: TextStyle(
                              color: Colors.grey,fontWeight: FontWeight.bold),),
                            Text(" - "),
                            Text(textname,style: TextStyle(
                                color: Colors.grey,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(textname.toUpperCase() + " Kasuundra",style: TextStyle(fontSize: 16,color: Colors.black87,fontWeight: FontWeight.bold),),
                            Text('Status',style: TextStyle(fontSize: 12,color: Color(0xfff116BA7),fontWeight: FontWeight.bold),),


                          ],
                        ),
                        SizedBox(height: 8,),

                        Row(
                          children: [
                            Text('+91 9510202224',style: TextStyle(fontSize: 12,color: Color(0xfff116BA7),),),

                          ],
                        ),

                      ],
                    ),
                  );
                },
                // canTapOnHeader: true,
                body:

                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Description",style: TextStyle(color: Colors.grey),),
                              Text(
                                'my super long string',
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                              ),
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