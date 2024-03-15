import 'package:flutter/cupertino.dart';

import 'package:rive/rive.dart';

class AnimatedBtn extends StatelessWidget {
  const AnimatedBtn({
    super.key,
    required RiveAnimationController btnAnimationColtroller,
    required this.prees,
  }) : _btnAnimationColtroller = btnAnimationColtroller;

  final RiveAnimationController _btnAnimationColtroller;

  final VoidCallback prees;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: prees,
      child: SizedBox(
        height: 64,
        width: 260,
        child: Stack(
          children: [
            RiveAnimation.asset(
              "assets/RiveAssets/button.riv",
              controllers: [_btnAnimationColtroller],
            ),
            const Positioned.fill(
                top: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.arrow_right),
                    SizedBox(width: 8),
                    Text('Start the course',
                        style: TextStyle(fontWeight: FontWeight.w600))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
