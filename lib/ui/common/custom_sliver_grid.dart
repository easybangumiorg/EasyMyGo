import 'package:flutter/rendering.dart';
import 'dart:math' as math;

class CustomSliverGridDelegateWithMaxCrossAxisExtent
    extends SliverGridDelegateWithMaxCrossAxisExtent {
  late double Function(double width) _measureHeight;
  late bool Function() _outerShouldRelayout;

  CustomSliverGridDelegateWithMaxCrossAxisExtent({
    required super.maxCrossAxisExtent,
    required double Function(double width) measureHeight,
    bool Function()? shouldRelayout,
    super.mainAxisSpacing = 0.0,
    super.crossAxisSpacing = 0.0,
  }) {
    _measureHeight = measureHeight;
    _outerShouldRelayout = shouldRelayout ?? (() => false);
  }

  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    assert(_debugAssertIsValid(constraints.crossAxisExtent));
    int crossAxisCount =
        (constraints.crossAxisExtent / (maxCrossAxisExtent + crossAxisSpacing))
            .ceil();
    // Ensure a minimum count of 1, can be zero and result in an infinite extent
    // below when the window size is 0.
    crossAxisCount = math.max(1, crossAxisCount);
    final double usableCrossAxisExtent = math.max(
      0.0,
      constraints.crossAxisExtent - crossAxisSpacing * (crossAxisCount - 1),
    );
    final double childCrossAxisExtent = usableCrossAxisExtent / crossAxisCount;
    final double childMainAxisExtent = _measureHeight(childCrossAxisExtent);
    return SliverGridRegularTileLayout(
      crossAxisCount: crossAxisCount,
      mainAxisStride: childMainAxisExtent + mainAxisSpacing,
      crossAxisStride: childCrossAxisExtent + crossAxisSpacing,
      childMainAxisExtent: childMainAxisExtent,
      childCrossAxisExtent: childCrossAxisExtent,
      reverseCrossAxis: axisDirectionIsReversed(constraints.crossAxisDirection),
    );
  }

  @override
  bool shouldRelayout(
      covariant SliverGridDelegateWithMaxCrossAxisExtent oldDelegate) {
    return oldDelegate.maxCrossAxisExtent != maxCrossAxisExtent ||
        oldDelegate.mainAxisSpacing != mainAxisSpacing ||
        oldDelegate.crossAxisSpacing != crossAxisSpacing ||
        oldDelegate.childAspectRatio != childAspectRatio ||
        oldDelegate.mainAxisExtent != mainAxisExtent ||
        _outerShouldRelayout();
  }

  bool _debugAssertIsValid(double crossAxisExtent) {
    assert(crossAxisExtent > 0.0);
    assert(maxCrossAxisExtent > 0.0);
    assert(mainAxisSpacing >= 0.0);
    assert(crossAxisSpacing >= 0.0);
    assert(childAspectRatio > 0.0);
    return true;
  }
}
