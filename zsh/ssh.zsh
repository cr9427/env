# check if ~/.ssh exists
if [ ! -d "${HOME}/.ssh" ]; then
   mkdir -p "${HOME}/.ssh"
   chmod 700 "${HOME}/.ssh"
fi

# Delete a given line number in the known_hosts file.
knownrm() {
 re='^[0-9]+$'
 if ! [[ $1 =~ $re ]] ; then
   echo "error: line number missing" >&2;
 else
   sed -i '' "$1d" ~/.ssh/known_hosts
 fi
}
