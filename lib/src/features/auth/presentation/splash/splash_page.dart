import 'package:client/src/features/auth/presentation/auth_page.dart';
import 'package:client/src/features/auth/presentation/splash/splash_controller.dart';
import 'package:client/src/features/auth/domain/splash_data.dart';
import 'package:client/src/features/home/presentation/home_pageview/home_page.dart';
import 'package:client/src/shared/widgets/custom_error_state.dart';
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
                    Image.asset(
                      'assets/icon/icon.png',
                      width: 120,
                      height: 120,
                    ),
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
                data: (splashData) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    switch (splashData.route) {
                      case SplashRoute.homePage:
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) =>
                                HomePage(navItems: splashData.navItems!),
                          ),
                        );
                      case SplashRoute.authPage:
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const AuthScreen(),
                          ),
                        );
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
