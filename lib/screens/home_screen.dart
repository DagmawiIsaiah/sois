import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sois/providers/app_state_providers.dart';

import '../utils/utils.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.05,
            ),
            child: Consumer<AppStateProviders>(
              builder: (BuildContext context, appStateProvider, Widget? child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomNavigation(currentScreenIndex: 0),
                    Announcement.welcome(
                      title:
                          "Hi there! Excited to see you, Lets get you up to speed it only takes 5min. follow the steps below",
                      emojiPath: "assets/images/excited.png",
                    ),
                    SizedBox(
                      height: 240,
                      child: ListView(
                        shrinkWrap: true,
                        primary: false,
                        scrollDirection: Axis.horizontal,
                        children: [
                          DailyReportCard(),
                          SizedBox(width: AppTheme.space16),
                          DailyReportCard(),
                          SizedBox(width: AppTheme.space16),
                          DailyReportCard(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 180,
                      child: ListView(
                        shrinkWrap: true,
                        primary: false,
                        scrollDirection: Axis.horizontal,
                        children: [
                          GetStartedGuideCard(),
                          SizedBox(width: AppTheme.space16),
                          GetStartedGuideCard(),
                          SizedBox(width: AppTheme.space16),
                          GetStartedGuideCard(),
                        ],
                      ),
                    ),
                    Text("Tags"),
                    Tag(
                      noTagYet: true,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
      floatingActionButton: ExpandableFAB(),
    );
  }
}
