import 'package:flutter/material.dart';

// const Color _customColor = Color(0xff5C11D4);

// const List<Color> _colorThemes = [
//   _customColor,
//   // static const Color scaffoldBg = Color(0xff252724);
//   // static const Color bgLight1 = Color(0xff333646);
//   // static const Color bgLight2 = Color(0xff424657);
//   // static const Color textFieldBg = Color(0xffC8C9CE);
//   // static const Color hintDark = Color(0xff666874);
//   // static const Color yelloowSecondary = Color(0xffFFC25C);
//   // static const Color yellowPrimary = Color(0xffFFAF29);
//   // static const Color whitePrimary = Color(0xffEAEAEB);
//   // static const Color whiteSecondary = Color(0xffC8C9CE);
//   Color(0xff252724),
//   Color(0xff333646),
//   Color(0xff424657),
//   Color(0xffC8C9CE),
//   Color(0xff666874),
//   Color(0xffFFC25C),
//   Color(0xffFFAF29),
//   Color(0xffEAEAEB),
//   Color(0xffC8C9CE),
// ];

class AppTheme {
  // final int selectedColor;

  // AppTheme({this.selectedColor = 0})
  //     : assert(
  //         selectedColor >= 0 && selectedColor <= _colorThemes.length -1,
  //         'Colors must be between 0 and ${_colorThemes.length}',
  //       );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark
      // colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
