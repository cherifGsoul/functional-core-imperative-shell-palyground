/* TypeScript file generated from Shell_RideRequest.resi by genType. */

/* eslint-disable */
/* tslint:disable */

import * as Shell_RideRequestJS from './Shell_RideRequest.res.js';

export abstract class RequestAddress_t { protected opaque!: any }; /* simulate opaque types */

export abstract class DB_t { protected opaque!: any }; /* simulate opaque types */

export abstract class t { protected opaque!: any }; /* simulate opaque types */

export const RequestAddress_make: (_1:string, _2:string) => RequestAddress_t = Shell_RideRequestJS.RequestAddress.make as any;

export const DB_add: (city:ServedCity_t) => Promise<void> = Shell_RideRequestJS.DB.add as any;

export const DB_getCities: () => Promise<DB_t> = Shell_RideRequestJS.DB.getCities as any;

export const make: (_1:RequestAddress_t, _2:RequestAddress_t) => t = Shell_RideRequestJS.make as any;

export const handle: (_1:t) => Promise<void> = Shell_RideRequestJS.handle as any;

export const DB: { add: (city:ServedCity_t) => Promise<void>; getCities: () => Promise<DB_t> } = Shell_RideRequestJS.DB as any;

export const RequestAddress: { make: (_1:string, _2:string) => RequestAddress_t } = Shell_RideRequestJS.RequestAddress as any;
