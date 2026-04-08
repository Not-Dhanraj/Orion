import 'package:go_router/go_router.dart';
import 'package:client/src/features/auth/presentation/splash/splash_controller.dart';
import 'package:client/src/features/auth/domain/splash_route.dart';
import 'package:client/src/shared/widgets/indicators/custom_error_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:client/src/features/movies/presentation/movie_library/movie_library_controller.dart';
import 'package:client/src/features/series/presentation/series_library/series_library_controller.dart';
import 'widgets/init_background.dart';
import 'widgets/init_footer.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final splashState = ref.watch(splashController);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          const InitBackground(),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: splashState.when(
                skipLoadingOnRefresh: false,
                skipLoadingOnReload: false,
                loading: () => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/icon/icon.png', width: 120),
                    const SizedBox(height: 32),
                    const _BrandBranding(),
                  ],
                ),
                error: (err, stack) => CustomErrorState(
                  title: 'Application Initialization Failed',
                  error: err,
                  stackTrace: stack,
                  onRetry: () {
                    ref.invalidate(movieLibraryController);
                    ref.invalidate(seriesLibraryController);
                    ref.invalidate(splashController);
                  },
                ),
                data: (splashRoute) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    switch (splashRoute) {
                      case SplashRoute.homePage:
                        context.go('/library');
                      case SplashRoute.authPage:
                        context.go('/auth');
                    }
                  });

                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/icon/icon.png',
                        width: 120,
                        height: 120,
                      ),
                      const SizedBox(height: 32),
                      const _BrandBranding(),
                    ],
                  );
                },
              ),
            ),
          ),
          if (splashState.isLoading || !splashState.hasError)
            const InitFooter(),
        ],
      ),
    );
  }
}

class _BrandBranding extends StatelessWidget {
  const _BrandBranding();

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;
    return Column(
      children: [
        Text(
          'ORION',
          style: tt.displayLarge!.copyWith(
            letterSpacing: 20,
            color: cs.primary,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 32,
              height: 1,
              color: cs.primary.withValues(alpha: 0.3),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'MEDIA MANAGEMENT PLATFORM',
                style: tt.labelSmall!.copyWith(
                  letterSpacing: 4.0,
                  color: cs.onSurfaceVariant,
                ),
              ),
            ),
            Container(
              width: 32,
              height: 1,
              color: cs.primary.withValues(alpha: 0.3),
            ),
          ],
        ),
      ],
    );
  }
}
