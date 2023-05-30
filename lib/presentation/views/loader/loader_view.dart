import 'package:flutter/material.dart';

import 'dart:math';

class LoaderView extends StatelessWidget {
  const LoaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:   [
            LineScaleIndicator(lineColor: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 32.0),
            const Text('Connected to Spotify...'),
          ],
        ),
      ),
    );
  }
}

mixin InfiniteProgressMixin {
  late Animation<double> _animation;
  late AnimationController controller;

  double get animationValue => _animation.value;

  void startEngine(TickerProvider vsync, Duration duration) {
    controller = AnimationController(vsync: vsync, duration: duration);
    _animation = CurvedAnimation(parent: controller, curve: Curves.linear);
    _animation = Tween<double>(begin: 0, end: 90).animate(_animation)
      ..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    controller.forward();
  }


  void closeEngine() {
    controller.dispose();
  }
}

class LineScaleIndicator extends StatefulWidget {
  const LineScaleIndicator({super.key,
    this.maxLength = 64,
    this.minLength = 12,
    this.spacing = 4,
    this.lineWidth = 8,
    this.lineNum = 5,
    this.lineColor = Colors.red,
    this.duration = const Duration(milliseconds: 750),
  });

  final double maxLength;
  final double minLength;
  final double lineWidth;
  final double spacing;
  final int lineNum;
  final Color lineColor;
  final Duration duration;

  @override
  State<StatefulWidget> createState() => _LineScaleIndicatorState();
}

class _LineScaleIndicatorState extends State<LineScaleIndicator>
    with SingleTickerProviderStateMixin, InfiniteProgressMixin {
  @override
  void initState() {
    startEngine(this, widget.duration);
    super.initState();
  }

  @override
  void dispose() {
    closeEngine();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return CustomPaint(
          size: measureSize(),
          painter: _LineScaleIndicatorPainter(
            animationValue: animationValue,
            minLength: widget.minLength,
            maxLength: widget.maxLength,
            spacing: widget.spacing,
            lineNum: widget.lineNum,
            lineWidth: widget.lineWidth,
            lineColor: widget.lineColor,
          ),
        );
      },
    );
  }

  Size measureSize() {
    var width = widget.lineNum * widget.lineWidth +
        (widget.lineNum - 1) * widget.spacing;
    return Size(width, widget.maxLength);
  }
}

double _progress = .0;
double _lastExtent = .0;

class _LineScaleIndicatorPainter extends CustomPainter {
  _LineScaleIndicatorPainter({
    required this.animationValue,
    required this.minLength,
    required this.maxLength,
    required this.lineWidth,
    required this.spacing,
    required this.lineNum,
    required this.lineColor,
  }) {
    offsetLength = <double>[];
    var diffLength = maxLength - minLength;
    for (int i = 0; i < lineNum; i++) {
      offsetLength.add(minLength + diffLength * 2 * i / 10.0);
    }
  }

  final double animationValue;
  final double minLength;
  final double maxLength;
  final double lineWidth;
  final double spacing;
  final int lineNum;
  final Color lineColor;

  late List<double> offsetLength = <double>[];

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..isAntiAlias = true
      ..style = PaintingStyle.fill
      ..color = lineColor
      ..strokeJoin = StrokeJoin.round
      ..strokeCap = StrokeCap.round;

    _progress += (_lastExtent - animationValue).abs();
    _lastExtent = animationValue;
    if (_progress >= double.maxFinite) {
      _progress = .0;
      _lastExtent = .0;
    }

    var diffLength = maxLength - minLength;
    for (int i = 0; i < lineNum; i++) {
      var offsetExtent = asin((offsetLength[i] - minLength) / diffLength);
      var scaleLength =
          sin(_progress * pi / 180 + offsetExtent).abs() * diffLength +
              minLength;
      var left = (lineWidth + spacing) * i;
      var top = (maxLength - scaleLength) * .5;
      Rect rect = Rect.fromLTWH(left, top, lineWidth, scaleLength);
      RRect rRect = RRect.fromRectAndRadius(rect, const Radius.circular(4.0));
      canvas.drawRRect(rRect, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
