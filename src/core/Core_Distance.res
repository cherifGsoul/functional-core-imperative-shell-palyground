type t = int

let fromNumber = (~distance: int) => {
  switch (distance >= 0){
    | true  => Ok(distance)
    | false  => Error("Invalid distance")
  }
}

