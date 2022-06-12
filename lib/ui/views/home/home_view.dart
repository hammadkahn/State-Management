import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:state/app/router.gr.dart';
import 'home_viewModel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 300.0),
          child: Column(
            children: [
              Center(child: Text(model.title)),
              ElevatedButton(
                  onPressed: () {
                    AutoRouter.of(context).push(const StartupView());
                  },
                  child: Text('Back'))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: model.increment,
          child: const Icon(Icons.add),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
