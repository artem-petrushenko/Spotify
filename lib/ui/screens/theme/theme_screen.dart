import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/theme/theme_view_model.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<ThemeViewModel>();
    final colorSchemes =
        context.select((ThemeViewModel model) => ThemeViewModel.colorSchemes);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_rounded,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ListTile(
                  leading: Text(
                    AppLocalizations.of(context)!.darkTheme,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  trailing: Switch(
                    value: model.isDarkTheme,
                    onChanged: (value) => model.setThemeData(value),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 32.0,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: colorSchemes.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () =>
                        model.setThemeScheme(colorSchemes[index].colorScheme),
                    child: Container(
                      width: 32.0,
                      height: 32.0,
                      decoration: BoxDecoration(
                        color: Color(colorSchemes[index].colorScheme),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      // child: const Icon(Icons.check_rounded),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 12.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
