import 'package:flutter/material.dart';
import 'package:client/src/features/home/domain/home_nav_item.dart';
import 'package:client/src/utils/context_extensions.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<HomeNavItem> navItems;
  final int currentIndex;
  final void Function(int index) onPressed;
  final bool showBottomBorder;

  const HomeAppBar({
    super.key,
    this.title = 'ORION',
    required this.navItems,
    required this.currentIndex,
    required this.onPressed,
    this.showBottomBorder = true,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 5);

  @override
  Widget build(BuildContext context) {
    final cs = context.colorScheme;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      height: kToolbarHeight + 5 + context.padding.top,
      padding: EdgeInsets.only(top: context.padding.top, left: 24, right: 12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: cs.primary.withValues(alpha: showBottomBorder ? 0.15 : 0.0),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _OrionLogo(title: title),
          if (context.isDesktop)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < navItems.length; i++)
                  _NavHeaderButton(
                    navItems[i].label.toUpperCase(),
                    isSelected: currentIndex == i,
                    onPressed: () => onPressed(i),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}

class _OrionLogo extends StatelessWidget {
  final String title;

  const _OrionLogo({required this.title});

  @override
  Widget build(BuildContext context) {
    final tt = context.textTheme;
    final cs = context.colorScheme;
    return Row(
      children: [
        Text(
          title,
          style: tt.titleLarge!.copyWith(letterSpacing: 2.0, color: cs.primary),
        ),
        const SizedBox(width: 8),
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: cs.primary,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: cs.primary.withValues(alpha: 0.5),
                blurRadius: 8,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _NavHeaderButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onPressed;

  const _NavHeaderButton(
    this.title, {
    required this.isSelected,
    required this.onPressed,
  });

  static const _duration = Duration(milliseconds: 200);
  static const _curve = Curves.easeInOut;

  @override
  Widget build(BuildContext context) {
    final tt = context.textTheme;
    final cs = context.colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: GestureDetector(
        onTap: isSelected ? null : onPressed,
        child: AnimatedContainer(
          duration: _duration,
          curve: _curve,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: isSelected
                    ? cs.primary
                    : cs.primary.withValues(alpha: 0),
                width: 2,
              ),
            ),
          ),
          child: AnimatedDefaultTextStyle(
            duration: _duration,
            curve: _curve,
            style: tt.labelLarge!.copyWith(
              color: isSelected ? cs.primary : cs.outline,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
            ),
            child: Text(title),
          ),
        ),
      ),
    );
  }
}
