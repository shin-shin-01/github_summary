import 'package:github_summary/services/navigation.dart';
import 'package:github_summary/services_locator.dart';
import 'package:github_summary/ui/home/home_view.dart';
import 'package:github_summary/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    return MaterialApp(
      title: 'GitHub Summary',
      theme: theme.data,
      navigatorKey: servicesLocator<NavigationService>().navigatorKey,
      onGenerateRoute: NavigationService.generateRoute,
      home: const HomeView(),
    );
  }
}
