# LLM
My tips to use LLM models.
Also check [.bashrc](.bashrc)

### Opencode
https://opencode.ai/

Suggested models: `deepseek flash`, `big pickle`.
```bash
# Optional plugins:
# Superpowers
Fetch and follow instructions from https://raw.githubusercontent.com/obra/superpowers/refs/heads/main/.opencode/INSTALL.md
 
# Alternative of superpowers, but more features: https://github.com/code-yeongyu/oh-my-openagent
Install and configure oh-my-openagent by following the instructions here:
https://raw.githubusercontent.com/code-yeongyu/oh-my-openagent/refs/heads/dev/docs/guide/installation.md
 
# Caveman:
# winget install -e --id OpenJS.NodeJS
npx skills add JuliusBrussee/caveman
```


### Kimi code
https://www.kimi.com/code

Check my base config [.kimi-code/config.toml](.kimi-code/config.toml)
```bash
# Optional plugins:
# Superpowers
/plugins install https://github.com/obra/superpowers
 
# Agent skills
tmpdir=$(mktemp -d) && git clone --depth 1 https://github.com/addyosmani/agent-skills.git
   "$tmpdir/agent-skills" && mkdir -p ~/.config/agents/skills && cp -r "$tmpdir/agent-skills/skills/"*
   ~/.config/agents/skills/ && ls ~/.config/agents/skills/ && rm -rf "$tmpdir"

/reload
```