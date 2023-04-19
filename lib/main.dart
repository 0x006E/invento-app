import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invento/presentation/router/app_router.dart';

void main() {
  runApp(MyApp());
}

const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xff110f2f),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF000000;

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter();

  // static const youEnabled = true;
  // static final _defaultLightColorScheme =
  //     ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey);

  // static final _defaultDarkColorScheme = ColorScheme.fromSwatch(
  //     primarySwatch: Colors.blueGrey, brightness: Brightness.dark);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return DynamicColorBuilder(builder: (lightColorScheme, darkColorScheme) {
    return MaterialApp(
      title: 'Invento',
      theme: ThemeData(
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent,
        listTileTheme: const ListTileThemeData(
          visualDensity: VisualDensity(horizontal: -2, vertical: -2),
        ),
        checkboxTheme: const CheckboxThemeData(
          visualDensity: VisualDensity(horizontal: -2, vertical: -2),
          splashRadius: 0,
        ),
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ),
        tabBarTheme: TabBarTheme(
          labelStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
        primaryColor: Colors.white,
        primarySwatch: primaryBlack,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(4),
          ),
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(elevation: 0),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.black, width: 1),
            elevation: 0,
          ),
        ),
      ),

      // darkTheme: ThemeData(
      //   colorScheme: youEnabled
      //       ? (darkColorScheme ?? _defaultDarkColorScheme)
      //       : _defaultDarkColorScheme,
      //   useMaterial3: true,
      // ),
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
    // });
  }
}
