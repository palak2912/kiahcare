import 'package:flutter/material.dart';
import 'package:kiahcare/smaple.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'Screens/Auth/OTP_Verification.dart';
import 'Screens/Auth/RegisterUser.dart';
import 'Screens/Auth/SignIn.dart';
import 'Screens/Auth/SignInOTP_Verification.dart';
import 'Screens/Auth/SignUp.dart';
import 'Screens/BottomNavBar.dart';
import 'Screens/SecondbottomNav.dart';
import 'Screens/SplashScreen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //     providers: [
    //       // ChangeNotifierProvider(create: (_) =>
    //       //     AddressProvider(),
    //       // ),
    //       // ChangeNotifierProvider(create: (_) {
    //       //   return themeProvider;
    //       // }),
    //       // ChangeNotifierProvider(create: (_) =>
    //       //     Products(),
    //       // ),
    //       // ChangeNotifierProvider(create: (_) =>
    //       //     CartProvider(),
    //       // ),
    //       // ChangeNotifierProvider(create: (_) =>
    //       //     FavsProvider(),
    //       // ),
    //       // ChangeNotifierProvider(create: (_) =>
    //       //     OrdersProvider(),
    //       // ),
    //     ],
    //     child:
    //     MaterialApp(
    //       title: 'Flutter Demo',
    //       theme: Styles.themeData(false, context),
    //       debugShowCheckedModeBanner: false,
    //       home: const SplashScreen(),
    //       routes: {
    //         //   '/': (ctx) => LandingPage(),
    //         SplashScreen.routeName: (ctx) => SplashScreen(),
    //         // bottomBar.routeName: (ctx) => bottomBar(),
    //         // cartScreen.routeName: (ctx) => cartScreen(),
    //         // MainScreens.routeName: (ctx) => MainScreens(),
    //         // feeds.routeName: (ctx) => feeds(),
    //         // wishlistScreen.routeName: (ctx) => wishlistScreen(),
    //         // productDetails.routeName: (ctx) => productDetails(),
    //         // categoryFeeds.routeName: (ctx) => categoryFeeds(),
    //         // LoginScreen.routeName: (ctx) => LoginScreen(),
    //         // SignUpScreen.routeName: (ctx) => SignUpScreen(),
    //         // ForgotPassword.routeName: (ctx) => ForgotPassword(),
    //         // orderScreen.routeName: (ctx) => orderScreen(),
    //         // addressScreen.routeName: (ctx) => addressScreen(),
    //         // AddressForm.routeName: (ctx) => AddressForm(),
    //       },
    //     ));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: Color(0xFFF5F5F5)),
        ),
        theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
      // BottomNavBar(),
      Example(),
      // SplashScreen(),
      routes:
      {
        //   '/': (ctx) => LandingPage(),
        SplashScreen.routeName: (ctx) => SplashScreen(),
        // bottomBar.routeName: (ctx) => bottomBar(),
        // cartScreen.routeName: (ctx) => cartScreen(),
        // MainScreens.routeName: (ctx) => MainScreens(),
        // feeds.routeName: (ctx) => feeds(),
        // wishlistScreen.routeName: (ctx) => wishlistScreen(),
        // productDetails.routeName: (ctx) => productDetails(),
        // categoryFeeds.routeName: (ctx) => categoryFeeds(),
        // LoginScreen.routeName: (ctx) => LoginScreen(),
        // SignUpScreen.routeName: (ctx) => SignUpScreen(),
        // ForgotPassword.routeName: (ctx) => ForgotPassword(),
        // orderScreen.routeName: (ctx) => orderScreen(),
        // addressScreen.routeName: (ctx) => addressScreen(),
        // AddressForm.routeName: (ctx) => AddressForm(),
      },
    ); 
  }
}

