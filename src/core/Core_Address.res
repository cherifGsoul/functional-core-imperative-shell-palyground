module Street = Core_Street
module ServedCity = Core_ServedCity

type t = {
  street: Street.t,
  city: ServedCity.t
}

let make = (~street: Street.t, ~city: ServedCity.t) => ({
  street,
  city
})