import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController degree = TextEditingController();
  int choice = 1;
  double result = 0;
  String textInitial="0°C = 32°F";
  String outputUnit="°F";
  String inputUnit="°C";
  double _degreeToF(double temp) {
    switch (choice) {
      case 1:
        result = (temp * (9 / 5)) + 32; //C to F
        outputUnit="°F";
        break;
      case 2:
        result = (temp - 32) * 5 / 9; //F to C
        outputUnit="°C";
        break;
      case 3:
        result = temp + 273.15; //C to K
        outputUnit="°K";
        break;
      case 4:
        result = temp - 273.15; //k to C
        outputUnit="°C";
        break;
      case 5:
        result = (temp - 32) * 5/9 + 273.15; //F to K
        outputUnit="°K";
        break;
      case 6:
        result = (temp - 273.15) * 9/5 + 32 ;//k to F
        outputUnit="°F";
        break;
    }
    return result;
  }

  @override
  Widget build(BuildContext contextconst ) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Temperature Converter"),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Select Option",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          choice = 1;
                          textInitial="0°C = 32°F";
                        });
                      },
                      child: Container(
                        width: (MediaQuery.of(context).size.width/2)-30,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: choice == 1 ? Colors.pink : Colors.white,
                              border: Border.all(color: Colors.black12)),
                          child: Text(
                            "°Celsius to °Fahrenheit",
                            style: TextStyle(
                                fontWeight:
                                choice == 1? FontWeight.bold :FontWeight.normal ,
                                color:
                                    choice == 1 ? Colors.white : Colors.black),
                          ))),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          textInitial="0°F = -17.78°C";
                          choice = 2;
                        });
                      },
                      child: Container(
                          width: (MediaQuery.of(context).size.width/2)-30,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: choice == 2 ? Colors.pink : Colors.white,
                              border: Border.all(color: Colors.black12)),
                          child: Text("°Fahrenheit to °Celsius",
                              style: TextStyle(
                                  fontWeight:
                                  choice == 2 ? FontWeight.bold :FontWeight.normal ,

                                  color: choice == 2
                                      ? Colors.white
                                      : Colors.black)))),

                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          textInitial="0°C = 273.15°K";
                          choice = 3;
                        });
                      },
                      child: Container(
                          width: (MediaQuery.of(context).size.width/2)-30,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: choice == 3 ? Colors.pink : Colors.white,
                              border: Border.all(color: Colors.black12)),
                          child: Text(
                            "°Celsius to °Kelvin",
                            style: TextStyle(
                                fontWeight:
                                choice == 3 ? FontWeight.bold :FontWeight.normal ,

                                color:
                                choice == 3 ? Colors.white : Colors.black),
                          ))),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          textInitial="0°K = -273.15°C";
                          choice = 4;
                        });
                      },
                      child: Container(
                          width: (MediaQuery.of(context).size.width/2)-30,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: choice == 4 ? Colors.pink : Colors.white,
                              border: Border.all(color: Colors.black12)),
                          child: Text(
                            "°Kelvin to °Celsius",
                            style: TextStyle(
                                fontWeight:
                                choice == 4 ? FontWeight.bold :FontWeight.normal ,

                                color:
                                choice == 4 ? Colors.white : Colors.black),
                          ))),


                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          textInitial="0°F = 255.372K";
                          choice = 5;
                        });
                      },
                      child: Container(
                          width: (MediaQuery.of(context).size.width/2)-30,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: choice == 5 ? Colors.pink : Colors.white,
                              border: Border.all(color: Colors.black12)),
                          child: Text(
                            "°Fahrenheit to °Kelvin",
                            style: TextStyle(
                                fontWeight:
                                choice == 5 ? FontWeight.bold :FontWeight.normal ,

                                color:
                                choice == 5 ? Colors.white : Colors.black),
                          ))),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          textInitial="0°K = -459.7°F";
                          choice = 6;
                        });
                      },
                      child: Container(
                          width: (MediaQuery.of(context).size.width/2)-30,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: choice == 6 ? Colors.pink : Colors.white,
                              border: Border.all(color: Colors.black12)),
                          child: Text(
                            "°Kelvin to °Fahrenheit",
                            style: TextStyle(

                                fontWeight:
                                choice == 6 ? FontWeight.bold :FontWeight.normal ,
                                color:
                                choice == 6 ? Colors.white : Colors.black),
                          ))),

                ],
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child:  Text(
                  textInitial,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              // width: 100,
              height: 50,
              padding: const EdgeInsets.only(left: 10,),
              decoration: BoxDecoration(border: Border.all()),
              child: TextFormField(
                controller: degree,
                keyboardType: TextInputType.number,
                style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                maxLines: 1,
                decoration:  const InputDecoration(
                  hintText: "Enter Temperature",
                ),
                onChanged: (value){
                  setState(() {
                    // _degreeToF(double.parse(degree.text));
                    if(value.isEmpty){
                      result=0;
                    }


                  });
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(border: Border.all()),
              child: result == 0
                  ? const Text(
                      "Output",
                      style: TextStyle(color: Colors.grey),
                    )
                  : Text(
                      result.toStringAsFixed(3).toString()+outputUnit,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),
                    ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if(degree.text.isEmpty){
                      result=0;
                    }
                    _degreeToF(double.parse(degree.text));
                  });
                },
                child: const Text("Convert")),
          ],
        ),
      ),
    );
  }
}
