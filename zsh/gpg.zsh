export GPG_TTY=$(tty)
gpg-connect-agent /bye &> /dev/null
op item get wxho7pyc4vjxcf2vtq6uf6mvdi --fields GPG-Passphrase --reveal | "$(gpgconf --list-dirs libexecdir)"/gpg-preset-passphrase --preset 640E6C28E4E389E1586D1ADB21ACB036C5BBBAAA

alias gpg-load-key='op item get wxho7pyc4vjxcf2vtq6uf6mvdi --fields GPG-Passphrase --reveal | "$(gpgconf --list-dirs libexecdir)"/gpg-preset-passphrase --preset 640E6C28E4E389E1586D1ADB21ACB036C5BBBAAA'
