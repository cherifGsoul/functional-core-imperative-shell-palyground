// Generated by ReScript, PLEASE EDIT WITH CARE


function fromString(street) {
  if (street.length > 0) {
    return {
            TAG: "Ok",
            _0: street
          };
  } else {
    return {
            TAG: "Error",
            _0: "Invalid served city"
          };
  }
}

function toString(street) {
  return street;
}

function equals(street, other) {
  return street === other;
}

export {
  fromString ,
  toString ,
  equals ,
}
/* No side effect */
