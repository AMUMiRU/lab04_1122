import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController _text1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("input"),
      ),
      body: Center(
        child: Form(
          key: _fromkey,
          child: ListView(
            children: [
            Text("TextFromField #1"),
            TextFormField(
              controller: _text1,
              onChanged: (value){
                setState(() {});
              },
            )
            Text("TextFromField #2"),
            TextFormField(
              controller: _text2,
              keyboardType: TextInputType.phone,
              onChanged: (value){
                setState(() {});
              },
            )
            Text("show input" ${_text1.text}),
          ],)
          ,)
          ),
    );
  }
}
