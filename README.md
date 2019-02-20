# FactorioManifold
Manifold pumps mod for factorio, adds a pump with extra connections.

## Why?
Bob's mods adds insane modules and beacons.

This is all good and fine with assembling machines: if the throughput is limited by inserters, you just add more inserters. With fluids, the situation is more complicated.

This can be alleviated to some extent using Lovely Santa's Compressed Fluids mod (https://github.com/LovelySanta/FactorioMod-OtherSmallMods/tree/master/CompressedFluids), but with lots of beacons the compressors can still become overwhelmed. 

Although I'm sure there are other uses that I haven't thought of, this mod is designed to be used in conjunction with Compressed Fluids, so that multiple compressors/decompressors can be added to a single fluid output.

## What
This mod adds two pump entities, the Intake Manifold and the Outlet Manifold. Each has 6 fluid connections in total: the two standard pump connections, plus 4 more. On the Intake Manifold, the additional connections are inputs, while on the Outlet Manifold, they are outputs.

The mod works either with Bob's logistics mod, or in vanilla. If Bob's logistics mod is active, it uses Bob's Pump Mk4 as an ingredient; otherwise, it uses the base game pump.

## Example: Angel's Hydrogen & Saline Water Production
Some precursors for rocket fuel, produced using highly beaconed buildings with Manifold Pumps and Compressors:

![Detailed info on](https://raw.githubusercontent.com/wakjah/FactorioManifold/master/images/examples/hydrogen-production_detailed-info-on.png)
![Detailed info off](https://raw.githubusercontent.com/wakjah/FactorioManifold/master/images/examples/hydrogen-production_detailed-info-off.png)
![Production screen view](https://raw.githubusercontent.com/wakjah/FactorioManifold/master/images/examples/hydrogen-production_production-screen.png)
