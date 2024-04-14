// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Js_exn from "rescript/lib/es6/js_exn.js";
import * as Core_Street from "../core/Core_Street.res.js";
import * as Core_ServedCity from "../core/Core_ServedCity.res.js";

function make(street, city) {
  return {
          street: street,
          city: city
        };
}

var RequestAddress = {
  make: make
};

var cities = [];

function add(city) {
  cities.push(city);
}

function getCities() {
  return cities;
}

function make$1(origin, destination) {
  return {
          origin: origin,
          destination: destination
        };
}

function handle(request) {
  var originCity = Core_ServedCity.fromString(request.destination.city);
  Core_ServedCity.fromString(request.destination.city);
  var originCityStr;
  originCityStr = originCity.TAG === "Ok" ? originCity._0 : Js_exn.raiseError(originCity._0);
  console.log(originCityStr);
  Core_Street.fromString(request.destination.street);
  Core_Street.fromString(request.destination.street);
}

var origin = {
  street: "56 rue de contrecoeur",
  city: "Montreal"
};

var destination = {
  street: "Montréal-Pierre Elliott Trudeau International Airport",
  city: "Montreal"
};

var request = {
  origin: origin,
  destination: destination
};

handle(request);

var ServedCity;

var DB = {
  add: add,
  getCities: getCities
};

export {
  ServedCity ,
  RequestAddress ,
  DB ,
  make$1 as make,
  handle ,
}
/*  Not a pure module */