import 'package:flutter/material.dart';
import 'package:test_task/core/themes/app_text_styles.dart';

class AnimatedScore extends StatefulWidget {
  final double score;

  const AnimatedScore({super.key, required this.score});

  @override
  _AnimatedScoreState createState() => _AnimatedScoreState();
}

class _AnimatedScoreState extends State<AnimatedScore> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scoreAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _scoreAnimation = Tween<double>(begin: 0, end: widget.score).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scoreAnimation,
      builder: (context, child) {
        return Text(
          _scoreAnimation.value.toStringAsFixed(3), 
          style: AppTextStyles.bold30deepGreen,
        );
      },
    );
  }
}
