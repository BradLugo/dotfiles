UNAME_S := $(shell uname -s)
black := 0
green := 2
cyan  := 6
white := 7
command-width := 1

define print-bold-header
	tput bold
	tput setaf ${black}
	echo "------------------------------------------------------------"
	tput smso
	tput setaf ${cyan}
	echo $1
	tput rmso
	tput setaf ${black}
	echo "------------------------------------------------------------"
	tput sgr0
endef

define print-bold-text
	tput bold
	tput setaf $1
	echo $2
	tput sgr0
	echo
endef

define print-help-text
	tput bold
	tput setaf ${white}
	printf "%2s%-${command-width}s" " " $1
	tput sgr0
	printf "%s" $2
	tput sgr0
	echo
endef

all: zsh profile vim configs

mac: zsh profile vim

zsh:
	@$(call print-bold-header, "Stowing zsh...")
	stow -R zsh

profile:
	@$(call print-bold-header, "Stowing profile...")
	stow -R profile

git:
	@$(call print-bold-header, "Stowing version control stuff...")
	stow -R vcs
	@echo
	@$(call print-bold-text, ${white}, "Setting up VCS user info...")
	@echo
	@printf "Enter your username: "; \
		read USERNAME; \
		printf "Enter your email: "; \
		read EMAIL; \
		sed -i "s/USERNAME/$$USERNAME/;s/EMAIL/$$EMAIL/" vcs/.gitconfig vcs/.hgrc;
	@echo

vim:
	@$(call print-bold-header, "Stowing vim...")
	stow -R vim

neovim:
	@$(call print-bold-header, "Stowing vim...")
	stow -R vim

configs:
	@$(call print-bold-header, "Stowing configs...")
	stow -R configs

clean:
	@$(call print-bold-header, "Cleaning...")
	stow -D zsh vim configs

.PHONY: all zsh vim test configs clean
