import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sois/providers/app_state_providers.dart';

import '../utils/utils.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomNavigation(currentScreenIndex: 0),
                if (Provider.of<AppStateProviders>(context).showWelcomeCard)
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
                Consumer<AppStateProviders>(
                  builder:
                      (BuildContext context, appStateProvider, Widget? child) {
                    return SizedBox(
                      height: (!appStateProvider.showCreateTag &&
                              !appStateProvider.showCreateTask &&
                              !appStateProvider.showCreateReminder)
                          ? 180
                          : 0,
                      child: ListView(
                        shrinkWrap: true,
                        primary: false,
                        scrollDirection: Axis.horizontal,
                        children: [
                          if (!appStateProvider.showCreateTag)
                            Column(
                              children: [
                                GetStartedGuideCard.step1(),
                                SizedBox(width: AppTheme.space16),
                              ],
                            ),
                          if (!appStateProvider.showCreateTask)
                            Column(
                              children: [
                                GetStartedGuideCard.step2(),
                                SizedBox(width: AppTheme.space16),
                              ],
                            ),
                          if (!appStateProvider.showCreateReminder)
                            GetStartedGuideCard.step3(),
                        ],
                      ),
                    );
                  },
                ),
                Text("Tags"),
                Tag(
                  noTagYet: true,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Clear Storage"),
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
