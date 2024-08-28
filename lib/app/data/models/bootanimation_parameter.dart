import 'package:bootanimation_maker/app/data/enums/bootanimation_type.dart';

class BootAnimationParameter {
  // a single char indicating what type of animation segment this is
  BootAnimationType type = BootAnimationType.p;
  // how many times to play the animation, or 0 to loop forever until boot is complete
  int count = 1;
  // number of FRAMES to delay after this part ends
  int pause = 0;
}
