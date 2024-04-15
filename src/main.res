module DB = Shell_RideRequest.DB
module ServedCity = Core_ServedCity

module RideRequest = Shell_RideRequest

let montreal = switch ServedCity.fromString("Montreal") {
  | Ok(city) => await DB.add(~city=city)
  | Error(_) => Js.Exn.raiseError("Error happpend")
}

let origin =  RideRequest.RequestAddress.make("0000 rue de contrecoeur", "Montreal")

let destination =  RideRequest.RequestAddress.make("Montréal-Pierre Elliott Trudeau International Airport", "Montreal")

let request = RideRequest.make(origin, destination)


await request->RideRequest.handle