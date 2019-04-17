add_scripts_to_path() {
    local tools_directory=$1

    export PATH="$PATH:$tools_directory/scripts"
}

add_home_directory_bin_to_path() {
    export PATH="$PATH:$HOME/bin"
}

setup_emacs_as_editor() {
    export EDITOR=emacs
    export GIT_EDITOR=emacs
}

setup_locale() {
    export LC_ALL=en_US.UTF-8
}

initialize_variables() {
    local tools_directory=$1

    add_scripts_to_path $tools_directory
    add_home_directory_bin_to_path
    setup_emacs_as_editor
    setup_locale
}

