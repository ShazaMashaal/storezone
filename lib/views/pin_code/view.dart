import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/forgot_password/components/custom_appbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'components/pin_code_form.dart';
import 'cubit.dart';

class PinCodeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context).settings.arguments as Map;
    return BlocProvider(
      create: (context) => PinCodeCubit(arguments['email']),
      child: Scaffold(
        appBar: customAppBar(context, LocaleKeys.pinCode_title.tr()),

        body: PinCodeForm(),
    )
    );
  }
}

