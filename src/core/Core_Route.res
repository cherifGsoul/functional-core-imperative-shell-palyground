module Address = Core_Address

type t = {
  origin: Address.t,
  destination: Address.t
}

let between = (~origin: Address.t, ~destination: Address.t) => ({
  origin,
  destination
})

let origin = (route) => route.origin
let destination = (route) => route.destination