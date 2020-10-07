//---
// http://media.pragprog.com/titles/pb7con/code/DataParallelism/Zoom/src/main/resources/zoom.cl
// Excerpted from "Seven Concurrency Models in Seven Weeks",
// published by The Pragmatic Bookshelf.
// Copyrights apply to this code. It may not be used to create training material,
// courses, books, articles, and the like. Contact us if you are in doubt.
// We make no guarantees that this code is fit for any purpose.
// Visit http://www.pragmaticprogrammer.com/titles/pb7con for more book information.
//---

__kernel void zoom(__global float* vertices) {
  unsigned int id = get_global_id(0);
  vertices[id] *= 1.001; // 逐渐放大三角形
}