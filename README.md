# bresenham-line.c

bresenham-line clib

## Installation

  Install with [clib](https://github.com/clibs/clib):

    $ clib install jb55/bresenham-line.c

## Example

```c
// drawing pixels
int draw_pixel(void *data, int x, int y) {
  struct draw_mode *dm = (struct draw_mode*)data;
  struct world *world = dm->world;
  draw_pixel_at(world, x, y, dm->type, def_accel);
  return 0;
}

bresenham_line((void*)&draw_data, x0, y0, x1, y1, draw_pixel);

// collision detection
bresenham_line((void*)&cdata, x0, y0, x1, y1, collide_pixel);
```

## API

### void bresenham_line(void *data, int x0, int y0, int x1, int y1, int (*setPixel)(void *, int, int));

arguments

  * `data` a void pointer to data that's passed to `setPixel`
  * `x0` the starting x pixel
  * `y0` the starting y pixel
  * `x1` the ending x pixel
  * `y1` the ending y pixel
  * `setPixel` a function pointer that takes:
    - `data` a void pointer to data, originally passed in on the original call
    - `int` the x pixel that's set
    - `int` the y pixel that's set
