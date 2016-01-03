#ifndef BRESENHAMLINE_H
#define BRESENHAMLINE_H

#define BH_CONTINUE_LINE 0
#define BH_STOP_LINE 1

void bresenham_line(void *data, int x0, int y0, int x1,
                    int y1, int (*setPixel)(void *, int, int));

#endif
