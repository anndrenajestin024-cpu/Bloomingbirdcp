import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/section_label.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 340,
          pinned: true,
          backgroundColor: BBColors.bg,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('assets/images/img_00.jpg', fit: BoxFit.cover),
                DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.35),
                        BBColors.bg,
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/images/img_01.png', height: 34),
                        const SizedBox(height: 14),
                        Text(
                          'Property. Strategy. Legacy.',
                          style: textTheme.headlineLarge,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 40),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              const SectionLabel('ADVICE BEFORE COMMISSION'),
              const SizedBox(height: 18),
              Text(
                'The strongest portfolios are never built by following the market. They are built by understanding it.',
                style: textTheme.bodyMedium,
              ),
              const SizedBox(height: 14),
              Text(
                'At Bloomingbird, we believe real estate is more than an asset on a balance sheet. It is a decision that shapes lifestyles, protects wealth, and creates opportunities that extend far beyond a single generation.',
                style: textTheme.bodyMedium,
              ),
              const SizedBox(height: 14),
              Text(
                'Every recommendation begins with understanding your ambitions, not simply your budget. Successful investing is not about owning more property. It is about owning the right property at the right time, for the right reason.',
                style: textTheme.bodyMedium,
              ),
              const SizedBox(height: 24),
              _PullQuote('"Create lasting value… not momentary excitement."'),
              const SizedBox(height: 24),
              Text(
                "Rather than chasing trends, we focus on identifying opportunities backed by research, market intelligence, and a deep understanding of Dubai's evolving landscape. Every conversation, every recommendation, and every acquisition is guided by one principle.",
                style: textTheme.bodyMedium,
              ),
              const SizedBox(height: 40),
              Divider(color: BBColors.rg4.withOpacity(0.2)),
              const SizedBox(height: 32),
              Text(
                'Advice Should Come Before Commission.',
                style: textTheme.headlineMedium,
              ),
              const SizedBox(height: 10),
              Text(
                'Bloomingbird was founded on a simple belief:',
                style: textTheme.bodyMedium?.copyWith(
                  fontFamily: 'EBGaramond',
                  fontStyle: FontStyle.italic,
                  color: BBColors.mu,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Every property decision deserves thoughtful advice, not a sales pitch. Every recommendation begins with understanding your ambitions, analysing the market, and identifying opportunities that create genuine long-term value rather than simply another transaction.',
                style: textTheme.bodyMedium,
              ),
              const SizedBox(height: 14),
              Text(
                'Whether you are purchasing your first home, building an international portfolio, or investing for the next generation, our responsibility remains the same: to guide every decision with clarity, integrity, and conviction.',
                style: textTheme.bodyMedium,
              ),
              const SizedBox(height: 14),
              Text(
                'We work for your outcome, not our commission.',
                style: textTheme.bodyMedium?.copyWith(
                  color: BBColors.rg4,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 32),
              _ProcessStrip(),
            ]),
          ),
        ),
      ],
    );
  }
}

class _PullQuote extends StatelessWidget {
  final String text;
  const _PullQuote(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: BBColors.rg4.withOpacity(0.28)),
          bottom: BorderSide(color: BBColors.rg4.withOpacity(0.28)),
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontFamily: 'EBGaramond',
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500,
          fontSize: 19,
          color: BBColors.rg4,
          height: 1.5,
        ),
      ),
    );
  }
}

class _ProcessStrip extends StatelessWidget {
  const _ProcessStrip();

  @override
  Widget build(BuildContext context) {
    const steps = [
      ['1', 'Discover', 'Understand your goals and timeline'],
      ['2', 'Analyse', 'Deep market intelligence and research'],
      ['3', 'Curate', 'Handpicked opportunities aligned to you'],
      ['4', 'Acquire', 'Confident negotiations and execution'],
      ['5', 'Manage', 'Long-term asset support and oversight'],
      ['6', 'Grow', 'Building lasting, generational wealth'],
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionLabel('OUR PROCESS'),
        const SizedBox(height: 20),
        ...steps.map(
          (s) => Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  s[0],
                  style: const TextStyle(
                    fontFamily: 'EBGaramond',
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: BBColors.rg3,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        s[1],
                        style: const TextStyle(
                          fontSize: 13,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                          color: BBColors.wh,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(s[2], style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
