import 'package:async_redux/async_redux.dart';
import 'package:capstone3/state/app_state.dart';
import 'package:capstone3/utilities/route_generator.dart';
import 'package:capstone3/utilities/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final state = AppState();
  final store = Store<AppState>(initialState: state);

  runApp(
    MyApp(store: store),
  );
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;
  const MyApp({
    required this.store,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
        store: store,
        child: const MaterialAppConnector(),
      );
}

class MaterialAppConnector extends StatelessWidget {
  const MaterialAppConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _MaterialAppViewModel>(
      vm: () => _MaterialAppViewModelFactory(this),
      builder: (context, vm) {
        return MaterialApp(
          theme: themeData,
          initialRoute: '/',
          onGenerateRoute: RouteGenerator.generateRoute,
        );
      },
    );
  }
}

class _MaterialAppViewModelFactory
    extends VmFactory<AppState, MaterialAppConnector> {
  _MaterialAppViewModelFactory(MaterialAppConnector widget) : super(widget);

  @override
  Vm fromStore() {
    return _MaterialAppViewModel();
  }
}

class _MaterialAppViewModel extends Vm {
  _MaterialAppViewModel() : super(equals: []);
}
