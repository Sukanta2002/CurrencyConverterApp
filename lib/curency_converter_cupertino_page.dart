import 'package:flutter/cupertino.dart';

class CurencyConverterCupertinoPage extends StatefulWidget {
  const CurencyConverterCupertinoPage({super.key});

  @override
  State<CurencyConverterCupertinoPage> createState() =>
      _CurencyConverterCupertinoPageState();
}

class _CurencyConverterCupertinoPageState
    extends State<CurencyConverterCupertinoPage> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  void convertMoney() {
    result = double.parse(textEditingController.text.isNotEmpty
            ? textEditingController.text
            : '0') *
        80;
    setState(() {});
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Curency Converter'),
        backgroundColor: CupertinoColors.systemGrey,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(3)}',
                style: const TextStyle(
                  color: CupertinoColors.white,
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(color: CupertinoColors.black),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: 'Please enter the amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CupertinoButton(
                onPressed: convertMoney,
                color: CupertinoColors.black,
                child: const Text('Convert'),
              ),
              const SizedBox(
                height: 10,
              ),
              CupertinoButton(
                  onPressed: () {
                    textEditingController.clear();
                    setState(() {
                      result = 0;
                    });
                  },
                  color: CupertinoColors.black,
                  child: const Text('Reset'))
            ],
          ),
        ),
      ),
    );
  }
}
