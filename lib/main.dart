import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_ui/material_ui.dart' hide GlobalMaterialLocalizations, MaterialApp, ThemeData;
import 'package:sanad/core/routes/app_router.dart';
import 'package:sanad/l10n/app_localizations.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://kdzvfetkbgicvfgedpuc.supabase.co',
    publishableKey: 'sb_publishable_r3XiLkp2Ny-9pay-MbEtBg_1mY4Z1TT',
  );

  // محدش ليه دعوة بال 3 سطور دول

  final supabase = Supabase.instance.client;
  debugPrint('Supabase initialized!');
  debugPrint('Supabase client: ${supabase.toString()}');

  runApp(const Sanad());
}

class Sanad extends StatelessWidget {
  const Sanad({super.key});

  //محدش يلعب في الحته دي يجدعاااااااااان
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        theme: ThemeData(fontFamily: 'Cairo'),

        title: 'Sanad',
        locale: Locale('ar'),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: router,
      ),
    );
  }
}
