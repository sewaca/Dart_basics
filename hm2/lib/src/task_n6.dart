import 'dart:math';

class Point {
  final double x;
  final double y;
  final double z;

  Point(this.x, this.y, this.z);

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  factory Point.one() {
    return Point(1, 1, 1);
  }

  factory Point.minusOne() {
    return Point(-1, -1, -1);
  }

  double distanceTo(Point a) {
    return sqrt(pow(x - a.x, 2) + pow(y - a.y, 2) + pow(z - a.z, 2));
  }
}

double squareOfTriangle(Point a, Point b, Point c) {
  return 0.5 * ((a.x - c.x) * (b.y - c.y) - (b.x - c.x) * (a.y - c.y));
}
