import 'package:flutter/material.dart';

class CarInfoScreen extends StatefulWidget
{


  @override
  State<CarInfoScreen> createState() => _CarInfoScreenState();
}

class _CarInfoScreenState extends State<CarInfoScreen>
{
  TextEditingController  carModelTextEditingController = TextEditingController();
  TextEditingController  carNumberTextEditingController = TextEditingController();
  TextEditingController  carColorTextEditingController = TextEditingController();
  TextEditingController  NoOfSeatTextEditingController = TextEditingController();


  List<String> carTypesList = ["Move-x", "Move-go", "Bike"];
  String? selectedCarType;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 24,),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("images/logo1.png"),
              ),


              const SizedBox(height: 10,),

              const Text(
                "Write Car Detail",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),

              TextField(
                controller: carModelTextEditingController,
                style: const TextStyle(
                    color: Colors.grey
                ),

                decoration: const InputDecoration(
                  labelText: "Car Model",
                  hintText: "Car Model",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),

                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),

                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle:  TextStyle(
                    color: Colors.grey,
                    fontSize: 14,

                  ),
                ),

              ),

              TextField(
                controller: carNumberTextEditingController,
                style: const TextStyle(
                    color: Colors.grey
                ),

                decoration: const InputDecoration(
                  labelText: "Car Number",
                  hintText: "Car Number",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),

                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),

                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle:  TextStyle(
                    color: Colors.grey,
                    fontSize: 14,

                  ),
                ),

              ),

              TextField(
                controller: NoOfSeatTextEditingController,
                keyboardType: TextInputType.phone,
                style: const TextStyle(
                    color: Colors.grey
                ),

                decoration: const InputDecoration(
                  labelText: "No Of Seat",
                  hintText: "No Of Seat",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),

                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),

                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle:  TextStyle(
                    color: Colors.grey,
                    fontSize: 14,

                  ),
                ),

              ),

              TextField(
                controller: carColorTextEditingController,
                style: const TextStyle(
                    color: Colors.grey
                ),

                decoration: const InputDecoration(
                  labelText: "Car Color",
                  hintText: "Car Color",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),

                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),

                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle:  TextStyle(
                    color: Colors.grey,
                    fontSize: 14,

                  ),
                ),

              ),





              const SizedBox(height: 40,),

              DropdownButton(
                  iconSize: 26,
                  dropdownColor: Colors.black,
                hint: const Text(
                  "Please choose car type",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
                value: selectedCarType,
                onChanged: (newValue)
                {
                  setState(() {
                   selectedCarType = newValue.toString();
                  });

                },
                items: carTypesList.map((car){
                  return DropdownMenuItem(
                    child: Text(
                      car,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    value: car,
                  );

                }).toList()


              ),
              const SizedBox(height: 20,),

              ElevatedButton(
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (c)=> CarInfoScreen()));

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreenAccent,
                ),
                child: Text(
                  "Save Now",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
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
