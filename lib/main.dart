import 'package:flutter/material.dart';

// TODO (Minggu 2): aktifkan Firebase setelah `flutterfire configure`
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const OrgLoanApp());
}

class OrgLoanApp extends StatelessWidget {
  const OrgLoanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ORGLOAN',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF2F6BC6),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(child: Text('ORGLOAN')),
      ),
    );
  }
}
