import 'package:roll_dice_app/view/shared/app_export.dart';

class DiceRoll extends StatelessWidget {
  const DiceRoll({super.key});
  void rollDice() {}
  @override
  Widget build(BuildContext context) {
    var diceRollProvider = Provider.of<DiceRollProvider>(context);
    int currentDiceRoll = diceRollProvider.currentDiceRoll;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: diceRollProvider.rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(20),
            foregroundColor: Colors.white,
          ),
          child: reusableText(
            title: 'Roll Dice',
            style: appstyle(13, Colors.white, FontWeight.normal),
          ),
        ),
      ],
    );
  }
}
