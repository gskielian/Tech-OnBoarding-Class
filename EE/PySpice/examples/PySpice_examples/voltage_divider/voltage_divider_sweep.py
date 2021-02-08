from PySpice.Spice.Netlist import Circuit
from PySpice.Unit import *

# define a circuit
circuit = Circuit('Voltage Divider')

# setup voltage sources and resistors
# (note to self, in vim use cntl+k W* to write Ω symbol)
circuit.V('dc', 'input', circuit.gnd, 1@u_V)
circuit.R('r_top', 'input', 'output', 1@u_kΩ)
circuit.R('r_bottom', 'output', circuit.gnd, 1@u_kΩ)

# set simulator settings
simulator = circuit.simulator(temperature=25, nominal_temperature=25)
analysis = simulator.dc(Vdc = slice(3,12,1))

# print analysis of voltages of each node
for node in (analysis['output']):
    print("voltage at output" + " " + str(float(node)))
