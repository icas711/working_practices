// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_styles.dart';

// **************************************************************************
// TextStyleGenerator
// **************************************************************************

class $AppThemeTextStyles extends ThemeExtension<$AppThemeTextStyles> {
  final TextStyle drawerHeader;
  final TextStyle avatar;
  final TextStyle drawerLabel;

  const $AppThemeTextStyles({
    required this.drawerHeader,
    required this.avatar,
    required this.drawerLabel,
  });

  @override
  $AppThemeTextStyles copyWith({
    TextStyle? drawerHeader,
    TextStyle? avatar,
    TextStyle? drawerLabel,
  }) {
    return $AppThemeTextStyles(
      drawerHeader: drawerHeader ?? this.drawerHeader,
      avatar: avatar ?? this.avatar,
      drawerLabel: drawerLabel ?? this.drawerLabel,
    );
  }

  @override
  $AppThemeTextStyles lerp(
      ThemeExtension<$AppThemeTextStyles>? other, double t) {
    if (other is! $AppThemeTextStyles) return this;
    return $AppThemeTextStyles(
      drawerHeader: TextStyle.lerp(drawerHeader, other.drawerHeader, t)!,
      avatar: TextStyle.lerp(avatar, other.avatar, t)!,
      drawerLabel: TextStyle.lerp(drawerLabel, other.drawerLabel, t)!,
    );
  }

  static const $AppThemeTextStyles darkTextStyle = $AppThemeTextStyles(
    drawerHeader: DarkTextStyle.drawerHeader,
    avatar: DarkTextStyle.avatar,
    drawerLabel: DarkTextStyle.drawerLabel,
  );
  static const $AppThemeTextStyles lightTextStyle = $AppThemeTextStyles(
    drawerHeader: LightTextStyle.drawerHeader,
    avatar: LightTextStyle.avatar,
    drawerLabel: LightTextStyle.drawerLabel,
  );
}
