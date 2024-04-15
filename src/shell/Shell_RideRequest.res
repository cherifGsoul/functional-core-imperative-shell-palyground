module ServedCity = Core_ServedCity
module Address = Core_Address
module Street = Core_Street
module Route = Core_Route
module Itinerary = Core_Itinerary
module Distance = Core_Distance
module Fare = Core_Fare
module PricedRideRequest = Core_PricedRideRequest

module RequestAddress = {
  type t = {street: string, city: string}

  let make = (street, city) => ({
    street, 
    city
  })

  let toAddress = (requestAddress) => {
    let street = switch requestAddress.street->Street.fromString {
      | Ok(aStreet) => aStreet
      | Error(err) => Js.Exn.raiseError(err)
    }

    let city = switch requestAddress.city->ServedCity.fromString {
      | Ok(aCity) => aCity
      | Error(err) => Js.Exn.raiseError(err)
    }

    Address.make(street, city)
  }
}

module DB = {
  type t =  array<ServedCity.t>

  type pricedRidesT = array<PricedRideRequest.t>

  let cities: t = []
  let pricedRides: pricedRidesT = []

  let add = async (~city: ServedCity.t) => cities->Array.push(city)
  let getCities = async () => cities

  let addPricedRequest = async (~request: PricedRideRequest.t) => pricedRides->Array.push(request)

}

module Itineraries = {
  let forRoute = async (route) => {
    let distance = switch Distance.fromNumber(~distance=20) {
      | Ok(aDistance) => aDistance
      | Error(err) => Js.Exn.raiseError(err)
    }
    Itinerary.make(~route=route, ~distance=distance)
  }
}

type t = {
  origin: RequestAddress.t,
  destination: RequestAddress.t
}

let make = (origin, destination) => ({
  origin,
  destination
})

let toRoute = (request, servedCities) => {
  let origin = request.origin->RequestAddress.toAddress
  let destination = request.destination->RequestAddress.toAddress

  [origin->Address.city, destination->Address.city]->Array.forEach(city => {
     switch servedCities->Array.find(servCity => servCity->ServedCity.equals(city)) {
      | None => Js.Exn.raiseError("Origin and destination cities must be served cities")
      | Some(_) => ()
    }
  })

  Route.between(~origin=origin, ~destination=destination)
}

let handle = async (request: t) =>  {
  // IO
  let servedCities = await DB.getCities()

  // Validation 
  let route = request->toRoute(servedCities)

  // IO
  let itinerary = await route->Itineraries.forRoute

  // Pure
  let farePerKilometer = switch Fare.fromNumber(~fare=2) {
    | Ok(f) => f
    | Error(err) => Js.Exn.raiseError(err)
  }

  let baseFare = switch Fare.fromNumber(~fare=5) {
    | Ok(f) => f
    | Error(err) => Js.Exn.raiseError(err)
  }

  let pricedRide = switch PricedRideRequest.forItinirary(~itinerary=itinerary, ~baseFare=baseFare, ~farePerKilometer=farePerKilometer) {
    | Ok(pricedRide) => pricedRide
    | Error(err) => Js.Exn.raiseError(err)
  }

  // IO
  Console.log(pricedRide)
  await DB.addPricedRequest(~request = pricedRide)
  

}