import 'package:client/src/core/application/hive_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    var hiveService = ref.read(hiveProvider);
    hiveService.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          title: const Text('Splash Screen'),
          automaticallyImplyLeading: false,
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.flutter_dash, size: 150, color: Colors.blue),
                Text(
                  'New App',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          Positioned.fill(
            bottom: 25,
            child: SafeArea(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                      width: 10,
                      child: CircularProgressIndicator(),
                    ),
                    SizedBox(width: 10),
                    Text('Loading'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
