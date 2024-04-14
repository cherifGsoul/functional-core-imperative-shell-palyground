type t = int

let fromNumber = (~fare: int) => {
  switch (fare >= 0){
    | true  => Ok(fare)
    | false  => Error("Invalid fare")
  }
}

