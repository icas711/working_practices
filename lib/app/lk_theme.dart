import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class LkPalette {
  static const redAccent = Color(0xFFF05454);
  static const highlightedText = Color(0xFF000000);
  static const widgets = Color(0xFFFFFFFF);
  static const greenDefault = Color(0xFF48A800);
  static const greenDefaultMain = Color.fromARGB(255, 1, 190, 164);
  static const mainBackground = Color(0xFFFDFDFD);
  static const backgroundOfDiceWithFilters = Color(0xFFF5F5F5);
  static const headlines = Color(0xFF373737);
  static const greenHover = Color(0xFF54C500);
  static const menusPlusLists = Color(0xFF414141);
  static const blueDefault = Color(0xFF44729F);
  static const inboxExpiredSupport = Color(0xFF737373);
  static const blueHover = Color(0xFF4187CC);
  static const dates = Color(0xFF8C8C8C);
  static const chatMessageI = Color(0xFFCAE5FF);
  static const scrollbarSliderAndLines = Color(0xFFD0D0D0);
  static const chatMessageAddressee = Color(0xFFEDFFDF);
  static const lines = Color(0xFFBFBFBF);
  static const shadow = Color(0x26646464);
}

class LkFilterTextField extends StatelessWidget {
  const LkFilterTextField({
    Key? key,
    this.label,
    this.width = double.infinity,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  final String? label;
  final double width;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(text: label),
      style: const TextStyle(
        fontSize: 13,
        //overflow: TextOverflow.ellipsis,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          left: 10,
          top: 20,
          bottom: 0,
          right: 5,
        ),
        constraints: BoxConstraints(
          maxHeight: 30,
          maxWidth: width,
        ),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon, size: 16.0),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon, size: 16.0),
      ),
    );
  }
}

class NoTransitionsOnWeb extends PageTransitionsTheme {
  @override
  Widget buildTransitions<T>(
      route,
      context,
      animation,
      secondaryAnimation,
      child,
      ) {
    if (kIsWeb) {
      return child;
    }
    return super.buildTransitions(
      route,
      context,
      animation,
      secondaryAnimation,
      child,
    );
  }
}

class LkButton extends StatelessWidget {
  late final String _label;
  late final IconData _icon;
  late final Function() _onPressed;

  LkButton(
      {super.key,
        required String label,
        required IconData icon,
        required Function() onPressed}) {
    _label = label;
    _icon = icon;
    _onPressed = onPressed;
  }

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: _onPressed,
      label: Text(_label),
      icon: Icon(_icon),
      style: TextButton.styleFrom(
        foregroundColor: LkPalette.headlines,
        textStyle: const TextStyle(
          fontSize: 12,
        ),
        fixedSize: const Size.fromHeight(37),
      ),
    );
  }
}

class LkActionButton extends StatelessWidget {
  late final String _label;
  late final IconData? _icon;
  late final Function()? _onPressed;

  LkActionButton(
      {super.key,
        required String label,
        IconData? icon,
        required Function()? onPressed}) {
    _label = label;
    _icon = icon;
    _onPressed = onPressed;
  }

  @override
  Widget build(BuildContext context) {
    return _icon == null
        ? OutlinedButton(
      onPressed: _onPressed,
      child: Text(_label),
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: LkPalette.greenDefault,
        textStyle: const TextStyle(
          fontSize: 13,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0)),
        fixedSize: const Size.fromHeight(37),
      ),
    )
        : OutlinedButton.icon(
      onPressed: _onPressed,
      icon: Icon(_icon),
      label: Text(_label),
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: LkPalette.greenDefault,
        textStyle: const TextStyle(
          fontSize: 13,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0)),
        fixedSize: const Size.fromHeight(37),
      ),
    );
  }
}
