module RideRequest = Shell_RideRequest

let origin =  RideRequest.RequestAddress.make("0000 rue de contrecoeur", "Montreal")

let destination =  RideRequest.RequestAddress.make("Montréal-Pierre Elliott Trudeau International Airport", "Montreal")

let request = RideRequest.make(origin, destination)

await request->RideRequest.handle