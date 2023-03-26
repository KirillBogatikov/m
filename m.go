package m

import (
  "github.com/KirillBogatikov/m/a"
  "github.com/KirillBogatikov/m/b"
  "github.com/KirillBogatikov/m/c"
)

func CallAll() {
  for _, fn := range []func() { a.CallA, b.CallB, c.CallC } {
    fn()
  }
}
