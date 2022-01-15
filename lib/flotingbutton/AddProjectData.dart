import 'package:cool_stepper/cool_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stemcon/dashboard.dart';

class AddProjectData extends StatefulWidget {
  const AddProjectData({Key? key}) : super(key: key);

  @override
  _AddProjectDataState createState() => _AddProjectDataState();
}

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }

class _AddProjectDataState extends State<AddProjectData> {
  final _formKey = GlobalKey<FormState>();
  String? selectedRole = 'Writer';
  final TextEditingController _FirmNameCtrl = TextEditingController();
  final TextEditingController _PersonNameCtrl = TextEditingController();
  final TextEditingController _AddressLine1Ctrl = TextEditingController();
  final TextEditingController _AddressLine2Ctrl = TextEditingController();
  final TextEditingController _CityCtrl = TextEditingController();
  final TextEditingController _emailCtrl = TextEditingController();

  // late LocationData _currentPosition;
  // late String _address,_dateTime;

  bool _value = false;
  int val = -1;

  @override
  Widget build(BuildContext context) {
    final steps = [
      CoolStep(
        title: 'Firm Information',
        subtitle: 'Please fill some of the firm information to add Client',
        content: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8.0),
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
                    Column(
                      mainAxisAlignment:MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("O   MM"),
                        Text("O   ft"),
                        Text("O   mtr"),

                      ],
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child:
                    //   SizedBox(
                    //     height: 100,
                    //     child: Column(
                    //
                    //       mainAxisAlignment: MainAxisAlignment.start,
                    //       children: [
                    //         ListTile(
                    //           title: Text("Male",style: TextStyle(fontSize: 2),),
                    //           leading: Radio(
                    //             value: 1,
                    //             groupValue: val,
                    //             onChanged: (value) {
                    //               setState(() {
                    //                 val = 1;
                    //               });
                    //             },
                    //             activeColor: Colors.green,
                    //           ),
                    //         ),
                    //         // ListTile(
                    //         //   title: Text("Female"),
                    //         //   leading: Radio(
                    //         //     value: 2,
                    //         //     groupValue: val,
                    //         //     onChanged: (value) {
                    //         //       setState(() {
                    //         //         val = 2;
                    //         //       });
                    //         //     },
                    //         //     activeColor: Colors.green,
                    //         //   ),
                    //         // ),
                    //       ],
                    //     ),
                    //   )
                    // )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      // initialValue: 'C100',
                      // obscureText: isPassword,
                      // autofillHints: 'C100',
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              borderSide:
                                  const BorderSide(color: Colors.yellow)),
                          hintText: "Project Name",
                          // errorText: "error",
                          focusColor: Color(0xffffffff),
                          fillColor: Color(0xffffffff),
                          filled: true)),
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
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                                // obscureText: isPassword,
                                // autofillHints: 'C100',
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)),
                                        borderSide: const BorderSide(
                                            color: Colors.yellow)),
                                    hintText: "CODE",
                                    // errorText: "error",
                                    focusColor: Color(0xffffffff),
                                    fillColor: Color(0xffffffff),
                                    filled: true)),
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
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                                // initialValue: 'hour',
                                // obscureText: isPassword,
                                // autofillHints: 'C100',
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)),
                                        borderSide: const BorderSide(
                                            color: Colors.yellow)),
                                    hintText: "HOUR",
                                    // errorText: "error",
                                    focusColor: Color(0xffffffff),
                                    fillColor: Color(0xffffffff),
                                    filled: true)),
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
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              borderSide:
                                  const BorderSide(color: Colors.yellow)),
                          hintText: "ADDRESS",
                          // errorText: "error",
                          focusColor: Color(0xffffffff),
                          fillColor: Color(0xffffffff),
                          filled: true)),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  // child: InkWell(
                  //   onTap: () {
                  //     // Navigator.of(context).pop();
                  //
                  //     // Navigator.pop(context);
                  //     // Navigator.push(
                  //     //     context, MaterialPageRoute(builder: (context) => LoginPage()));
                  //   },
                  //   child: Container(
                  //     width: MediaQuery.of(context).size.width,
                  //     padding: EdgeInsets.symmetric(vertical: 15),
                  //     alignment: Alignment.center,
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.all(Radius.circular(5)),
                  //         boxShadow: <BoxShadow>[
                  //           BoxShadow(
                  //               color: Colors.grey.shade200,
                  //               offset: Offset(2, 4),
                  //               blurRadius: 5,
                  //               spreadRadius: 2)
                  //         ],
                  //         gradient: LinearGradient(
                  //             begin: Alignment.centerLeft,
                  //             end: Alignment.centerRight,
                  //             colors: [Color(0xfff116BA7), Color(0xff116BA7)])),
                  //     child: Text(
                  //       'SUBMIT',
                  //       style: TextStyle(fontSize: 20, color: Colors.white),
                  //     ),
                  //   ),
                  // )
                ),
              ],
            ),
          ),

          // child: Column(
          //   children: [
          //     _buildTextField(
          //       labelText: 'Firm Name',
          //       validator: (value) {
          //         if (value!.isEmpty) {
          //           return 'Firm Name is required';
          //         }
          //         return null;
          //       },
          //       controller: _FirmNameCtrl,
          //     ),
          //     _buildTextField(
          //       labelText: 'Person Name',
          //       validator: (value) {
          //         if (value!.isEmpty) {
          //           return 'Person Name is required';
          //         }
          //         return null;
          //       },
          //       controller: _PersonNameCtrl,
          //     ),
          //     _buildTextField(
          //       labelText: 'Address Line 1',
          //       validator: (value) {
          //         if (value!.isEmpty) {
          //           return 'Address is required';
          //         }
          //         return null;
          //       },
          //       controller: _AddressLine1Ctrl,
          //     ),
          //     _buildTextField(
          //       labelText: 'Address Line 2',
          //       validator: (value) {
          //         if (value!.isEmpty) {
          //           return 'Address is required';
          //         }
          //         return null;
          //       },
          //       controller: _AddressLine2Ctrl,
          //     ),
          //     _buildTextField(
          //       labelText: 'Email Address',
          //       validator: (value) {
          //         if (value!.isEmpty) {
          //           return 'Email address is required';
          //         }
          //         return null;
          //       },
          //       controller: _emailCtrl,
          //     ),
          //     _buildTextField(
          //       labelText: 'City',
          //       validator: (value) {
          //         if (value!.isEmpty) {
          //           return 'Email address is required';
          //         }
          //         return null;
          //       },
          //       controller: _CityCtrl,
          //     ),
          //   ],
          // ),
        ),
        validation: () {
          if (!_formKey.currentState!.validate()) {
            return 'Fill form correctly';
          }
          return null;
        },
      ),
      CoolStep(
        title: 'Select your role',
        subtitle: 'Choose a role that better defines you',
        content: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child:
                    //   SizedBox(
                    //     height: 100,
                    //     child: Column(
                    //
                    //       mainAxisAlignment: MainAxisAlignment.start,
                    //       children: [
                    //         ListTile(
                    //           title: Text("Male",style: TextStyle(fontSize: 2),),
                    //           leading: Radio(
                    //             value: 1,
                    //             groupValue: val,
                    //             onChanged: (value) {
                    //               setState(() {
                    //                 val = 1;
                    //               });
                    //             },
                    //             activeColor: Colors.green,
                    //           ),
                    //         ),
                    //         // ListTile(
                    //         //   title: Text("Female"),
                    //         //   leading: Radio(
                    //         //     value: 2,
                    //         //     groupValue: val,
                    //         //     onChanged: (value) {
                    //         //       setState(() {
                    //         //         val = 2;
                    //         //       });
                    //         //     },
                    //         //     activeColor: Colors.green,
                    //         //   ),
                    //         // ),
                    //       ],
                    //     ),
                    //   )
                    // )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    // initialValue: 'Code',
                    // obscureText: isPassword,
                    // autofillHints: 'C100',
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(6)),
                              borderSide:
                              const BorderSide(color: Colors.yellow)),
                          hintText: "Purpose",
                          // errorText: "error",
                          focusColor: Color(0xffffffff),
                          fillColor: Color(0xffffffff),
                          filled: true)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    // initialValue: 'Code',
                    // obscureText: isPassword,
                    // autofillHints: 'C100',
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(6)),
                              borderSide:
                              const BorderSide(color: Colors.yellow)),
                          hintText: "TIME ZONE",
                          // errorText: "error",
                          focusColor: Color(0xffffffff),
                          fillColor: Color(0xffffffff),
                          filled: true)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      // initialValue: 'C100',
                      // obscureText: isPassword,
                      // autofillHints: 'C100',
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              borderSide:

                                  const BorderSide(color: Colors.yellow)),
                          hintText: "Key Points",
                          // errorText: "error",
                          focusColor: Color(0xffffffff),
                          fillColor: Color(0xffffffff),
                          filled: true)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  // child: InkWell(
                  //   onTap: () {
                  //     // Navigator.of(context).pop();
                  //
                  //     // Navigator.pop(context);
                  //     // Navigator.push(
                  //     //     context, MaterialPageRoute(builder: (context) => LoginPage()));
                  //   },
                  //   child: Container(
                  //     width: MediaQuery.of(context).size.width,
                  //     padding: EdgeInsets.symmetric(vertical: 15),
                  //     alignment: Alignment.center,
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.all(Radius.circular(5)),
                  //         boxShadow: <BoxShadow>[
                  //           BoxShadow(
                  //               color: Colors.grey.shade200,
                  //               offset: Offset(2, 4),
                  //               blurRadius: 5,
                  //               spreadRadius: 2)
                  //         ],
                  //         gradient: LinearGradient(
                  //             begin: Alignment.centerLeft,
                  //             end: Alignment.centerRight,
                  //             colors: [Color(0xfff116BA7), Color(0xff116BA7)])),
                  //     child: Text(
                  //       'SUBMIT',
                  //       style: TextStyle(fontSize: 20, color: Colors.white),
                  //     ),
                  //   ),
                  // )
                ),
              ],
            ),
          ),

          // child: Column(
          //   children: [
          //     _buildTextField(
          //       labelText: 'Firm Name',
          //       validator: (value) {
          //         if (value!.isEmpty) {
          //           return 'Firm Name is required';
          //         }
          //         return null;
          //       },
          //       controller: _FirmNameCtrl,
          //     ),
          //     _buildTextField(
          //       labelText: 'Person Name',
          //       validator: (value) {
          //         if (value!.isEmpty) {
          //           return 'Person Name is required';
          //         }
          //         return null;
          //       },
          //       controller: _PersonNameCtrl,
          //     ),
          //     _buildTextField(
          //       labelText: 'Address Line 1',
          //       validator: (value) {
          //         if (value!.isEmpty) {
          //           return 'Address is required';
          //         }
          //         return null;
          //       },
          //       controller: _AddressLine1Ctrl,
          //     ),
          //     _buildTextField(
          //       labelText: 'Address Line 2',
          //       validator: (value) {
          //         if (value!.isEmpty) {
          //           return 'Address is required';
          //         }
          //         return null;
          //       },
          //       controller: _AddressLine2Ctrl,
          //     ),
          //     _buildTextField(
          //       labelText: 'Email Address',
          //       validator: (value) {
          //         if (value!.isEmpty) {
          //           return 'Email address is required';
          //         }
          //         return null;
          //       },
          //       controller: _emailCtrl,
          //     ),
          //     _buildTextField(
          //       labelText: 'City',
          //       validator: (value) {
          //         if (value!.isEmpty) {
          //           return 'Email address is required';
          //         }
          //         return null;
          //       },
          //       controller: _CityCtrl,
          //     ),
          //   ],
          // ),
        ),
        validation: () {
          return null;
        },
      ),
    ];

    final stepper = CoolStepper(
      showErrorSnackbar: false,
      onCompleted: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Dashboard()));

        print('Steps completed!');
      },
      steps: steps,
      config: CoolStepperConfig(
        backText: 'PREV',
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
          //change your color here
        ),
        title: Text(
          'Add Product',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: stepper,
      ),
    );
  }

  Widget _buildTextField({
    String? labelText,
    FormFieldValidator<String>? validator,
    TextEditingController? controller,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
        ),
        validator: validator,
        controller: controller,
      ),
    );
  }

  Widget _buildSelector({
    BuildContext? context,
    required String name,
  }) {
    final isActive = name == selectedRole;

    return Expanded(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: isActive ? Theme.of(context!).primaryColor : null,
          border: Border.all(
            width: 0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: RadioListTile(
          value: name,
          activeColor: Colors.white,
          groupValue: selectedRole,
          onChanged: (String? v) {
            setState(() {
              selectedRole = v;
            });
          },
          title: Text(
            name,
            style: TextStyle(
              color: isActive ? Colors.white : null,
            ),
          ),
        ),
      ),
    );
  }
}
