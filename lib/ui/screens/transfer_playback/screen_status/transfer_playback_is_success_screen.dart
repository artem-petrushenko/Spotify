import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_client/ui/screens/transfer_playback/transfer_playback_view_model.dart';

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
        height: 32.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Icon(Icons.volume_up_rounded),
            Slider(min: 0, max: 0, value: 0, onChanged: (double volume) {})
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
                onPressed: () {}, icon: const Icon(Icons.close_rounded)),
            title: const Text('DEVICES'),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                Column(
                  children: [
                    const Text('Now Playing'),
                    Text(deviceIsActive.name ?? ''),
                  ],
                )
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: Text('Select'),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: deviceIsNotActives.length,
              (context, index) => GestureDetector(
                onTap: () => model.transferPlayback(
                    deviceIsNotActives[index].id ?? '', context),
                child: Row(
                  children: [
                    const Icon(Icons.computer_rounded),
                    Text(
                      deviceIsNotActives[index].name ?? '',
                    ),
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
