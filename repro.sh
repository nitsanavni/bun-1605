export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

bun --version || (curl -fsSL https://bun.sh/install | bash)

# bun test process never terminates on its own so we timeout - can't reproduce issue 1605 like that
timeout 5 bun test

