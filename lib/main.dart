import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:storezone/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:storezone/translations/codegen_loader.g.dart';
import 'package:storezone/views/category/cubit.dart';

import 'core/storage.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  GetStorage.init();
  runApp( EasyLocalization(
    path: 'assets/translations',
    supportedLocales: [Locale('en'), Locale('ar')],
    fallbackLocale: Locale('en'),
    assetLoader: CodegenLoader(),


    child: MyApp(
        appRouter: AppRouter(),
      ),
  ),

  );
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create:(context)=>CategoriesCubit()..getCategories(),
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}

