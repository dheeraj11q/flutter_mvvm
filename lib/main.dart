import 'package:fluttermvvm/core/utils/exports/app_material.dart';
import 'package:provider/provider.dart';

import 'core/view_models/home_vm.dart';
import 'view/views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // Here We are injecting [ ViewModels ]
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeViewModel()),
        ChangeNotifierProvider(create: (context) => HomeViewModel())
      ],
      child: Consumer<ThemeViewModel>(builder: (context, themeModelVm, _) {
        return MaterialApp(
          title: 'Flutter Mvvm',
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale("en"),
          theme: themeModelVm.appTheme.themeData,
          home: HomeView(title: "${AppLocalizations.of(context)?.hello}"),
        );
      }),
    );
  }
}
