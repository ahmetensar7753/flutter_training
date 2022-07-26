import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldKullanimi extends StatefulWidget {
  TextFormFieldKullanimi({Key? key}) : super(key: key);

  @override
  State<TextFormFieldKullanimi> createState() => _TextFormFieldKullanimiState();
}

class _TextFormFieldKullanimiState extends State<TextFormFieldKullanimi> {
  String _email = "";
  String _password = "";
  String _username = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Form Field Kullanımı"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  //initialValue: "ensarbesir", ilk değer ataması
                  decoration: InputDecoration(
                    //errorStyle: TextStyle(color: Colors.orange), error style değişimi olabiliyor.
                    labelText: "Username",
                    hintText: "Username",
                    border: OutlineInputBorder(),
                  ),
                  validator: (deger) {
                    if (deger!.length < 4) {
                      return "Username en az 4 karakter olmalı";
                    } else
                      return null;
                  },
                  onSaved: (deger) {
                    _username = deger!;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  //initialValue: "ensarbesir7753@gmail.com", ilk değer ataması
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    hintText: "E-mail",
                    border: OutlineInputBorder(),
                  ),
                  validator: (deger) {
                    if (!EmailValidator.validate(deger!)) {
                      // email form kontrolü yapılıyor. Emailvalidator bağımlılığı sayesinde
                      return "Geçerli bir e-mail giriniz.";
                    } else
                      return null;
                  },
                  onSaved: (deger) {
                    _email = deger!;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  //initialValue: "ensarbesir7753@gmail.com", ilk değer ataması
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Password",
                    border: OutlineInputBorder(),
                  ),
                  validator: (deger) {
                    if (deger!.length < 6) {
                      return "Şifre en az 6 karakter olmalı.";
                    } else
                      return null;
                  },
                  onSaved: (deger) {
                    _password = deger!;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    bool _validate = _formKey.currentState!.validate();
                    if (_validate) {
                      _formKey.currentState!.save();
                      String result =
                          "username :$_username\nemail :$_email\npassword :$_password";

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.orangeAccent,
                          content: Text(
                            result,
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      );
                      _formKey.currentState!.reset();
                    }
                  },
                  child: Text("Onayla"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
