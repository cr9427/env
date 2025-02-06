export GPG_TTY=$(tty)
gpg-connect-agent /bye &> /dev/null
op item get wxho7pyc4vjxcf2vtq6uf6mvdi --fields GPG-Passphrase --reveal | "$(gpgconf --list-dirs libexecdir)"/gpg-preset-passphrase --preset AF4D9B2D2069C69444A7C43CD67C6AD8F47FB63E
