// dotfile scripts
extern crate colored;
// use std::io;
use std::fs;
use std::env;
// use std::process;
use std::path::{PathBuf};
use std::result::{Result};
// use std::error::{Error};
// use std::io::{self, Result};
use colored::*;
// use std::io::prelude::*;

struct Dotfile {
    file_path: PathBuf,
    home_path: PathBuf
}

fn main() {
    println!("{}", "Linking dotfiles...".green().bold());

    let cwd_path = match env::current_dir() {
      Result::Ok(path) => path,
      Result::Err(error) => {
          panic!("{}\n{:?}", "Failed to read current directory!".red(), error);
      }
    };

    let home_path = match env::home_dir() {
        Some(path) => path,
        None => {
            panic!("{}", "Failed to read home directory!".red());
        }
    };

    println!("{} {:?}", "~/:".cyan(), home_path);
    println!("{} {:?}", "cwd:".cyan(), cwd_path);

    let files = get_dotfiles(&home_path);

    for file in files.iter() {
        if file.home_path.exists() {
            println!("{:?}: {}", file.home_path, is_symlink(&file.home_path));
        }
    }

    println!("{}, {:?}", files.len(), files[0].file_path);
}

fn get_dotfiles(base: &PathBuf) -> Vec<Dotfile> {
    // temporary array of files
    // will be loaded from JSON config later?
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
    let mut files: Vec<Dotfile> = Vec::new();
    for path in paths.iter() {
        files.push(Dotfile {
            file_path: PathBuf::from(path),
            home_path: base.join(path),
        });
    }
    println!("{:?}", base);
    files
}

fn is_symlink(path: &PathBuf) -> bool {
    let meta = fs::symlink_metadata(path);
    meta.is_err() || meta.unwrap().file_type().is_symlink()
    // if meta.is_err() {
    //     println!("{} {:?} {}", "Failed to read metadata:".red(), path, meta.unwrap_err());
    //     return false;
    // }
    // let meta = meta.unwrap();
    // meta.file_type().is_symlink()
}
