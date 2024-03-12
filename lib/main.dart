import 'package:roll_dice_app/view/shared/app_export.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DiceRollProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(325, 825),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: GradientContainer(
            Color.fromARGB(255, 33, 5, 109),
            Color.fromARGB(255, 68, 21, 149),
          ),
        );
      },
    );
  }
}
