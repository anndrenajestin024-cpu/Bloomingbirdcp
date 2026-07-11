import 'package:flutter/material.dart';
import '../data/content.dart';
import '../theme/app_theme.dart';
import '../widgets/section_label.dart';

class WhyScreen extends StatelessWidget {
  const WhyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 8),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SectionLabel('WHY DUBAI'),
                const SizedBox(height: 14),
                Text(
                  'A Market Built For Long-Term Confidence.',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 320,
              mainAxisSpacing: 14,
              crossAxisSpacing: 14,
              childAspectRatio: 1.05,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, i) => _WhyCard(point: whyPoints[i]),
              childCount: whyPoints.length,
            ),
          ),
        ),
      ],
    );
  }
}

class _WhyCard extends StatelessWidget {
  final WhyPoint point;
  const _WhyCard({required this.point});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: BBColors.card,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: BBColors.rg4.withOpacity(0.18)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: BBColors.rg4.withOpacity(0.4)),
            ),
            child: const Icon(Icons.diamond_outlined, color: BBColors.rg4, size: 18),
          ),
          const SizedBox(height: 14),
          Text(
            point.title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: BBColors.wh,
              letterSpacing: 0.3,
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Text(
              point.desc,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
