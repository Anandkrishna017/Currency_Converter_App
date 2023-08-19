import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text("Currency Converter"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TEXT
            Text(
              'INR ${result !=0 ? result.toStringAsFixed(2):result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            //Container(height: 20,),
            const SizedBox(
              height: 10,
            ),
            //TEXT FIELD

            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: "Please Enter the amound in USD",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  prefixIcon: Icon(
                    Icons.monetization_on,
                  ),
                  prefixIconColor: Colors.white,
                  filled: true,
                  fillColor: Colors.cyan,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.yellow,
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),

            //BUTTON

            //Text button

            Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                },
                // style: const ButtonStyle(
                //   backgroundColor: MaterialStatePropertyAll(
                //     Colors.black,
                //   ),
                //   foregroundColor:
                //       MaterialStatePropertyAll(Colors.white), //Text color
                //   minimumSize: MaterialStatePropertyAll(
                //     Size(double.infinity, 50),
                //   ),
                // ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white, //Text color
                  minimumSize: const Size(double.infinity, 50),
                ),

                child: const Text(
                  "CONVERT",
                ),
              ),
            ),

            //Elevated Button

            // Padding(
            //   padding: const EdgeInsets.all(10),
            //   child: ElevatedButton(
            //     onPressed: () {
            //       debugPrint("Button clicked");
            //     },
            //     style:  ButtonStyle(
            //       shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
            //       elevation: const MaterialStatePropertyAll(15),
            //       backgroundColor: const MaterialStatePropertyAll(Colors.black),
            //       foregroundColor:
            //           const MaterialStatePropertyAll(Colors.white), //Text color
            //       minimumSize:
            //           const MaterialStatePropertyAll(Size(double.infinity, 50)),
            //     ),
            //     child: const Text(
            //       "CONVERT",
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}


//STATELESS WIDGET

// class CurrencyConverterMaterialPage extends StatelessWidget {
//    const CurrencyConverterMaterialPage({super.key});

//    //converting
//   //1. Create a variabke to store the currency value converted

//    //2. create a function that multiplies the value given by the textfield by 81

//    //3.Store value in the variable

//    //4.Display the variable

//   @override
//   Widget build(BuildContext context) {

//     double result=0;
//    final TextEditingController textEditingController=TextEditingController();

//     return Scaffold(
//       backgroundColor: Colors.green,
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         elevation: 0,
//         title: const Text("Currency Converter"),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // TEXT
//              Text(
//               result.toString(),
//               style: const TextStyle(
//                 fontSize: 55,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),

//             //TEXT FIELD

//              Padding(
//               padding: const EdgeInsets.all(10),
//               child: TextField(
//                 controller: textEditingController,
//                 style: const TextStyle(
//                   color: Colors.black,
//                 ),
//                 decoration: const InputDecoration(
//                   hintText: "Please Enter the amound in USD",
//                   hintStyle: TextStyle(
//                     color: Colors.white,
//                   ),
//                   prefixIcon: Icon(
//                     Icons.monetization_on,
//                   ),
//                   prefixIconColor: Colors.white,
//                   filled: true,
//                   fillColor: Colors.cyan,
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.yellow,
//                       width: 2,
//                       style: BorderStyle.solid,
//                     ),
//                   ),
//                 ),
//                 keyboardType: const TextInputType.numberWithOptions(
//                   decimal: true,
//                   signed: true,
//                 ),
//               ),
//             ),

//             //BUTTON

//             //Text button

//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: TextButton(
//                 onPressed: () {
//                   result = double.parse(textEditingController.text)*81;
//                 },
//                 // style: const ButtonStyle(
//                 //   backgroundColor: MaterialStatePropertyAll(
//                 //     Colors.black,
//                 //   ),
//                 //   foregroundColor:
//                 //       MaterialStatePropertyAll(Colors.white), //Text color
//                 //   minimumSize: MaterialStatePropertyAll(
//                 //     Size(double.infinity, 50),
//                 //   ),
//                 // ),
//                 style: TextButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.white, //Text color
//                   minimumSize: Size(double.infinity, 50),
//                 ),

//                 child: const Text(
//                   "CONVERT",
//                 ),
//               ),
//             ),

//             //Elevated Button

//             // Padding(
//             //   padding: const EdgeInsets.all(10),
//             //   child: ElevatedButton(
//             //     onPressed: () {
//             //       debugPrint("Button clicked");
//             //     },
//             //     style:  ButtonStyle(
//             //       shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
//             //       elevation: const MaterialStatePropertyAll(15),
//             //       backgroundColor: const MaterialStatePropertyAll(Colors.black),
//             //       foregroundColor:
//             //           const MaterialStatePropertyAll(Colors.white), //Text color
//             //       minimumSize:
//             //           const MaterialStatePropertyAll(Size(double.infinity, 50)),
//             //     ),
//             //     child: const Text(
//             //       "CONVERT",
//             //     ),
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
