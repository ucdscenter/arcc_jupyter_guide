# Arcc Jupyter Notebook Guide

This guide is a quick how to for getting access to the arcc cluster, useful slurm commands, getting set up with jupyter, and importing fastai (and maybe fastai2).

## Getting account info and logging in

Assuming you have UC credentials, to get access to the supercompute cluster fill out the form at the bottom of [this page](https://research.uc.edu/arc)

You'll need to be on UC's network to access the cluster, so if you are off campus you will need to [download](https://www.uc.edu/about/ucit/services/connectivity-fac-staff/vpn.html) anyconnect.

Once you have your account info and are on the network you can access the cluster with 

```bash
ssh username@arcc.uc.edu
```

## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install foobar.

```bash
pip install foobar
```

## Usage

```python
import foobar

foobar.pluralize('word') # returns 'words'
foobar.pluralize('goose') # returns 'geese'
foobar.singularize('phenomena') # returns 'phenomenon'
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)