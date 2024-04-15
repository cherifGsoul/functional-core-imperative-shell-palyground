module Route = Core_Route
module Distance = Core_Distance

type t = {
  route: Route.t,
  distance: Distance.t
}

let make = (~route: Route.t, ~distance: Distance.t) => ({
  route,
  distance
})

let route = (itinerary) => itinerary.route

let distance = (itinerary) => itinerary.distance