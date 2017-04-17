#!/usr/bin/env julia

using QuantEcon
using Gadfly

ar2 = QuantEcon.ARMA([1.5, -.75], [], 1)
ar2list = QuantEcon.simulation(ar2, ts_length=144)

p = Gadfly.plot(x=1:144, y=ar2list)
Gadfly.draw(SVG("ex2.10.svg", 800px, 600px), p)
