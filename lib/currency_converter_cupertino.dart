import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertino extends StatefulWidget {
  const CurrencyConverterCupertino({super.key});

  @override
  State<CurrencyConverterCupertino> createState() => _CurrencyConverterCupertinoState();
}

class _CurrencyConverterCupertinoState extends State<CurrencyConverterCupertino> {
  final TextEditingController _controller = TextEditingController();
  double _inr = 0.0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Currency Converter"),
        backgroundColor: CupertinoColors.systemGrey,
      ),
      backgroundColor: CupertinoColors.black,
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _inr.toStringAsFixed(2),
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CupertinoTextField(
                  controller: _controller,
                  placeholder: "Enter amount in USD",
                  style: const TextStyle(color: CupertinoColors.white),
                  placeholderStyle: const TextStyle(color: CupertinoColors.systemGrey),
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: CupertinoColors.darkBackgroundGray,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: CupertinoColors.systemGrey2, width: 2),
                  ),
                ),
              ),
              CupertinoButton.filled(
                child: const Text("Convert"),
                onPressed: () {
                  final double usd = double.tryParse(_controller.text) ?? 0;
                  setState(() {
                    _inr = usd * 83;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
