import 'package:roll_dice_app/view/shared/app_export.dart';

class DiceRollProvider extends ChangeNotifier {
  int _currentDiceRoll = 2;

  int get currentDiceRoll => _currentDiceRoll;

  void rollDice() {
    _currentDiceRoll = Random().nextInt(6) + 1;
    notifyListeners();
  }
}
