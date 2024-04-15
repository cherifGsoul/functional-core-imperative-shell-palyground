@genType.opaque
type t

@genType
let fromString: (string)  => Belt.Result.t<t, string>

@genType
let toString: (~city: t) => string

@genType
let equals: (t, t) => bool