import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/transfer_playback/transfer_playback_view_model.dart';

import 'package:spotify_client/utils/constants/numbers.dart';

class TransferPlaybackIsSuccessScreen extends StatelessWidget {
  const TransferPlaybackIsSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<TransferPlaybackViewModel>();
    final deviceIsActive = context
        .select((TransferPlaybackViewModel model) => model.data.deviceIsActive);
    final deviceIsNotActives = context.select(
        (TransferPlaybackViewModel model) => model.data.deviceIsNotActives);
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 64.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                (deviceIsActive?.volumePercent ?? 0) != 0
                    ? Icons.volume_up_rounded
                    : Icons.volume_off_rounded,
                color: Theme.of(context).colorScheme.primary,
              ),
              Expanded(
                child: Slider(
                  min: 0,
                  max: 100,
                  divisions: 100,
                  label:
                      (deviceIsActive?.volumePercent ?? 0).round().toString(),
                  value: (deviceIsActive?.volumePercent ?? 0).toDouble(),
                  onChangeEnd: (double volumePercent) =>
                      model.setPlaybackVolume(volumePercent),
                  onChanged: (double volumePercent) =>
                      model.onChangePosition(volumePercent),
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
                  horizontal: horizontalPadding,
                  vertical: verticalPadding,
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
                                  deviceIsActive?.name ?? '',
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
                      deviceIsNotActives?.length != 0
                          ? 'You need to select another device'
                          : 'Other devices not found',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            ),
          ),
          (deviceIsNotActives?.length != 0)
              ? SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: deviceIsNotActives?.length,
                    (context, index) => GestureDetector(
                      onTap: () => model.transferPlayback(
                          deviceIsNotActives?[index].id ?? '', context),
                      child: ListTile(
                        onTap: () => model.transferPlayback(
                          deviceIsNotActives?[index].id ?? '',
                          context,
                        ),
                        dense: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        visualDensity: VisualDensity.comfortable,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: horizontalPadding,
                        ),
                        iconColor: Theme.of(context).colorScheme.secondary,
                        leading: Icon(deviceIsNotActives?[index].iconData),
                        subtitle: Text(
                            'Volume: ${deviceIsNotActives?[index].volumePercent ?? 0}'),
                        title: Text(
                          deviceIsNotActives?[index].name ?? '',
                        ),
                      ),
                    ),
                  ),
                )
              : SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      ListTile(
                        dense: true,
                        visualDensity: VisualDensity.comfortable,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: horizontalPadding,
                        ),
                        iconColor: Theme.of(context).colorScheme.secondary,
                        leading: const Icon(Icons.wifi_rounded),
                        title: const Text('Check your Wi-Fi connection'),
                        subtitle: const Text(
                            'Devices must be connected to the same Wi-FI network'),
                      ),
                      ListTile(
                        dense: true,
                        visualDensity: VisualDensity.comfortable,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: horizontalPadding,
                        ),
                        iconColor: Theme.of(context).colorScheme.secondary,
                        leading: const Icon(Icons.devices_rounded),
                        title: const Text('Play music on another device'),
                        subtitle: const Text('Then the music will appear here'),
                      ),
                      ListTile(
                        dense: true,
                        visualDensity: VisualDensity.comfortable,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: horizontalPadding,
                        ),
                        iconColor: Theme.of(context).colorScheme.secondary,
                        leading: const Icon(Icons.power_settings_new_rounded),
                        title: const Text('Reload speaker'),
                        subtitle: const Text(
                            'If the device is new, follow the setup instructions'),
                      ),
                    ],
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
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 750),
    )..forward();

    _changeOfSizeAnimation = Tween(begin: 20.0, end: 32.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutBack,
      ),
    );

    _controller.addListener(() {
      setState(() {});
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
