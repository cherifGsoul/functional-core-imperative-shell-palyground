module ServedCity = Core_ServedCity
module Address = Core_Address
module Route = Core_Route
module Itinerary = Core_Itinerary
module PricedRideRequest = Core_PricedRideRequest

@genType
module RequestAddress: {
  @genType.opaque
  type t

  @genType
  let make: (string, string) => t
}

@genType
module DB: {
  @genType.opaque
  type t

  @genType
  let add: (~city: ServedCity.t) => promise<unit>

  @genType
  let getCities: () => promise<t>
}

module Itineraries: {
  let forRoute: (Route.t) => promise<Itinerary.t>
}

@genType.opaque
type t 

@genType
let make: (RequestAddress.t, RequestAddress.t) => t

@genType
let handle: (t) => promise<unit>