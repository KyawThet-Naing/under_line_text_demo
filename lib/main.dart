import 'package:flutter/material.dart';
import 'package:underline_text/underline_text.dart';

void main(List<String> args) {
  return runApp(
    MaterialApp(
      home: const Root(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    ),
  );
}

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String txt =
        '''သီဟိုဠ်မှ ဉာဏ်ကြီးရှင်သည် အာယုဝဍ္ဎနဆေးညွှန်းစာကို ဇလွန်ဈေးဘေး ဗာဒံပင်ထက် အဓိဋ္ဌာန်လျက် ဂဃနဏဖတ်ခဲ့သည်။ Cupidatat mollit deserunt do est eu commodo sunt irure enim proident voluptate voluptate.''';

    return Scaffold(
      appBar: AppBar(title: const Text('Underline Text')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          const Text('Default Text : '),
          const SizedBox(height: 10),
          const Text(
            txt,
            style: TextStyle(
              color: Colors.blue,
              decorationStyle: TextDecorationStyle.solid,
              decorationColor: Colors.black,
              decorationThickness: 2,
              decoration: TextDecoration.underline,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 40),
          const Text('Underline Text : '),
          const SizedBox(height: 10),
          UnderlineText(
            text: txt,
            style: UnderlineTextStyle(
              fontSize: 18,
              midHeight: -10,
              lineHeight: 2,
              textHeight: 1.8,
              lineColor: Colors.black,
              textAlign: TextAlign.justify,
              lineStyle: TextDecorationStyle.solid,
            ),
          ),
        ],
      ),
    );
  }
}
