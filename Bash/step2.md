
# fail fast

‘setbuiltins
It’s really important to catch errors as soon as they occur and to fail fast. Nothing can be worse than continuing with something like:
rm -rf ${directory_name}/*
Notice how the variable name directory_name is still undefined.
To handle such scenarios, it’s important to use set builtins like set -o errexit, set -o pipefail, or set -o nounset at the start of the script. This ensures your script exits as soon as it encounters any nonzero exit code, usage of undefined variables, failed piped commands, etc.

```shell
#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

function print_var() {
  echo "${var_value}"
}

print_var

$ ./sample.sh
./sample.sh: line 8: var_value: unbound variable
```

Note: Builtins like set -o errexit however will exit the script as soon as a ‘non-handled’ return code (othen than zero) comes up. Therefore, it is even better to introduce custom error handling like:

```shell
#!/bin/bash
error_exit() {
 line=$1
 shift 1
 echo “ERROR: non zero return code from line: $line — $@”
 exit 1
}
a=0
let a++ || error_exit “$LINENO” “let operation returned non 0 code”
echo “you will never see me”

# run it, now we have useful debugging output
$ bash foo.sh
ERROR: non zero return code from line: 9 — let operation returned non 0 code
```

This will force you to be conscious and aware about the behaviour of all commands in the script and handle the scenarios well in advance before getting caught off-guard
