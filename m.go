package m

import (
  "github.com/KirillBogatikov/m/c"
)

func CallAll() {
  for _, fn := range []func() { c.CallC } {
    fn()
  }
}
