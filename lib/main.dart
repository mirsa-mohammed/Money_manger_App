import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:money_manager/models/category/category_model.dart';
import 'package:money_manager/models/transaction/transaction_model.dart';
import 'package:money_manager/screens/home/screen_home.dart';
import 'package:money_manager/screens/transaction/add_transaction/screen_add_transaction.dart';

// Flutter sample project
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  if (!Hive.isAdapterRegistered(CategoryTypeAdapter().typeId)) {
    Hive.registerAdapter(CategoryTypeAdapter());
  }

  if (!Hive.isAdapterRegistered(CategoryModelAdapter().typeId)) {
    Hive.registerAdapter(CategoryModelAdapter());
  }

  if (!Hive.isAdapterRegistered(TransactionModelAdapter().typeId)) {
    Hive.registerAdapter(TransactionModelAdapter());
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // debug banner remove
        debugShowCheckedModeBanner: false,
        title: 'Money Manager',
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: const ScreenHome(),
        routes: {
          ScreenAddTransaction.routeName: (ctx) => const ScreenAddTransaction(),
        });
  }
}
