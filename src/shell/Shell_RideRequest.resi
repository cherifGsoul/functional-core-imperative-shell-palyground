module ServedCity = Core_ServedCity

module RequestAddress: {
  type t
  let make: (string, string) => t
}

module DB: {
  type t

  let add: (~city: ServedCity.t) => promise<unit>
  let getCities: () => promise<t>
}

type t 

let make: (RequestAddress.t, RequestAddress.t) => t

let handle: (t) => promise<unit>