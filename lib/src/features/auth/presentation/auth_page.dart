import 'package:go_router/go_router.dart';
import 'package:client/src/features/auth/application/auth_service.dart';
import 'package:client/src/features/auth/domain/welcome_step.dart';
import 'package:client/src/features/auth/presentation/auth_controller.dart';
import 'package:client/src/features/auth/presentation/welcome/welcome_brand_step.dart';
import 'package:client/src/features/auth/presentation/welcome/welcome_form_step.dart';
import 'package:client/src/features/auth/presentation/welcome/welcome_selector_step.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthScreen extends ConsumerStatefulWidget {
  const AuthScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthScreenState();
}

class _AuthScreenState extends ConsumerState<AuthScreen> {
  final _urlController = TextEditingController();
  final _apiKeyController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _urlController.dispose();
    _apiKeyController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _navigateToHome() {
    context.go('/');
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authController);
    final notifier = ref.read(authController.notifier);

    final Widget child = () {
      switch (state.currentStep) {
        case WelcomeStep.brand:
          return WelcomeBrandStep(
            key: const ValueKey('brand'),
            onBegin: () => notifier.setStep(WelcomeStep.selector),
          );
        case WelcomeStep.selector:
          return WelcomeSelectorStep(
            key: const ValueKey('selector'),
            state: state,
            onServiceSelect: (type) {
              _urlController.clear();
              _apiKeyController.clear();
              _passwordController.clear();
              notifier.selectService(type);
            },
            onProceed: _navigateToHome,
          );
        case WelcomeStep.form:
          final serviceType = state.selectedServiceType ?? ServiceType.sonarr;
          final isLoading = serviceType == ServiceType.sonarr
              ? state.isLoadingSonarr
              : serviceType == ServiceType.radarr
                  ? state.isLoadingRadarr
                  : state.isLoadingJellyfin;

          return WelcomeFormStep(
            key: const ValueKey('form'),
            serviceType: serviceType,
            urlController: _urlController,
            apiKeyController: _apiKeyController,
            passwordController: _passwordController,
            isLoading: isLoading,
            onBack: () => notifier.setStep(WelcomeStep.selector),
            onConnect: () {
              if (serviceType == ServiceType.sonarr) {
                notifier.updateSonarr(
                  _urlController.text,
                  _apiKeyController.text,
                  context,
                );
              } else if (serviceType == ServiceType.radarr) {
                notifier.updateRadarr(
                  _urlController.text,
                  _apiKeyController.text,
                  context,
                );
              } else if (serviceType == ServiceType.jellyfin) {
                notifier.updateJellyfin(
                  _urlController.text,
                  _apiKeyController.text, // Username
                  _passwordController.text,
                  context,
                );
              }
            },
          );
      }
    }();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 600),
        switchInCurve: Curves.easeInOutCubic,
        switchOutCurve: Curves.easeInOutCubic,
        transitionBuilder: (child, anim) => FadeTransition(
          opacity: anim,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.05),
              end: Offset.zero,
            ).animate(anim),
            child: child,
          ),
        ),
        child: child,
      ),
    );
  }
}
