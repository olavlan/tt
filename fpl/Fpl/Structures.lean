structure RectangularPrism where
  height : Float
  width : Float
  depth : Float


def RectangularPrism.volume (p : RectangularPrism) : Float :=
  Float.mul (Float.mul p.width p.depth) p.height


structure Point where
  x : Float
  y : Float

structure Segment where
  start : Point
  stop : Point

def Point.distance (p1 : Point) (p2 : Point) : Float :=
  Float.sqrt (Float.add
    (Float.pow (Float.add p2.x (Float.neg p1.x)) 2)
    (Float.pow (Float.add p2.y (Float.neg p1.y)) 2)
  )


def Segment.length (s : Segment) : Float :=
  Point.distance s.start s.stop

def s : Segment := {
  start := { x := 0, y := 0 },
  stop := { x := 1, y := 1 }
}

#eval Segment.length s
