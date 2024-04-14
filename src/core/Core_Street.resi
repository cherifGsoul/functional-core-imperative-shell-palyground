type t

let fromString: (string)  => Belt.Result.t<t, string>

let toString: (~street: t) => string

let equals: (t, t) => bool