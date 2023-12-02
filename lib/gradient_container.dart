import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientCotainer extends StatelessWidget {
  const GradientCotainer(
    this.home,
    this.color1,
    this.color2, {
    super.key,
  });
  final void Function() home;
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(home),
      ),
    );
  }
}

// class GradientCotainer extends StatelessWidget {
//   const GradientCotainer(
//     this.colors, {
//     super.key,
//   });
//   final List<Color> colors;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(child: StyledText("hello world..!")),
//     );
//   }
// }
