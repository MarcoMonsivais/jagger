import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:jagger/screens/home.dart';
import 'package:jagger/screens/onboarding.dart';
import 'package:jagger/src/globalVariables.dart' as Globals;

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {

          _EstablishVariables();

          return MyApp();
        }

        return CircularProgressIndicator();
      },
    );
  }

  _EstablishVariables() async{
    try {
      await FirebaseFirestore.instance
          .collection('conf')
          .doc('keys')
          .get()
          .then((val) {
        Globals.SK_STRIPE = val.data()!['SK_KEY'];
        Globals.PK_STRIPE = val.data()!['PK_KEY'];
        Globals.STRIPE_MERCHANTID = val.data()!['STRIPE_MERCHANTID'];
        Globals.STRIPE_ANDROIDPAYMODE = val.data()!['STRIPE_ANDROIDPAYMODE'];
      });
    }
    catch (onError){
      print('Error: ' + onError.toString());
    }
  }

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'OpenSans'),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''), // English, no country code
          Locale('es', ''), // Spanish, no country code
        ],
        initialRoute: "/onboarding",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          "/onboarding": (BuildContext context) => new Onboarding(),
          "/home": (BuildContext context) => new Home(),
          // "/profile": (BuildContext context) => new Profile(),
          // "/articles": (BuildContext context) => new Articles(),
          // "/elements": (BuildContext context) => new Elements(),
          // "/account": (BuildContext context) => new Register(),
          // // "/accountLogged": (BuildContext context) => new Account('SRb8315lVzNPhL3Chf5yqjoIICh1'),
          // "/pro": (BuildContext context) => new Pro(),
          // "/addProduct/": (BuildContext context) => new addProduct(),
          // "/store/": (BuildContext context) => new storeDetail(),
          // "/admin/": (BuildContext context) => new AdminMode(),
          // "/admin/dev/": (BuildContext context) => new MenuDev(),
          // "/search/": (BuildContext context) => new searchFilter(),
          // "/login/": (BuildContext context) => new EmailLogIn(),
        });
  }
}
