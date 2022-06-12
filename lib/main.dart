import 'package:flutter/material.dart';
import 'package:state/ui/views/startup/startup_view.dart';

import 'app/router.gr.dart';
import 'ui/views/home/home_view.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  
  final _Routes = Routes();  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(    
      routerDelegate: _Routes.delegate(),    
      routeInformationParser: _Routes.defaultRouteParser(),    
    );    
  
  }
}
