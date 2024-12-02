import gleam/io
import gleam/regexp

pub fn main() {
  let assert Ok(re) = regexp.from_string("Gl\\w+")

  "!Gleam"
  |> regexp.scan(re, _)
  |> io.debug

  "हGleam"
  |> regexp.scan(re, _)
  |> io.debug

  "𐍈Gleam"
  |> regexp.scan(re, _)
  |> io.debug
}
