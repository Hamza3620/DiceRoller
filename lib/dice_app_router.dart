import 'package:auto_route/auto_route.dart';
import 'package:dice_roller/dice/ui/dice_roll_page.dart';
import 'package:dice_roller/history/ui/history_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      name: 'Dice',
      path: '/',
      page: DiceRollScreen,
      initial: true,
    ),
    AutoRoute(name: 'History', path: 'history', page: HistoryScreen),
  ],
)
class $DiceAppRouter {}
