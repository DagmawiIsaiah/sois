import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';
import '../widgets/widgets.dart';

enum CalendarView {
  week,
  month,
}

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarView _calendarView = CalendarView.week;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomNavigation(currentScreenIndex: 1),
                SizedBox(
                  width: double.maxFinite,
                  child: CupertinoSlidingSegmentedControl<CalendarView>(
                    thumbColor: AppTheme.neutral900,
                    groupValue: _calendarView,
                    onValueChanged: (CalendarView? value) {
                      setState(() {
                        _calendarView = value!;
                      });
                    },
                    children: <CalendarView, Widget>{
                      CalendarView.week: Text(
                        "Week",
                        style: TextStyle(
                          color: (_calendarView == CalendarView.week)
                              ? AppTheme.neutral50
                              : AppTheme.neutral900,
                        ),
                      ),
                      CalendarView.month: Text(
                        "Month",
                        style: TextStyle(
                          color: (_calendarView == CalendarView.month)
                              ? AppTheme.neutral50
                              : AppTheme.neutral900,
                        ),
                      ),
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppTheme.space24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // TODO: Use list and loop to generate the days
                      Text("S"),
                      Text("M"),
                      Text("T"),
                      Text("W"),
                      Text("T"),
                      Text("F"),
                      Text("S"),
                    ],
                  ),
                ),
                GridView(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7,
                    mainAxisSpacing: AppTheme.space8,
                    crossAxisSpacing: AppTheme.space8,
                  ),
                  children: [
                    ...List.generate(
                      7,
                      (index) => (index + 21 == 22)
                          ? CalendarDate(day: index + 21, isToday: true)
                          : CalendarDate(day: index + 21, isToday: false),
                    ),
                  ],
                ),
                Text("Tasks"),
                Column(
                  children: [
                    Tag(noTagYet: false),
                    Tag.empty(),
                  ],
                ),
                Text("Reminders"),
                Column(
                  children: [
                    ReminderCard(
                      noReminderYet: false,
                      isClosed: false,
                    ),
                    SizedBox(height: AppTheme.space8),
                    ReminderCard(
                      noReminderYet: false,
                      isClosed: true,
                    ),
                    SizedBox(height: AppTheme.space8),
                    ReminderCard.empty(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: ExpandableFAB(),
    );
  }
}

class CalendarDate extends StatefulWidget {
  final int day;
  final bool isToday;

  const CalendarDate({
    super.key,
    required this.day,
    required this.isToday,
  });

  factory CalendarDate.today() {
    return CalendarDate(
      day: 1,
      isToday: true,
    );
  }

  @override
  State<CalendarDate> createState() => _CalendarDateState();
}

class _CalendarDateState extends State<CalendarDate> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: widget.isToday
              ? AppTheme.primaryColor
              : isSelected
                  ? AppTheme.primaryColor.withAlpha(30)
                  : AppTheme.neutral50,
          borderRadius: BorderRadius.circular(AppTheme.space6),
        ),
        padding: EdgeInsets.all(AppTheme.space12),
        child: Column(
          children: [
            Text(
              widget.day.toString(),
              style: TextStyle(
                  color: widget.isToday
                      ? AppTheme.neutral50
                      : AppTheme.neutral900),
            ),
            SizedBox(height: AppTheme.space4),
            CircleAvatar(
              radius: 2.5,
              backgroundColor:
                  widget.isToday ? AppTheme.neutral50 : AppTheme.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
