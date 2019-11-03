import 'package:flutter/widgets.dart';
import 'package:tagl/utilities/AppColors.dart';
import 'package:tagl/utilities/FontStyles.dart';
import 'package:tagl/widgets/SlideUpRoute.dart';

class BlueButton extends StatelessWidget {
  final Widget navigate;
  final String text;

  BlueButton({this.navigate, this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(SlideUpRoute(widget: navigate));
      },
      child: Container(
        alignment: Alignment(0, 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(28)),
            gradient: LinearGradient(
                begin: Alignment(0, -1),
                end: Alignment(0, 1),
                colors: AppColors.recordAnswerGradient)),
        child: Text(
          text,
          style: FontStyles.blueButton,
        ),
        height: 64,
        width: 232,
      ),
    );
  }
}
