import 'package:flutter/material.dart';
import 'package:client/src/features/home/domain/home_nav_item.dart';
import 'package:client/src/utils/context_extensions.dart';

class HomeBotttomNav extends StatelessWidget {
  final List<HomeNavItem> navItems;
  final int currentIndex;
  final void Function(int index) onPressed;

  const HomeBotttomNav({
    super.key,
    required this.navItems,
    required this.currentIndex,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.colorScheme;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: cs.primary.withValues(alpha: 0.15)),
        ),
      ),
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: Row(
            children: [
              for (int i = 0; i < navItems.length; i++)
                Expanded(
                  child: _BottomNavItem(
                    item: navItems[i],
                    isSelected: currentIndex == i,
                    onPressed: () => onPressed(i),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomNavItem extends StatelessWidget {
  final HomeNavItem item;
  final bool isSelected;
  final VoidCallback onPressed;

  const _BottomNavItem({
    required this.item,
    required this.isSelected,
    required this.onPressed,
  });

  static const _duration = Duration(milliseconds: 200);
  static const _curve = Curves.easeInOut;

  @override
  Widget build(BuildContext context) {
    final cs = context.colorScheme;
    final tt = context.textTheme;

    return GestureDetector(
      onTap: isSelected ? null : onPressed,
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: _duration,
        curve: _curve,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: isSelected ? cs.primary : cs.primary.withValues(alpha: 0),
              width: 2,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: _duration,
              switchInCurve: _curve,
              switchOutCurve: _curve,
              child: IconTheme(
                key: ValueKey(isSelected),
                data: IconThemeData(
                  color: isSelected ? cs.primary : cs.outline,
                  size: 22,
                ),
                child: isSelected ? item.activeIcon : item.icon,
              ),
            ),
            const SizedBox(height: 3),
            AnimatedDefaultTextStyle(
              duration: _duration,
              curve: _curve,
              style: tt.labelSmall!.copyWith(
                color: isSelected ? cs.primary : cs.outline,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              ),
              child: Text(item.label),
            ),
          ],
        ),
      ),
    );
  }
}
