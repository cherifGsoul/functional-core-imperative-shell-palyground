type t = int

let fromNumber = (~fare: int): result<t, string> => {
  switch (fare >= 0){
    | true  => Ok(fare)
    | false  => Error("Invalid fare")
  }
}

let toNumber = (~fare: t) => fare

let multiply = (~fare: t, ~times: int) => fromNumber(~fare=(toNumber(~fare= fare) * times))

let add = (fare, other) => fromNumber(~fare=(toNumber(~fare= fare) + toNumber(~fare = other)))