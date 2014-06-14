# RPC (RPD Client)

RPC is a command line client to [RPD](http://rpd.lynnard.tk) which provides easy access to all essential commands of RPD.

## Usage

       Usage: rpc [-a address] [-p port] [cmd] [argument]
              rpc help          - show this help infomation\n"
              rpc info [format] - show current RPD information\n"
                                  if the format argument is given, the following specifier will be replaced accordingly\n"
                                  %%a -- artist \n"
                                  %%t -- song title \n"
                                  %%b -- album \n"
                                  %%y -- release year \n"
                                  %%i -- cover image \n"
                                  %%d -- douban url \n"
                                  %%c -- channel \n"
                                  %%p -- currtime \n"
                                  %%l -- totaltime \n"
                                  %%u -- status \n"
                                  %%k -- kbps \n"
                                  %%r -- rate (0 or 1) \n"
                                  %%%% -- a literal %% \n"
              rpc play          - start playback\n"
              rpc pause         - pause playback\n"
              rpc toggle        - toggle between play and pause\n"
              rpc stop          - stop playback\n"
              rpc skip/next     - skip current song\n"
              rpc ban           - don't ever play current song again\n"
              rpc rate          - mark current song as \"liked\"\n"
              rpc unrate        - unmark current song\n"
              rpc channels      - list all FM channels\n"
              rpc webpage       - open the douban page using the browser defined in $BROWSER\n"
              rpc setch <id>    - set channel through channel's id\n"
              rpc kbps <kbps>   - set music quality to the specified kbps\n"
              rpc launch        - tell RPD to restart\n"
              rpc end           - tell RPD to quit\n"


* `launch` command will forcefully kill all rpd instances and restart a new one 
* `info` supports an optional format argument that can contain specifiers related to the current player information. An example usage:

        $ fmc info 'Status: %u; Artist: %a; Title: %t'
        Status: pause; Artist: 菅野よう子; Title: アイモ O.C.

    To support backslash sequences, add a dollar sign in front of the argument

        $ fmc info $'Status: %u\nArtist: %a\nTitle: %t'
        Status: pause
        Artist: 菅野よう子
        Title: アイモ O.C.
