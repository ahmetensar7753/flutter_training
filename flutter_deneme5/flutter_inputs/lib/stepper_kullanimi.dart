import 'package:flutter/material.dart';

class StepperOrnek extends StatefulWidget {
  StepperOrnek({Key? key}) : super(key: key);

  @override
  State<StepperOrnek> createState() => _StepperOrnekState();
}

class _StepperOrnekState extends State<StepperOrnek> {
  int _aktifStep = 0;
  String isim = "";
  String mail = "";
  String sifre = "";
  late List<Step> tumStepler;
  var key0 = GlobalKey<FormFieldState>();
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();
  bool hata = false;

  @override
  Widget build(BuildContext context) {
    tumStepler = _tumStepler();
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper Örnek"),
      ),
      body: SingleChildScrollView(
        child: Stepper(
          controlsBuilder: (context, details) {
            return Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.greenAccent.shade700),
                  onPressed: details.onStepContinue,
                  child: const Text(
                    "Devam",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(primary: Colors.pink.shade700),
                  onPressed: details.onStepCancel,
                  child: const Text(
                    "Geri",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            );
          },
          steps: tumStepler,
          currentStep: _aktifStep,
          /* onStepTapped: (tiklanilanStep) {
            setState(() {
              _aktifStep = tiklanilanStep;
            });
          }, */
          onStepContinue: () {
            setState(() {
              _ileriButonKontrol();
            });
          },
          onStepCancel: () {
            setState(() {
              if (_aktifStep > 0) {
                _aktifStep--;
              }
            });
          },
        ),
      ),
    );
  }

  List<Step> _tumStepler() {
    List<Step> stepler = [
      Step(
        title: Text("Username giriniz"),
        subtitle: Text("subTitle"),
        state: _stateleriAyarla(0),
        isActive: true,
        content: TextFormField(
          key: key0,
          decoration: InputDecoration(
            labelText: "Username",
            hintText: "Username",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          validator: (girilenDeger) {
            if (girilenDeger!.length < 6) {
              return "En az 6 karakter giriniz.";
            }
          },
          onSaved: (girilenDeger) {
            isim = girilenDeger!;
          },
        ),
      ),
      Step(
        title: Text("Mail giriniz"),
        subtitle: Text("subTitle"),
        state: _stateleriAyarla(1),
        isActive: true,
        content: TextFormField(
          key: key1,
          decoration: InputDecoration(
            labelText: "E-mail",
            hintText: "E-mail",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          validator: (girilenDeger) {
            if (girilenDeger!.length < 6 || !girilenDeger.contains("@")) {
              return "Geçerli bir mail giriniz.";
            }
          },
          onSaved: (girilenDeger) {
            mail = girilenDeger!;
          },
        ),
      ),
      Step(
        title: Text("Şifre giriniz"),
        subtitle: Text("subTitle"),
        state: _stateleriAyarla(2),
        isActive: true,
        content: TextFormField(
          key: key2,
          decoration: InputDecoration(
            labelText: "Password",
            hintText: "Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          validator: (girilenDeger) {
            if (girilenDeger!.length < 6) {
              return "En az 6 karakter olmalı.";
            }
          },
          onSaved: (girilenDeger) {
            sifre = girilenDeger!;
          },
        ),
      ),
    ];

    return stepler;
  }

  StepState _stateleriAyarla(int oankiStep) {
    if (_aktifStep == oankiStep) {
      if (hata) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }

  void _ileriButonKontrol() {
    switch (_aktifStep) {
      case 0:
        if (key0.currentState!.validate()) {
          key0.currentState!.save();
          hata = false;
          _aktifStep = 1;
        } else {
          hata = true;
        }
        break;
      case 1:
        if (key1.currentState!.validate()) {
          key1.currentState!.save();
          hata = false;
          _aktifStep = 2;
        } else {
          hata = true;
        }
        break;
      case 2:
        if (key2.currentState!.validate()) {
          key2.currentState!.save();
          hata = false;
          //_aktifStep = 2;
          formTamamlandi();
        } else {
          hata = true;
        }
        break;
    }
  }

  void formTamamlandi() {
    print("Girilen değerler : isim => $isim - mail => $mail - sifre => $sifre");
  }
}
