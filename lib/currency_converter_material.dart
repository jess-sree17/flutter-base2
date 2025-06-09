
import 'package:flutter/material.dart';

class CurrencyConverterMaterial extends StatefulWidget
 {
   
  const CurrencyConverterMaterial({ super.key });


@override
State<CurrencyConverterMaterial> createState() => _CurrencyConverterMaterialApp();

 }

class _CurrencyConverterMaterialApp extends State< CurrencyConverterMaterial> {
  
  final TextEditingController _textbar1 = TextEditingController();
  double _inr = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 82, 79, 79),
        title: const Text("CURRENCY CONVERTER APP"),
        centerTitle: true,
        foregroundColor: const Color.fromARGB(255, 237, 236, 235),
      ),
      
      
      backgroundColor: const Color.fromARGB(255, 82, 79, 79),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              _inr.toStringAsFixed(2),
               style:const TextStyle(
                color: Color.fromARGB(255, 239, 236, 236),
                fontWeight: FontWeight.bold,
                fontSize: 55,
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _textbar1,
                style: const  TextStyle(
                  color: Color.fromARGB(255, 239, 236, 236),
                ),
                decoration:const InputDecoration(
                  hintText: "ENTER THE AMOUNT IN USD",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 239, 236, 236),
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.amberAccent,
                  suffixIcon: Icon(Icons.monetization_on_outlined),
                  suffixIconColor: Colors.amberAccent,
                  filled: true,
                  fillColor: Color.fromARGB(255, 28, 27, 25),
                  hoverColor: Color.fromARGB(255, 48, 47, 46),
              
                  enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(
                      color: Color.fromARGB(255, 240, 207, 207),
                      width: 2.0,
                      style: BorderStyle.solid,
                      
                    ),
                      borderRadius:BorderRadius.all(Radius.circular(60)
                      ) ,
                  )
                  ,
                  focusedBorder: OutlineInputBorder(
                  
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 240, 207, 207),
                      width: 2.0,
                      style: BorderStyle.solid,
                      
                    ),
                      borderRadius:BorderRadius.all(Radius.circular(60)
                      ) ,
                  )
                ),
                keyboardType: const TextInputType.numberWithOptions(decimal: true,),
              ),
            ),
            //Button section
          ElevatedButton(
          onPressed: () {
             
             final double temp = double.parse(_textbar1.text);
             
             setState(()
             {
                _inr = temp *83;
             });
             
             
             }, //NOTE THIS LINE HAVE DEBUG PRINT
             style:const ButtonStyle(backgroundColor:WidgetStatePropertyAll(Color.fromRGBO(255, 0, 0, 1)),
             fixedSize: WidgetStatePropertyAll(Size(400, 50)),
             elevation: WidgetStatePropertyAll(20),
             
             ),
              
          child: const Text("CONVERT",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),
          letterSpacing: 5.0,
          
         
          
          
          
          ), 
          ),  
          
            ),
         
         
          ],
        ),
      ),
    );
  }
}