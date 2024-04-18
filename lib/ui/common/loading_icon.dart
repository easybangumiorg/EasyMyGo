

import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({super.key});

  static Widget Function(
      BuildContext context, IndicatorState state, double animation) easyPullIconBuilder = (BuildContext context, IndicatorState state, double animation) {
    Widget icon;
    if (state.result == IndicatorResult.noMore){
      //full
      icon = SizedBox(
        child: Image.asset("assets/sakiko_ok.png"),
      );
    }else if(state.mode == IndicatorMode.processing || state.mode == IndicatorMode.ready) {
      //loading
      icon = SizedBox(
        child: Image.asset("assets/sakiko_loading.gif"),
      );
    }else if(state.mode == IndicatorMode.processed || state.mode == IndicatorMode.done) {
      if (state.result == IndicatorResult.fail) {
        //fail
        icon = SizedBox(
          child: Image.asset("assets/sakiko_error.png"),
        );
      } else {
        //success
        icon = SizedBox(
          child: Image.asset("assets/sakiko_ok.png"),
        );
      }
    }else{
      // pull
      icon = SizedBox(
        child: Image.asset("assets/sakiko_pull.png"),
      );
    }

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      reverseDuration: const Duration(milliseconds: 200),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: animation,
            child: child,
          ),
        );
      },
      child: icon,
    );
  };


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset("assets/sakiko_loading.gif"),
    );
  }
}

