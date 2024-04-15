@genType.opaque
type t

@genType
let fromNumber: (~distance: int) => result<t, string>

@genType
let toNumber: (t) => int