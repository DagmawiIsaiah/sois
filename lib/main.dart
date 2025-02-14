import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../router/router.dart';
import '../utils/utils.dart';
import '../providers/app_state_providers.dart';

void main() {
  ChangeNotifierProvider(
    create: (context) => AppStateProviders(),
    child: SOIS(),
  );
}

class SOIS extends StatelessWidget {
  const SOIS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'SOIS',
      theme: AppTheme.lightTheme,
      routerConfig: router,
    );
  }
}
