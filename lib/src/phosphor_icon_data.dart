library phosphor_flutter;

import 'package:flutter/widgets.dart';

/// Common interface for all phosphor icon types.
abstract class PhosphorIconValue {
  const PhosphorIconValue();

  IconData get icon;
}

/// Base icon data used as duotone secondary layer.
class PhosphorIconData implements PhosphorIconValue {
  final int codePoint;
  final String style;

  const PhosphorIconData(this.codePoint, this.style);

  @override
  IconData get icon => IconData(
        codePoint,
        fontFamily: 'Phosphor$style',
        fontPackage: 'phosphor_flutter',
        matchTextDirection: true,
      );
}

/// Flat icons (regular, bold, fill, etc.).
class PhosphorFlatIconData implements PhosphorIconValue {
  final int codePoint;
  final String style;

  const PhosphorFlatIconData(this.codePoint, this.style);

  @override
  IconData get icon => IconData(
        codePoint,
        fontFamily: 'Phosphor$style',
        fontPackage: 'phosphor_flutter',
        matchTextDirection: true,
      );
}

/// Duotone icons with primary and secondary layers.
class PhosphorDuotoneIconData implements PhosphorIconValue {
  final int codePoint;
  final PhosphorIconData secondary;

  const PhosphorDuotoneIconData(this.codePoint, this.secondary);

  @override
  IconData get icon => primary;

  IconData get primary => IconData(
        codePoint,
        fontFamily: 'PhosphorDuotone',
        fontPackage: 'phosphor_flutter',
        matchTextDirection: true,
      );

  IconData get secondaryIcon => secondary.icon;
}
