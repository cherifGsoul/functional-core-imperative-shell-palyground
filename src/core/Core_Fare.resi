@genType.opaque
type t

@genType
let fromNumber: (~fare: int) => result<t, string>

@genType
let multiply : (~fare: t, ~times: int) => result<t, string>

@genType
let add : (t, t) => result<t, string>

@genType
let toNumber: (~fare: t) => int

