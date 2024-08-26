import 'package:bootanimation_maker/app/data/enums/bootanimation_type.dart';

class BootAnimationParameter {
  BootAnimationType type = BootAnimationType.p;
  int count =
      1; // how many times to play the animation, or 0 to loop forever until boot is complete
  int pause = 0; // number of FRAMES to delay after this part ends
}
