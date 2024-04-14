type t = string

let fromString =  (street): Belt.Result.t<t, string> => {
  switch street->Js.String.length > 0  {
    | true => Ok(street)
    | false => Error("Invalid served city")
  }
}

let toString = (~street: t) => street

let equals = (street, other) => street === other