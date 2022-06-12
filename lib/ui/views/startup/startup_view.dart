import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:state/ui/views/home/home_view.dart';
import 'package:state/ui/views/startup/startup_viewModel.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 300.0),
          child: Column(
            children: [
              Center(child: Text(model.title)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeView()));
                  },
                  child: Text('Home'))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: model.increment,
          child: const Icon(Icons.add),
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
