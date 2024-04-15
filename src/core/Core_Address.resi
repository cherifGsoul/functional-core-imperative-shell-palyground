module Street = Core_Street
module ServedCity = Core_ServedCity

@genType.opaque
type t

@genType
let make: (Street.t, ServedCity.t) => t

let city: (t) => ServedCity.t