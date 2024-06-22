import 'package:ecommerce_brand/screens/home%20ui%20riviu/blocs%20animation/event_animation.dart';
import 'package:ecommerce_brand/screens/home%20ui%20riviu/blocs%20animation/state_animation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimationBloc extends Bloc<AnimationEvent, AnimationState> {
  AnimationBloc() : super(ExpandAppBar()) {
    on<ScrollDown>((event, emit) => scrollDataDown(event: event, emit: emit));
    on<ScrollUp>((event, emit) => scrollDataUp(event: event, emit: emit));
    on<ScrollUpQuick>(
        (event, emit) => scrollDataUpQuick(event: event, emit: emit));
  }

  scrollDataDown({required ScrollDown event, required Emitter emit}) async {
    emit(ScaleAppBar());
  }

  scrollDataUp({required ScrollUp event, required Emitter emit}) async {
    emit(ExpandAppBar());
  }

  scrollDataUpQuick(
      {required ScrollUpQuick event, required Emitter emit}) async {
    emit(ExpandAppBarQuick());
  }
}
