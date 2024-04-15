module Address = Core_Address

@genType.opaque
type t 

@genType
let between: (~origin: Address.t, ~destination: Address.t) => t

let origin: (t) => Address.t
let destination: (t) => Address.t