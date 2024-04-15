/* TypeScript file generated from Core_Street.resi by genType. */

/* eslint-disable */
/* tslint:disable */

import * as Core_StreetJS from './Core_Street.res.js';

export abstract class t { protected opaque!: any }; /* simulate opaque types */

export const fromString: (_1:string) => 
    { TAG: "Ok"; _0: t }
  | { TAG: "Error"; _0: string } = Core_StreetJS.fromString as any;

export const toString: (street:t) => string = Core_StreetJS.toString as any;

export const equals: (_1:t, _2:t) => boolean = Core_StreetJS.equals as any;
