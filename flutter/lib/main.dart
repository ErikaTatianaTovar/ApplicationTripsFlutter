import 'package:application/User/bloc/bloc_user.dart';
import 'package:application/User/ui/screens/sign_in_screen.dart';
import 'package:application/flutter_trips_cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  String descriptionDummy = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ac purus in purus lobortis tincidunt. Quisque volutpat fermentum nisl, sit amet pellentesque sapien dictum quis. Proin nec dolor eu tellus bibendum auctor eget nec turpis. Integer pharetra elementum mi, ac congue nisl vulputate id. Nulla id augue eget velit tristique aliquam. Fusce at dolor vitae lectus commodo venenatis. In scelerisque metus eu lorem condimentum, eu ultrices orci lacinia.";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
            title: 'Flutter Demo',
            //home: FlutterTripsCupertino()
          home:SignInScreen(),
        ),
        bloc: UserBloc());


  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
