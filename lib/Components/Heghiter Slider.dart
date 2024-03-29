import 'package:bmi_calc/data/dataType.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'colors.dart';

class TallSelector extends StatefulWidget {
  TallSelector();
  @override
  State<TallSelector> createState() => _TallSelector();
}

class _TallSelector extends State<TallSelector> {
  @override
  Widget build(BuildContext context) {
    final datatall = Provider.of<DataProv>(context);
    return Container(
      width: double.infinity,

      ///margin: const EdgeInsets.all(8.0),
      decoration:
          BoxDecoration(color: items, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "Height",
            style: normalFont.copyWith(
              fontSize: 20,
              color: textW,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${datatall.tall}",
                style: normalFont.copyWith(
                  fontSize: 25,
                  color: textW,
                ),
              ),
              Text(
                "cm",
                style: normalFont.copyWith(
                  fontSize: 14,
                  color: textW,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Slider(
              min: 60,
              max: 210,
              value: datatall.tall.toDouble(),
              onChanged: (value) {
                datatall.slide(value);
              }),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
