
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyRangeSlider extends StatefulWidget {
  MyRangeSlider({super.key});

  @override
  State<MyRangeSlider> createState() => _MyRangeSliderState();
  
}

class _MyRangeSliderState extends State<MyRangeSlider> {
  RangeValues values = const RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${values.start}',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        Text(
                          '\$${values.end}',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                    RangeSlider(
                      values: values,
                      min: 0,
                      max: 100,
                      divisions: 100,
                      activeColor: MyColors.primary,
                      labels: labels,
                      onChanged: (RangeValues values) {
                        setState(() {
                          this.values = values;
                        });
                      },
                    ),
                  ],
                );
  }
}