import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/transfer_playback/transfer_playback_view_model.dart';

import 'package:spotify_client/configuration/constants.dart';

class TransferPlaybackIsSuccessScreen extends StatelessWidget {
  const TransferPlaybackIsSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<TransferPlaybackViewModel>();
    final deviceIsActive = context.select((TransferPlaybackViewModel model) =>
        model.data.availableDevices
            .where((element) => element.isActive == true)
            .first);
    final deviceIsNotActives = context.select(
        (TransferPlaybackViewModel model) => model.data.availableDevices
            .where((element) => element.isActive != true)
            .toList());
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 48.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Constants.horizontalPadding,
            vertical: Constants.verticalPadding,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                Icons.volume_up_rounded,
                color: Theme.of(context).colorScheme.primary,
              ),
              Expanded(
                child: Slider(
                  min: 0,
                  max: 100,
                  value: 35,
                  onChanged: (double volume) {},
                ),
              ),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                onPressed: () => model.closeTransferPlayback(context),
                icon: const Icon(
                  Icons.close_rounded,
                ),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(72.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Constants.horizontalPadding,
                  vertical: Constants.verticalPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const MixingMusicAnimation(),
                        const SizedBox(width: 16.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Current Device',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(fontWeight: FontWeight.w700),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.volume_mute_rounded,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                Text(
                                  deviceIsActive.name ?? '',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      deviceIsNotActives.isNotEmpty
                          ? 'You need to select another device'
                          : 'Other devices not found',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 20,
              (context, index) => GestureDetector(
                onTap: () => model.transferPlayback(
                    deviceIsNotActives[0].id ?? '', context),
                child: ListTile(
                  onTap: () => model.transferPlayback(
                    deviceIsNotActives[index].id ?? '',
                    context,
                  ),
                  dense: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  visualDensity: VisualDensity.standard,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: Constants.horizontalPadding,
                  ),
                  iconColor: Theme.of(context).colorScheme.secondary,
                  leading: const Icon(Icons.computer_rounded),
                  title: Text(
                    deviceIsNotActives[0].name ?? '',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MixingMusicAnimation extends StatefulWidget {
  const MixingMusicAnimation({Key? key}) : super(key: key);

  @override
  State<MixingMusicAnimation> createState() => _MixingMusicAnimationState();
}

class _MixingMusicAnimationState extends State<MixingMusicAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _changeOfSizeAnimation;
  final random = Random();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 750),
    )..forward();

    _changeOfSizeAnimation =
        Tween(begin: 20.0, end: 32.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutBack,
      ),
    );

    _controller.addListener(() {
      setState(() {
      });
    });
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.0,
      width: 28.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: _changeOfSizeAnimation.value / 1.3,
            width: 4.0,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
          ),
          Container(
            height: _changeOfSizeAnimation.value,
            width: 4.0,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
          ),
          Container(
            height: _changeOfSizeAnimation.value / 1.7,
            width: 4.0,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
          ),
          Container(
            height: _changeOfSizeAnimation.value / 2,
            width: 4.0,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
