// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../infrastructure/statics/consts.dart';
import '../../infrastructure/statics/styles.dart';

class MiniBtn extends StatelessWidget {
  const MiniBtn(
      {super.key,
      required this.onTap,
      required this.text,
      this.enable = true,
      this.isLoading = false});
  final Function onTap;
  final String text;
  final bool enable;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
            enable ? Colors.white : AppColors.greyDark),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
        ),
      ),
      onPressed: !enable || isLoading ? null : () => onTap(),
      child: isLoading
          ? const SizedBox(
              height: 15,
              width: 15,
              child: CircularProgressIndicator(
                color: Colors.black,
              ))
          : Text(
              text,
              style: TextStyles.textButton(
                color: AppColors.black,
              ),
            ),
    );
  }
}
