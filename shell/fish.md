Crontab Notes
=============
<p> A few notes on creating/editing cronjobs in fish </p>

## access the crontab editor
`crontab -e`
<p>then, to exit the editor </p>
*press escape*
`:wq`


## to create a new cronjob (python)

<p>run the program 'send slack message' with python every 10 mins </p>
`*/10 *  * * *  python "/Users/benduffey/Desktop/send slack message"`

<p>run the program 'send slack message' with python @ 8:30 am every morning </p>
`8 30  * * *  python "/Users/benduffey/Desktop/send slack message"`


## view existing crontab jobs
`crontab -l`


notes
=============

<p>Install Homebrew w fish <p/>
`curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install | ruby`


<p> set path temporarily with fish<p/>:
`export PATH="/anaconda3/bin:$PATH"`

<p> set path permanently <p/>
`set PATH <mydir> $PATH`
`set -U fish_user_paths /anaconda3/bin $fish_user_paths`

<p> view processes <p/>
`ps aux`

<p> switch to root user <p/>
`sudo su`

<p> go to previous folder <p/>
`cd -`

tail run_google_reports.log view end of document

stat google_meta_run.log for write time


mac Setup
==================
<p> view processes <p/>
`ps aux`
<p> view processes <p/>
`ps aux`
<p> view processes <p/>
`ps aux`
<p> view processes <p/>
`ps aux`


fish set up
========================

<p>permanently change shell to fish<p/>
`chsh -s /usr/local/bin/fish`


generating an ssh key
============================
`ssh-keygen -t rsa -b 4096 -C "user@gmail.com"`
`eval (ssh-agent -c)`
`ssh-add ~/.ssh/id_rsa`
# use cat to view key:
`cat ~/.ssh/id_rsa.pub`
# now copy the key above and paste it into git hub!
`ssh -T git@github.com`
# >>Hi biduffey! You've successfully authenticated, but GitHub does not provide shell access.



fish color settings
======================
# from https://github.com/fish-shell/fish-shell/issues/948

set fish_color_command green


# set -g fish_color_autosuggestion    555 yellow
# set -g fish_color_command           005fd7 purple
# set -g fish_color_comment           red
# set -g fish_color_cwd               green
# set -g fish_color_cwd_root          red
# set -g fish_color_end               normal
# set -g fish_color_error             red --bold
# set -g fish_color_escape            cyan
# set -g fish_color_history_current   cyan
# set -g fish_color_match             cyan
# set -g fish_color_normal            normal
# set -g fish_color_operator          cyan
# set -g fish_color_param             00afff cyan
# set -g fish_color_quote             brown
# set -g fish_color_redirection       normal
# set -g fish_color_search_match      --background=purple
# set -g fish_color_status            normal
# set -g fish_color_user              normal
# set -g fish_color_valid_path        --underline



# set -g fish_color_quote normal
