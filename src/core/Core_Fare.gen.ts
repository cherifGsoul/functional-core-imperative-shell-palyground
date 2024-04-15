/* TypeScript file generated from Core_Fare.resi by genType. */

/* eslint-disable */
/* tslint:disable */

import * as Core_FareJS from './Core_Fare.res.js';

export abstract class t { protected opaque!: any }; /* simulate opaque types */

export const fromNumber: (fare:number) => 
    { TAG: "Ok"; _0: t }
  | { TAG: "Error"; _0: string } = Core_FareJS.fromNumber as any;

export const multiply: (fare:t, times:number) => 
    { TAG: "Ok"; _0: t }
  | { TAG: "Error"; _0: string } = Core_FareJS.multiply as any;

export const add: (_1:t, _2:t) => 
    { TAG: "Ok"; _0: t }
  | { TAG: "Error"; _0: string } = Core_FareJS.add as any;

export const toNumber: (fare:t) => number = Core_FareJS.toNumber as any;
