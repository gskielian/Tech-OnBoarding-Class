## PySpice Installation And Examples

Created a convenience script for getting setup with everything:

Just run the following to install everything including PySpice:

```bash
./install_deps.sh
```

## PySpice

Note this does require Python3


### Directory Structure

libraries will need to be kept in one directory down from top level for PySpice.
Example structure below, note 2N2222A.lib not included just shown as an example 
of where to place libraries.

```
.
├── examples
│   └── PySpice_examples
│       ├── libraries
│       │   └── transistor
│       │       └── 2N2222A.lib
│       └── voltage_divider
│           └── voltage_divider.py
├── installation_scripts
│   └── install_pyspice.sh
```

### Running an Example

To run an example use python3:

```bash
python3 examples/PySpice_examples/voltage_divider/voltage_divider.py
```


