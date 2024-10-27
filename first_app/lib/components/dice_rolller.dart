import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random(); //Random fonksiyonunu sürekli çağırmak yerine bir kere çağırmak yeterli
//Bunu sürekli olarak yaparsak hafızada sürekli oluştur ve sil şeklinde gereksiz kalabalık yaparız.
//Bu şekilde çağırmak en iyi çözüm, küçük uygulamalarda sorun olmasa da büyük uygulamalarda sorun yaratır.

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImageOne = 'assets/images/dice-2.png';
  var activeDiceImageTwo = 'assets/images/dice-2.png';

  void rollDice() {
    var diceRollOne = randomizer.nextInt(6) + 1;
    var diceRollTwo = randomizer.nextInt(6) + 1;

    setState(() {
      activeDiceImageOne = 'assets/images/dice-$diceRollOne.png';
      activeDiceImageTwo = 'assets/images/dice-$diceRollTwo.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Image.asset(
              activeDiceImageOne,
              width: 200,
            ),
            Image.asset(
              activeDiceImageTwo,
              width: 200,
            ),
          ],
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          child: const Text(
            'Roll Dice',
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
