import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/features/auth/application/provider/credentials_provider.dart';
import 'package:client/features/auth/presentation/view/auth_screen.dart';
import 'package:client/features/home/presentation/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    // Setup animations
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.6, curve: Curves.easeIn),
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.6, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.6, curve: Curves.easeOut),
      ),
    );

    // Start animation and check credentials after a short delay
    _animationController.forward();
    Future.delayed(const Duration(milliseconds: 2000), _checkCredentials);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _checkCredentials() async {
    final notifier = ref.read(credentialsProvider.notifier);
    await notifier.init();

    if (mounted) {
      final hasCredentials = ref.read(credentialsProvider) != null;
      if (hasCredentials) {
        _navigateToNext(const HomeScreen());
      } else {
        _navigateToNext(const AuthScreen());
      }
    }
  }

  void _navigateToNext(Widget screen) {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => screen,
        transitionsBuilder: (_, animation, __, child) {
          return FadeTransition(opacity: animation, child: child);
        },
        transitionDuration: const Duration(milliseconds: 500),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              theme.colorScheme.primary.withAlpha(230),
              theme.colorScheme.primary,
              theme.colorScheme.primaryContainer.withAlpha(180),
            ],
            stops: const [0.0, 0.6, 1.0],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return FadeTransition(
                  opacity: _fadeAnimation,
                  child: ScaleTransition(
                    scale: _scaleAnimation,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Modern Logo Container
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha(25),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.white.withAlpha(100),
                              width: 2,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withAlpha(50),
                                blurRadius: 20,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: CachedNetworkImage(
                                memCacheWidth: 300,
                                imageUrl:
                                    'https://cdn-icons-png.flaticon.com/512/5806/5806967.png',
                                width: 60,
                                height: 60,
                                fit: BoxFit.contain,
                                errorWidget: (context, url, error) => Icon(
                                  Icons.movie,
                                  size: 60,
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 32),

                        // App Title
                        Text(
                          'arr',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                            shadows: [
                              Shadow(
                                color: Colors.black.withAlpha(100),
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 12),

                        // Subtitle
                        Text(
                          'Sonarr & Radarr Manager',
                          style: TextStyle(
                            color: Colors.white.withAlpha(220),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5,
                          ),
                        ),

                        const SizedBox(height: 60),

                        // Modern Loading Indicator
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha(25),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.white.withAlpha(100),
                              width: 1,
                            ),
                          ),
                          child: Center(
                            child: SizedBox(
                              width: 32,
                              height: 32,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2.5,
                                backgroundColor: Colors.white.withAlpha(80),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 24),

                        // Loading Text
                        Text(
                          'Loading...',
                          style: TextStyle(
                            color: Colors.white.withAlpha(180),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
