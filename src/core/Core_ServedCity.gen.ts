/* TypeScript file generated from Core_ServedCity.resi by genType. */

/* eslint-disable */
/* tslint:disable */

import * as Core_ServedCityJS from './Core_ServedCity.res.js';

export abstract class t { protected opaque!: any }; /* simulate opaque types */

export const fromString: (_1:string) => 
    { TAG: "Ok"; _0: t }
  | { TAG: "Error"; _0: string } = Core_ServedCityJS.fromString as any;

export const toString: (city:t) => string = Core_ServedCityJS.toString as any;

export const equals: (_1:t, _2:t) => boolean = Core_ServedCityJS.equals as any;
