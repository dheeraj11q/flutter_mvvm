import 'package:provider/provider.dart';
import '../../../core/utils/exports/app_material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  AppLocalizations? appLocale;

  @override
  void didChangeDependencies() {
    appLocale = AppLocalizations.of(context);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${appLocale?.hello}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'True',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Provider.of<HomeViewModel>(context, listen: false).getUsers();
          Provider.of<ThemeViewModel>(context, listen: false).changeTheme();
        },
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: appTheme(context).colors.white,
        ),
      ),
    );
  }
}
