type t = string

let fromString = (city): Belt.Result.t<t, string> => {
  switch city->Js.String.length > 0  {
    | true => Belt.Result.Ok(city)
    | false => Belt.Result.Error("Invalid served city")
  }
}

let toString = (~city: t) => city

let equals = (city, other) => city === other