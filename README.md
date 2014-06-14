# RPC (RPD Client)

RPC is a command line client to [RPD](http://rpd.lynnard.tk) which provides easy access to all essential commands of RPD.

## Usage

       Usage: rpc [-a address] [-p port] [cmd] [argument]
              rpc help          - show this help infomation
              rpc info [format] - show current RPD information
                                  if the format argument is given, the following specifier will be replaced accordingly
                                  %a -- artist 
                                  %t -- song title 
                                  %b -- album 
                                  %y -- release year 
                                  %i -- cover image 
                                  %d -- douban url 
                                  %c -- channel 
                                  %p -- currtime 
                                  %l -- totaltime 
                                  %u -- status 
                                  %k -- kbps 
                                  %r -- rate (0 or 1) 
                                  %% -- a literal %
              rpc play          - start playback
              rpc pause         - pause playback
              rpc toggle        - toggle between play and pause
              rpc stop          - stop playback
              rpc skip/next     - skip current song
              rpc ban           - don't ever play current song again
              rpc rate          - mark current song as \"liked\"
              rpc unrate        - unmark current song
              rpc channels      - list all FM channels
              rpc webpage       - open the douban page using the browser defined in $BROWSER
              rpc setch <id>    - set channel through channel's id
              rpc kbps <kbps>   - set music quality to the specified kbps
              rpc launch        - tell RPD to restart
              rpc end           - tell RPD to quit


* `launch` command will forcefully kill all rpd instances and restart a new one 
* `info` supports an optional format argument that can contain specifiers related to the current player information. An example usage:

        $ fmc info 'Status: %u; Artist: %a; Title: %t'
        Status: pause; Artist: 菅野よう子; Title: アイモ O.C.

    To support backslash sequences, add a dollar sign in front of the argument

        $ fmc info $'Status: %u\nArtist: %a\nTitle: %t'
        Status: pause
        Artist: 菅野よう子
        Title: アイモ O.C.
