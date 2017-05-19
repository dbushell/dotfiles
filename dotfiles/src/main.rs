// dotfile scripts

struct Dotfile {
    // missing lifetime using $str?
    // http://hermanradtke.com/2015/05/03/string-vs-str-in-rust-functions.html
    // path: &str,
    path: String,
}

fn main() {

    // temporary array of files, will be loaded from JSON config later?
    let paths: [&str; 11] = [
        ".terminfo/78/xterm-256color",
        ".terminfo/78/xterm-256color.terminfo",
        ".oh-my-zsh/themes/dbushell.zsh-theme",
        ".bash_profile",
        ".hyper.js",
        ".zshrc",
        ".vim/ftplugin/markdown.vim",
        ".vim/colors/dbushell.vim",
        ".vimrc",
        ".gitconfig",
        ".gitignore",
    ];

    // create Vec of Dotfile from `paths`
    // files.push(Dotfile { path: String::from(".gitignore") });
    let mut files: Vec<Dotfile> = Vec::new();
    for path in paths.iter() { // for path in $paths
        files.push(Dotfile { path: path.to_string() });
    }

    println!("{}, {}", files.len(), files[0].path);
}


