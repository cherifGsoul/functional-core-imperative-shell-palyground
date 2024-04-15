/* TypeScript file generated from Core_Distance.resi by genType. */

/* eslint-disable */
/* tslint:disable */

import * as Core_DistanceJS from './Core_Distance.res.js';

export abstract class t { protected opaque!: any }; /* simulate opaque types */

export const fromNumber: (distance:number) => 
    { TAG: "Ok"; _0: t }
  | { TAG: "Error"; _0: string } = Core_DistanceJS.fromNumber as any;

export const toNumber: (_1:t) => number = Core_DistanceJS.toNumber as any;
