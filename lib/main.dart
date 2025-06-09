import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/currency_converter_material.dart';
import 'package:flutter_application_1/currency_converter_cupertino.dart';

void main()
{
  runApp(const MyApp());

}



class MyApp extends StatelessWidget
{
 const MyApp({super.key});

 @override
  Widget build(BuildContext context)
  {
  return const MaterialApp(
    home : CurrencyConverterMaterial(),
  );
  }
}



class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
     home :CurrencyConverterCupertino() ,
    );
  }
}