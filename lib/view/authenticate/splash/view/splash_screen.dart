import 'package:flutter/material.dart';
import 'package:meals_app/core/base/state/base_state.dart';
import 'package:meals_app/core/base/view/base_view.dart';
import 'package:meals_app/view/authenticate/splash/viewmodel/splash_viewmodel.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends BaseState<SplashScreen> {
  late SplashViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
        viewModel: SplashViewModel(),
        onModelReady: (model) {
          model.init(context);
        },
        onPageBuilder: (context, value) {
          return Scaffold(
            backgroundColor: Colors.redAccent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Center(
                    child: Text(
                  "Meals",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 20,
                ),
                CircularProgressIndicator(
                  color: Colors.black,
                ),
              ],
            ),
          );
        });
  }
}
