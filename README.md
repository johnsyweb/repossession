# Reposession

A tool to audit your GitHub repositories

## Usage

```sh
% GITHUB_ORG=johnsyweb GITHUB_TOKEN=${GITHUB_TOKEN} ./repossession 
```

## Sample output
```csv
Private,Full name,Has Wiki?,Open issues,Watchers,Language,Created at,Updated at,By
false,johnsyweb/bin,true,0,1,Python,2009-04-29 00:19:26 UTC,2015-05-12 06:36:21 UTC,Pete Johns
false,johnsyweb/bundler,false,0,0,Ruby,2015-11-13 03:02:31 UTC,2015-11-13 03:02:36 UTC,Homu
false,johnsyweb/color-ssh,true,1,5,Shell,2013-05-29 23:13:02 UTC,2015-01-30 10:37:28 UTC,Pete Johns
false,johnsyweb/dotfiles,true,0,4,VimL,2009-04-29 00:34:42 UTC,2015-07-17 08:06:54 UTC,Pete Johns
false,johnsyweb/ffi,true,0,0,C,2015-12-23 02:24:46 UTC,2015-12-23 02:24:49 UTC,Thomas E Enebo
false,johnsyweb/git-smart,true,0,0,Ruby,2014-04-26 03:43:42 UTC,2014-04-26 03:43:43 UTC,Glen Maddern
false,johnsyweb/homebrew,true,0,0,Ruby,2013-06-03 11:55:35 UTC,2014-01-13 21:22:48 UTC,Jack Nagel
false,johnsyweb/homebrew-cask,false,0,0,Ruby,2015-02-16 04:33:49 UTC,2015-02-16 04:33:57 UTC,Amory Meltzer
false,johnsyweb/johnsyweb.github.io,true,0,0,CSS,2015-02-15 00:11:40 UTC,2015-04-22 11:06:42 UTC,Pete Johns
false,johnsyweb/json,true,0,0,Java,2015-12-23 10:56:38 UTC,2015-12-23 10:56:39 UTC,Florian Frank
false,johnsyweb/oh-my-zsh,true,0,0,Shell,2014-12-04 02:54:47 UTC,2014-12-04 02:54:49 UTC,Robby Russell
false,johnsyweb/our-boxen,false,0,0,,2014-08-10 14:01:08 UTC,2014-08-10 12:35:43 UTC,David Goodlad
false,johnsyweb/peg_jump,true,0,0,Python,2013-12-28 00:27:55 UTC,2014-03-17 03:22:38 UTC,Pete Johns
false,johnsyweb/puppet-git,false,0,0,Ruby,2015-05-26 00:26:31 UTC,2015-05-26 00:26:32 UTC,Rafael Mendonça França
false,johnsyweb/puppet-mtr,false,0,0,Ruby,2014-05-10 04:48:49 UTC,2014-05-10 04:48:51 UTC,Adam Ochonicki
false,johnsyweb/puppet-ruby,false,0,0,Ruby,2014-05-07 11:44:28 UTC,2014-05-08 10:40:23 UTC,Rafael Mendonça França
false,johnsyweb/puppetlabs-inifile,true,0,0,Ruby,2014-06-26 10:06:50 UTC,2014-06-24 14:28:54 UTC,Morgan Haskel
false,johnsyweb/python_sparse_list,true,0,2,JavaScript,2013-07-13 07:40:42 UTC,2015-02-12 01:33:08 UTC,Pete Johns
false,johnsyweb/repossession,true,0,0,,2016-02-03 03:19:08 UTC,2016-02-03 03:19:08 UTC,Nobody
false,johnsyweb/ruby_koans,true,0,0,Ruby,2013-01-29 23:19:05 UTC,2014-02-04 03:12:19 UTC,Pete Johns
false,johnsyweb/ruby_maze_solver,true,0,0,Ruby,2013-02-11 05:53:52 UTC,2014-12-01 10:53:07 UTC,Pete Johns
false,johnsyweb/run_tags,true,0,0,Ruby,2013-05-22 01:12:37 UTC,2013-11-14 09:11:43 UTC,Pete Johns
false,johnsyweb/snipmate.vim,false,0,0,VimL,2013-05-25 04:34:40 UTC,2014-03-21 00:44:16 UTC,Michael Sanders
false,johnsyweb/solarized,false,0,0,VimL,2014-06-11 05:41:58 UTC,2014-06-11 05:42:16 UTC,Pete Johns
false,johnsyweb/string_utils,true,0,1,C++,2011-03-14 06:35:48 UTC,2015-06-08 10:26:40 UTC,Pete Johns
false,johnsyweb/tddproblems,true,0,0,Python,2009-04-18 12:20:06 UTC,2015-12-26 03:04:46 UTC,Pete Johns
false,johnsyweb/tmux-powerline,true,0,0,Shell,2012-12-01 03:08:38 UTC,2013-12-27 23:05:31 UTC,Pete Johns
false,johnsyweb/tmuxinator,false,0,0,Ruby,2015-01-26 22:24:49 UTC,2015-01-26 22:24:49 UTC,Christopher Chow
false,johnsyweb/VCard-syntax,false,0,0,VimL,2013-05-19 23:13:46 UTC,2013-10-19 04:52:25 UTC,Able Scraper
false,johnsyweb/vim-colors-solarized,false,0,1,VimL,2012-10-25 13:34:52 UTC,2013-01-12 20:12:06 UTC,Pete Johns
```

## Thanks

If you find this stuff useful, please follow this repository on
[GitHub](https://github.com/johnsyweb/repossession). If you have something to say,
you can contact [johnsyweb](http://johnsy.com/about/) on
[Twitter](http://twitter.com/johnsyweb/) and
[GitHub](https://github.com/johnsyweb/).
