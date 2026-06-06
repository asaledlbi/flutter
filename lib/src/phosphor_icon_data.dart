// library phosphor_flutter;

// import 'package:flutter/widgets.dart';

// class PhosphorIconData extends IconData {
//   const PhosphorIconData(int codePoint, String style)
//       : super(
//           codePoint,
//           fontFamily: 'Phosphor$style',
//           fontPackage: 'phosphor_flutter',
//           matchTextDirection: true,
//         );
// }

// class PhosphorFlatIconData extends PhosphorIconData {
//   const PhosphorFlatIconData(int codePoint, String style)
//       : super(codePoint, style);
// }

// class PhosphorDuotoneIconData extends PhosphorIconData {
//   const PhosphorDuotoneIconData(int codePoint, this.secondary)
//       : super(codePoint, 'Duotone');

//   final PhosphorIconData secondary;
// }
library phosphor_flutter;

import 'package:flutter/widgets.dart';

/// Base Icon Data (Flutter-safe version)
class PhosphorIconData {
  final int codePoint;
  final String style;

  const PhosphorIconData(this.codePoint, this.style);

  /// 🔥 IMPORTANT: return IconData directly for backward compatibility
  IconData get icon => IconData(
    codePoint,
    fontFamily: 'Phosphor$style',
    fontPackage: 'phosphor_flutter',
    matchTextDirection: true,
  );
}

/// Flat Icons (no inheritance, Flutter-safe)
class PhosphorFlatIconData {
  final int codePoint;
  final String style;

  const PhosphorFlatIconData(this.codePoint, this.style);

  IconData get icon => IconData(
    codePoint,
    fontFamily: 'Phosphor$style',
    fontPackage: 'phosphor_flutter',
    matchTextDirection: true,
  );
}

/// Duotone Icons (safe version)
class PhosphorDuotoneIconData {
  final int codePoint;
  final PhosphorIconData secondary;

  const PhosphorDuotoneIconData(this.codePoint, this.secondary);

  IconData get primary => IconData(
    codePoint,
    fontFamily: 'PhosphorDuotone',
    fontPackage: 'phosphor_flutter',
    matchTextDirection: true,
  );

  IconData get secondaryIcon => secondary.icon;
}
