# handle_exit

Unexpected conditions could also arise from the external environment, such as receiving a signal from the kernel.
Handling such cases is extremely important in ensuring the scripts are robust enough to be run in production systems.
I frequently use exit handlers to react to such scenarios.

```shell
function handle_exit() {
  // Add cleanup code here
  // for eg. rm -f "/tmp/${lock_file}.lock"
  // exit with an appropriate status code
}

// trap <HANDLER_FXN> <LIST OF SIGNALS TO TRAP>
trap handle_exit 0 SIGHUP SIGINT SIGQUIT SIGABRT SIGTERM
```

trap is a shell builtin that helps you register a cleanup function, which is called in the event of some signals.
However extra care should be taken with handlers like SIGINT which will prevent from aborting the script.
Additionally in most cases, you should be good off catching just EXIT but the idea is that you can really customise the script behaviour based on every single signal.
