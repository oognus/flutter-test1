import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'model/app_state_model.dart';

void main() {
    return runApp (
        ChangeNotifierProvider<AppStateModel> (
            create: (_) => AppStateModel()..loadProducts(),
            child: CupertinoStoreApp(),
        ),
    );
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Welcome to Flutter',
            home: Scaffold(
                appBar: AppBar(
                    title: Text('Welcome to Flutter'),
                ),
                body: Center(
                    child: Text('HHHello World'),
                ),
            ),
        );
    }
}
