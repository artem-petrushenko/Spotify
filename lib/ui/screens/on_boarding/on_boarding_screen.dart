import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/on_boarding/on_boarding_model.dart';

import 'package:spotify_client/ui/theme/theme_model.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeModel = context.watch<ThemeModel>();
    final model = context.watch<OnBoardingViewModel>();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => themeModel.setThemeData(!themeModel.isDarkTheme),
            icon: Icon(
              themeModel.isDarkTheme
                  ? Icons.dark_mode_rounded
                  : Icons.light_mode_rounded,
            ),
          ),
        ],
      ),
      bottomNavigationBar: const _NavigationWidget(),
      body: PageView(
        controller: model.pageController,
        onPageChanged: model.onChanged,
        children:  const [
          Align(
            alignment: Alignment.topLeft,
            child: _OnBoardingWidget(
              crossAxisAlignment: CrossAxisAlignment.start,
              topText: 'Cross-platform',
              supportText: 'Flutter Outsource Project',
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: _OnBoardingWidget(
              crossAxisAlignment: CrossAxisAlignment.end,
              topText: 'Cross-platform',
              supportText: 'Flutter Outsource Project',
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: _OnBoardingWidget(
              crossAxisAlignment: CrossAxisAlignment.start,
              topText: 'Cross-platform',
              supportText: 'Flutter Outsource Project',
            ),
          ),
        ],
      ),
    );
  }
}

class _OnBoardingWidget extends StatelessWidget {
  final CrossAxisAlignment crossAxisAlignment;
  final String topText, supportText;

  const _OnBoardingWidget({
    Key? key,
    required this.crossAxisAlignment,
    required this.topText,
    required this.supportText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Text(
            topText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            supportText,
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _NavigationWidget extends StatelessWidget {
  const _NavigationWidget();

  @override
  Widget build(BuildContext context) {
    final model = context.watch<OnBoardingViewModel>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const _IndicatorWidget(),
          TextButton(
            onPressed: () => model.currentIndex == 2
                ? model.openSignInScreen(context)
                : model.openNextView(),
            child: const Text(
              'NEXT',
              style: TextStyle(
                letterSpacing: 8.0,
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _IndicatorWidget extends StatelessWidget {
  const _IndicatorWidget();

  @override
  Widget build(BuildContext context) {
    final currentIndex =
        context.select((OnBoardingViewModel model) => model.currentIndex);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _Indicator(
          positionIndex: 0,
          currentIndex: currentIndex,
          height: 12.0,
        ),
        const SizedBox(width: 4.0),
        _Indicator(
          positionIndex: 1,
          currentIndex: currentIndex,
          height: 32.0,
        ),
        const SizedBox(width: 4.0),
        _Indicator(
          positionIndex: 2,
          currentIndex: currentIndex,
          height: 16.0,
        ),
      ],
    );
  }
}

class _Indicator extends StatelessWidget {
  final int positionIndex, currentIndex;
  final double height;

  const _Indicator({
    required this.currentIndex,
    required this.positionIndex,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 8.0,
      decoration: BoxDecoration(
          color: positionIndex < currentIndex + 1
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.outline,
          borderRadius: BorderRadius.circular(2.0)),
    );
  }
}
