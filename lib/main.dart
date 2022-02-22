import 'package:flutter/material.dart';
import 'package:payment_app/newPayment.dart';
import 'package:payment_app/CustomWidgets/paymentListItem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment App',
      theme: ThemeData(
        //colors
        primaryColor: const Color(0xff04395E),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color(0xff084B83)),
        backgroundColor: const Color(0xffCBD1DC),
        errorColor: const Color(0xffFF1D15),
        accentColor: const Color(0xff3EC300),

        appBarTheme: AppBarTheme(
          color: Theme.of(context).primaryColor,

        ),

        floatingActionButtonTheme:
            Theme.of(context).floatingActionButtonTheme.copyWith(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                ),

        fontFamily: 'Segoe UI',

        //typography
        textTheme: TextTheme(
          headline6: TextStyle(
              color: Theme.of(context).primaryColor, fontFamily: 'Segoe UI'),
          subtitle1: TextStyle(
              fontSize: 20,
              color: Theme.of(context).primaryColor,
              fontFamily: 'Segoe UI',
              fontWeight: FontWeight.bold),
          subtitle2: TextStyle(
              fontSize: 15,
              color: Theme.of(context).primaryColor,
              fontFamily: 'Segoe UI',
              fontWeight: FontWeight.bold),
        ),
      ),
      home: const MyHomePage(title: 'Latest Payments'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          widget.title,
          style: TextStyle(
            //todo change text color
            color: Theme.of(context).primaryColor,
            fontFamily: 'Noto Sans',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Today",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      ?.copyWith(color: Theme.of(context).primaryColor)),
            ),
            Card(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    PaymentListItem(),
                    PaymentListItem(),
                    PaymentListItem(),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NewPayment();
          }));
        },
        label: const Text("Pay"),
        icon: const Icon(Icons.add),
      ),
    );
  }
}

