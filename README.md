## Multi Region deployments with terraform

Its's important to follow the documention always to know the lastest changes but more importantly, always specify the terraform required provider block and use the current configuration which you can find in the terrafor documentation. If you see a block of code and try to use, you must specify the required provider for that configuration as each version constraint has different code configurations. Teraform required provider block is the first thing to always add before the main configuration.
