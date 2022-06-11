import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:state/ui/views/startup/startup_viewModel.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(child: Text(model.title)),
        floatingActionButton: FloatingActionButton(
          onPressed: model.increment,
          child: const Icon(Icons.add),
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
