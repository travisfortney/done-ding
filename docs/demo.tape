Output docs/demo.gif
Set FontSize 20
Set Width 920
Set Height 520
Set Theme "Catppuccin Mocha"

Type "make test"
Enter
Sleep 900ms
Type "DONE_DING_DELAY=0 DONE_DING_LOG=/tmp/done-ding-demo.log bin/done-ding tests"
Enter
Sleep 500ms
Type "tail -n 1 /tmp/done-ding-demo.log"
Enter
Sleep 1s
