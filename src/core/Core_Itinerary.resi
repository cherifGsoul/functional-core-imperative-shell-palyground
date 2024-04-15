module Route = Core_Route
module Distance = Core_Distance

type t

let make: (~route: Route.t, ~distance: Distance.t) => t

let route: (t) => Route.t

let distance: (t) => Distance.t