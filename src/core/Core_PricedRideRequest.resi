module ServedCity = Core_ServedCity
module Itinerary = Core_Itinerary
module Fare = Core_Fare

type t

let forItinirary: (
  ~itinerary: Itinerary.t,
  ~baseFare: Fare.t,
  ~farePerKilometer: Fare.t
) => Belt.Result.t<t, string>