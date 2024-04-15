module Street = Core_Street
module ServedCity = Core_ServedCity

type t = {
  street: Street.t,
  city: ServedCity.t
}

let make = (street, city) => ({
  street,
  city
})


let city = (address) => address.city