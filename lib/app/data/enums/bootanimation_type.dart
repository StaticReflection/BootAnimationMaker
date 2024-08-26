enum BootAnimationType {
  p, // this part will play unless interrupted by the end of the boot
  c, // this part will play to completion, no matter what
  f; // same as p but in addition the specified number of frames is being faded out while continue playing. Only the first interrupted f part is faded out, other subsequent f parts are skipped
}
