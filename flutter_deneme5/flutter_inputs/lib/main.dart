import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input İslemleri',
      home: TextFieldIslemleri(
        title: "Form Islemleri",
      ),
    );
  }
}

class TextFieldIslemleri extends StatefulWidget {
  final String title;
  const TextFieldIslemleri({Key? key, required this.title}) : super(key: key);

  @override
  State<TextFieldIslemleri> createState() => _TextFieldIslemleriState();
}

class _TextFieldIslemleriState extends State<TextFieldIslemleri> {
  late TextEditingController _emailController;
  late FocusNode _focusNode;
  int maxLineCount = 1;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: "ensarbesir@gmail.com");
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        if (_focusNode.hasFocus) {
          maxLineCount = 5;
        } else {
          maxLineCount = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              focusNode: _focusNode,
              controller: _emailController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              autofocus:
                  false, //ilk açıldığında doğrudan tıklanmış olarak ayarlıyor (true).
              maxLines: maxLineCount,
              maxLength: 30,
              onChanged: (String deger) {
                setState(() {
                  _emailController.value = TextEditingValue(
                    text: deger,
                    selection: TextSelection.collapsed(offset: deger.length),
                  ); // metinde her değişiklikte bu kısım çalışıyor.
                });
              },
              onSubmitted: (String deger) {
                print(deger +
                    "************************"); // text yazılıp onaylandıktan sonra çalışıyor.
              },
              cursorColor: Colors.red,
              decoration: InputDecoration(
                labelText: "Label Text",
                hintText: "Email Giriniz",
                //icon: Icon(Icons.add), textfield'ın sol tarafında dışarıda icon oluşturuyor.
                prefixIcon: Icon(Icons.access_alarms_outlined),
                suffixIcon: Icon(Icons.accessibility_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                filled: true,
                fillColor: Colors.orange.shade100,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_emailController.text),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _emailController.text = "ahmetensar@hotmail.com";
          });
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
