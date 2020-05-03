export PATH="$PATH:$HOME/go/bin"
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

export PATH="$HOME/.cargo/bin:$PATH"

export SSH_AUTH_SOCK=~/.ssh/ssh-agent.$HOSTNAME.sock
ssh-add -l 2>/dev/null >/dev/null
if [ $? -ge 2 ]; then
    ssh-agent -a "$SSH_AUTH_SOCK" >/dev/null
fi
