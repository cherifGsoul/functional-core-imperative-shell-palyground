module Street = Core_Street
module ServedCity = Core_ServedCity

type t

let make: (~street: Core_Street.t, ~city: Core_ServedCity.t) => t