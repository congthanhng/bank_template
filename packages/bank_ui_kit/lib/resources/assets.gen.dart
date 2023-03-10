/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/chart.png
  AssetGenImage get chart => const AssetGenImage('assets/icons/chart.png');

  /// File path: assets/icons/close.png
  AssetGenImage get close => const AssetGenImage('assets/icons/close.png');

  /// File path: assets/icons/creditcard_face.png
  AssetGenImage get creditcardFace =>
      const AssetGenImage('assets/icons/creditcard_face.png');

  /// File path: assets/icons/dollar.png
  AssetGenImage get dollar => const AssetGenImage('assets/icons/dollar.png');

  /// File path: assets/icons/euro.png
  AssetGenImage get euro => const AssetGenImage('assets/icons/euro.png');

  /// File path: assets/icons/icon_bag_2px_line.png
  AssetGenImage get iconBag2pxLine =>
      const AssetGenImage('assets/icons/icon_bag_2px_line.png');

  /// File path: assets/icons/icon_card_2px_line.png
  AssetGenImage get iconCard2pxLine =>
      const AssetGenImage('assets/icons/icon_card_2px_line.png');

  /// File path: assets/icons/icon_chat_2px_line.png
  AssetGenImage get iconChat2pxLine =>
      const AssetGenImage('assets/icons/icon_chat_2px_line.png');

  /// File path: assets/icons/icon_home_2px_line.png
  AssetGenImage get iconHome2pxLine =>
      const AssetGenImage('assets/icons/icon_home_2px_line.png');

  /// File path: assets/icons/icon_time_2px_line.png
  AssetGenImage get iconTime2pxLine =>
      const AssetGenImage('assets/icons/icon_time_2px_line.png');

  /// File path: assets/icons/metal.png
  AssetGenImage get metal => const AssetGenImage('assets/icons/metal.png');

  /// File path: assets/icons/star.png
  AssetGenImage get star => const AssetGenImage('assets/icons/star.png');

  /// File path: assets/icons/thunder.png
  AssetGenImage get thunder => const AssetGenImage('assets/icons/thunder.png');

  /// File path: assets/icons/wallet.png
  AssetGenImage get wallet => const AssetGenImage('assets/icons/wallet.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        chart,
        close,
        creditcardFace,
        dollar,
        euro,
        iconBag2pxLine,
        iconCard2pxLine,
        iconChat2pxLine,
        iconHome2pxLine,
        iconTime2pxLine,
        metal,
        star,
        thunder,
        wallet
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/user_avatar.svg
  SvgGenImage get userAvatar =>
      const SvgGenImage('assets/images/user_avatar.svg');

  /// File path: assets/images/visa_logo.png
  AssetGenImage get visaLogo =>
      const AssetGenImage('assets/images/visa_logo.png');

  /// List of all assets
  List<dynamic> get values => [logo, userAvatar, visaLogo];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated Clip? clipBehavior,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
