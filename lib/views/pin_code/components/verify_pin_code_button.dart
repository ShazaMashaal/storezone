import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/colors.dart';
import 'package:storezone/consts/strings.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import '../cubit.dart';
import '../states.dart';

class VerifyPinCodeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = PinCodeCubit.of(context);
    return BlocBuilder(
        bloc: controller,
        builder: (context, state) => state is PinCodeLoading
            ? CircularProgressIndicator()
            : CustomButton(
                text: LocaleKeys.pinCode_verify.tr(),
                color: appOrangeColor,
                textColor: Colors.white,
                function: () => controller.verifyCode(context),
              ));
  }
}
