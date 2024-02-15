import 'package:flutter/material.dart';

import '../reuseable widget/text_constraint.dart';

class CalculationScreen extends StatefulWidget {
  const CalculationScreen({super.key});

  @override
  State<CalculationScreen> createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  String _selectedType = 'Flat';
  String _selectedLocation = 'F.B Area';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // FocusScope is used to handle keyboard-related interactions
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 30,
                    color: Colors.black,
                  )),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      PText(
                        'Price Calculation',
                        fontSize: 28.0,
                        weight: FontWeight.w500,
                      ),
                      PText('Fill the details below',
                          fontSize: 20.0, color: Colors.grey),
                      Spacer(),
                      PText(
                        'Type',
                        fontSize: 22.0,
                        weight: FontWeight.w500,
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: [
                      //     Container(
                      //       decoration: BoxDecoration(
                      //         color: Color(0xffeaeaea),
                      //         borderRadius: BorderRadius.circular(10),
                      //       ),
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: Column(
                      //           children: [
                      //             Image.asset(
                      //               color: Color(0xff606060),
                      //               'asset/image/hicon.png',
                      //               width: 75,
                      //             ),
                      //             PText(
                      //               'house',
                      //               color: Color(0xff606060),
                      //               fontSize: 18,
                      //               weight: FontWeight.w500,
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //     Container(
                      //       decoration: BoxDecoration(
                      //         color: Color(0xffeaeaea),
                      //         borderRadius: BorderRadius.circular(10),
                      //       ),
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: Column(
                      //           children: [
                      //             Image.asset(
                      //               color: Color(0xff606060),
                      //               'asset/image/buicon.png',
                      //               width: 75,
                      //             ),
                      //             PText(
                      //               'flat',
                      //               color: Color(0xff606060),
                      //               fontSize: 18,
                      //               weight: FontWeight.w500,
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          value: _selectedType,
                          onChanged: (String? value) {
                            setState(() {
                              _selectedType = value!;
                            });
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  10), // Border radius set to zero
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                          ),
                          items: <String>['Flat', 'House'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      PText(
                        'No. of Bedroom',
                        fontSize: 18.0,
                        weight: FontWeight.w500,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFEAEAEA),
                          hintText: '1,2',
                          hintStyle:
                              TextStyle(fontSize: 20.0, letterSpacing: 2),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      PText(
                        'No. of Bathroom',
                        fontSize: 18.0,
                        weight: FontWeight.w500,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFEAEAEA),
                          hintText: '1,2',
                          hintStyle:
                              TextStyle(fontSize: 20.0, letterSpacing: 2),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      PText(
                        'Area in Sq/ft',
                        fontSize: 18.0,
                        weight: FontWeight.w500,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFEAEAEA),
                          hintText: '100',
                          hintStyle:
                              TextStyle(fontSize: 20.0, letterSpacing: 2),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      PText(
                        'Location',
                        fontSize: 18.0,
                        weight: FontWeight.w500,
                      ),
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          value: _selectedLocation,
                          onChanged: (String? value) {
                            setState(() {
                              _selectedLocation = value!;
                            });
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  10), // Border radius set to zero
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                          ),
                          items: <String>[
                            'F.B Area',
                            'Sakhi Hasan',
                            'Gulshan e iqbal'
                          ].map((String Value) {
                            return DropdownMenuItem<String>(
                              value: Value,
                              child: Text(Value),
                            );
                          }).toList(),
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color(0xff2e7b5b), // Button background color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  8.0), // Set the border radius
                            ),
                          ),
                          onPressed: () {
                            FocusScope.of(context).unfocus();
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const ),
                            // );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                            child: PText('Calculate',
                                fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
