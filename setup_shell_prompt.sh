#!/usr/bin/env bash

# Setup shell prompt
SHELL_PROMPT_SCRIPT="${HOME}/.shell_prompt.sh"
mv "${SHELL_PROMPT_SCRIPT}" "${SHELL_PROMPT_SCRIPT}.old"
vim "+PromptlineSnapshot ${SHELL_PROMPT_SCRIPT} airline" +qall
