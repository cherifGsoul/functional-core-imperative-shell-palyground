module ServedCity = Core_ServedCity
module Address = Core_Address
module Street = Core_Street

module RequestAddress = {
  type t = {street: string, city: string}

  let make = (street, city) => ({
    street, 
    city
  })
}

module DB = {
  type t =  Js.Array.t<ServedCity.t>

  let cities: t = []

  let add = async (~city: ServedCity.t) => cities->Array.push(city)
  let getCities = async () => cities

}

type t = {
  origin: RequestAddress.t,
  destination: RequestAddress.t
}

let make = (origin, destination) => ({
  origin,
  destination
})

let handle = async (request: t) =>  {
  let originCity = request.destination.city->ServedCity.fromString
  let destinationCity = request.destination.city->ServedCity.fromString

  let originCityStr = switch originCity {
    | Belt.Result.Ok(city) => city
    | Belt.Result.Error(error) => Js.Exn.raiseError(error)
  }

  Js.log(originCityStr)

  let originStreet = request.destination.street->Street.fromString
  let destinationStreet = request.destination.street->Street.fromString

  
}