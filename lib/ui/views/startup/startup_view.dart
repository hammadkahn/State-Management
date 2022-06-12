import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:state/ui/views/startup/startup_viewModel.dart';
import 'package:state/app/router.gr.dart';

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
                    AutoRouter.of(context).push(const HomeView());
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => HomeView()));
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
