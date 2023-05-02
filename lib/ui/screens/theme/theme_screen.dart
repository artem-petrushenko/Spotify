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
    final indexCheck = model.indexCheck;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            centerTitle: true,
            title: const Text('Theme'),
            leading: IconButton(
              onPressed: () => model.closeScreen(context),
              icon: const Icon(
                Icons.arrow_back_rounded,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const Divider(),
                Dialog(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          'View dialog',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                            'This dialog is only needed to see what the controls will look like',
                            style: Theme.of(context).textTheme.bodyMedium),
                        const SizedBox(height: 16.0),
                        const TextField(
                          decoration: InputDecoration(
                              hintText: 'Enter text',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.0)))),
                        ),
                        const SizedBox(height: 16.0),
                        CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0))),
                          title: const Text(
                            'This is Checkbox',
                          ),
                          subtitle: const Text(
                            'In this dialog box, it does not work, but is needed only in order to see the result',
                          ),
                          value: true,
                          controlAffinity: ListTileControlAffinity.leading,
                          onChanged: (bool? value) {},
                        ),
                        const SizedBox(height: 24.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text('Close'),
                            ),
                            FilledButton(
                              onPressed: () {},
                              child: const Text('Press'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 80.0,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                scrollDirection: Axis.horizontal,
                itemCount: colorSchemes.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => model.setThemeScheme(index),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16.0)),
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer),
                          child: Column(
                            children: [
                              Container(
                                width: 48.0,
                                height: 24.0,
                                decoration: BoxDecoration(
                                  color: Color(colorSchemes[index].colorScheme),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(32.0),
                                    topRight: Radius.circular(32.0),
                                  ),
                                ),
                                // child: const Icon(Icons.check_rounded),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 24.0,
                                    height: 24.0,
                                    decoration: BoxDecoration(
                                      color:
                                          Color(colorSchemes[index].colorScheme)
                                              .withOpacity(0.75),
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(32.0),
                                      ),
                                    ),
                                    // child: const Icon(Icons.check_rounded),
                                  ),
                                  Container(
                                    width: 24.0,
                                    height: 24.0,
                                    decoration: BoxDecoration(
                                      color:
                                          Color(colorSchemes[index].colorScheme)
                                              .withOpacity(0.50),
                                      borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(32.0),
                                      ),
                                    ),
                                    // child: const Icon(Icons.check_rounded),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        if (index == indexCheck)
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surfaceTint,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(32.0),
                              ),
                            ),
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.check_rounded,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onInverseSurface,
                            ),
                          ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 12.0),
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
        ],
      ),
    );
  }
}
