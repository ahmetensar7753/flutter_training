import 'package:flutter/material.dart';
import 'package:not_hesapla/constants/app_constants.dart';
import 'package:not_hesapla/helper/data_helper.dart';

class KrediDropdownWidget extends StatefulWidget {
  final Function onKrediSecildi;
  KrediDropdownWidget({Key? key, required this.onKrediSecildi})
      : super(key: key);

  @override
  State<KrediDropdownWidget> createState() => _KrediDropdownWidgetState();
}

class _KrediDropdownWidgetState extends State<KrediDropdownWidget> {
  double secilenKrediDegeri = 1.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade100.withOpacity(0.5),
        borderRadius: Sabitler.borderRadius,
      ),
      child: DropdownButton(
        alignment: Alignment.center,
        value: secilenKrediDegeri,
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade700,
        onChanged: (deger) {
          setState(() {
            secilenKrediDegeri = deger as double;
            widget.onKrediSecildi(deger);
          });
        },
        underline: Container(),
        items: DataHelper.tumDerslerinKredileri(),
      ),
    );
  }
}
