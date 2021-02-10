# Foreman Qpid Plugin

Foreman project plugin for Qpid allowing Katello hosts to interact with Qpid and Qpid Dispatch services for katello-agent actions.
While this plugin is part of the Foreman project it can only be used with Katello as Foreman is not katello-agent aware without the Katello plugin.

## Getting Started

Documentation can be found here for how to install a stand alone smart proxy https://theforeman.org/manuals/latest/index.html#4.3.1SmartProxyInstallation

### Prerequisites

* working Katello instance (note not Foreman - must be Katello)
* smart proxy or capsule with the Qpid plugin installed and enabled
* Qpid installation as part of the Katello install

### Installing

Assuming prerequisites are met, the Qpid plugin must be enabled in the foreman-proxy directory with the qpid.yaml,
the following parameters are required to be set

```yaml
---
# Qpid integration
:enabled: true
:qpid_url: amqp:ssl:localhost:5671
```

## Running the tests

Todo - some test examples


## Authors

* **The Foreman Project** - *Initial Draft* - https://theforeman.org/

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE.md](LICENSE.md) file for details
