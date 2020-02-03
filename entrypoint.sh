#!/bin/bash -l

# active bash options:
#   - bash act as if it had been invoked as a login shell".
#     Login shells read certain initialization files from your home directory,
#     such as .bash_profile. (-l)
#   - stops the execution of the shell script whenever there are any errors from a command or pipeline (-e)
#   - option to treat unset variables as an error and exit immediately (-u)
#   - print each command before executing it (-x)
#   - sets the exit code of a pipeline to that of the rightmost command
#     to exit with a non-zero status, or to zero if all commands of the
#     pipeline exit successfully (-o pipefail)
set -euo pipefail

main() {

  local path="$1";
  local propertyKey="$2";
  local propertyValue="$3";

  echo "path: $path"
  echo "propertyKey: $propertyKey"
  echo "propertyValue: $propertyValue"

  if ! grep -r "^[#]*\s*${propertyKey}=.*" "$path" > /dev/null; then
    echo "APPENDING because '${propertyKey}' not found"
    cat >> "$path" <<EOF

${propertyKey}=${propertyValue}
EOF
  else
    echo "SETTING because '${propertyKey}' found already"
    sed -ir "s/^[#]*\s*${propertyKey}=.*/$propertyKey=$propertyValue/" "$path"
  fi
}

main "$1" "$2" "$3"
