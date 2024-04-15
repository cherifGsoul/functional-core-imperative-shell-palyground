module ServedCity = Core_ServedCity
module Itinerary = Core_Itinerary
module Fare = Core_Fare
module Distance = Core_Distance

type t = {
  itinerary: Itinerary.t,
  fare: Fare.t
}

let forItinirary = (
  ~itinerary: Itinerary.t,
  ~baseFare: Fare.t,
  ~farePerKilometer: Fare.t
) => {

  let distance = itinerary->Itinerary.distance->Distance.toNumber
  
  let fareResult = switch Fare.multiply(~fare=farePerKilometer, ~times=distance) {
    | Ok(distanceFare) => distanceFare->Fare.add(baseFare)
    | Error(err) => Error(err)
  }

  switch fareResult {
    | Ok(fare) => Ok({itinerary: itinerary, fare: fare})
    | Error(err) => Error(err)
  }


}