import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CustomTimePicker extends StatelessWidget {
  const CustomTimePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppTheme.space24,
        horizontal: AppTheme.space24,
      ),
      decoration: BoxDecoration(
        color: AppTheme.neutral100,
        borderRadius: BorderRadius.circular(
          AppTheme.space6,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Enter time"),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppTheme.neutral200,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              AppTheme.space12,
                            ),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  Text("Hour"),
                ],
              ),
              Text(":"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppTheme.neutral200,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              AppTheme.space12,
                            ),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  Text("Minute"),
                ],
              ),
              Column(
                children: [
                  AMPM.am(),
                  AMPM.pm(),
                ],
              ),
            ],
          ),
          Text("5hrs and 32min left"),
        ],
      ),
    );
  }
}

class AMPM extends StatelessWidget {
  final String amPm;

  const AMPM({
    super.key,
    required this.amPm,
  });

  factory AMPM.am() {
    return AMPM(
      amPm: "AM",
    );
  }

  factory AMPM.pm() {
    return AMPM(
      amPm: "PM",
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppTheme.space12,
          vertical: AppTheme.space8,
        ),
        decoration: BoxDecoration(
          color: AppTheme.neutral100,
          border: Border.all(color: AppTheme.neutral400),
          borderRadius: (amPm == "AM")
              ? BorderRadius.only(
                  topLeft: Radius.circular(
                    AppTheme.space4,
                  ),
                  topRight: Radius.circular(
                    AppTheme.space4,
                  ),
                )
              : BorderRadius.only(
                  bottomLeft: Radius.circular(
                    AppTheme.space4,
                  ),
                  bottomRight: Radius.circular(
                    AppTheme.space4,
                  ),
                ),
        ),
        child: Text(amPm),
      ),
    );
  }
}
