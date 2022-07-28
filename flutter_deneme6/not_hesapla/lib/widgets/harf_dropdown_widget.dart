import 'package:flutter/material.dart';
import 'package:not_hesapla/constants/app_constants.dart';
import 'package:not_hesapla/helper/data_helper.dart';

class HarfDropdownWidget extends StatefulWidget {
  final Function onHarfSecildi;
  HarfDropdownWidget({Key? key, required this.onHarfSecildi}) : super(key: key);

  @override
  State<HarfDropdownWidget> createState() => _HarfDropdownWidgetState();
}

class _HarfDropdownWidgetState extends State<HarfDropdownWidget> {
  double secilenDeger = 4.0;
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
        value: secilenDeger,
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade700,
        onChanged: (deger) {
          setState(() {
            secilenDeger = deger as double;
            widget.onHarfSecildi(secilenDeger);
          });
        },
        underline: Container(),
        items: DataHelper.tumDerslerinHarfleri(),
      ),
    );
  }
}
