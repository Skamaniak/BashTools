# Scripts and Tools
## distirbute.sh
Distributes all scripts in a specific folder and bash_profile template to list of remote servers.

## pcap.sh
Uses tcpdump to capture pcap with some default settings (for more information see the script). Name of the file to which the dump will be stored can be specified as an argument.

## clear.sh
Prints N empty lines. This can be used to separate blocks of text when grepping logs. Number of lines can be specified as an argument, default is 50.

## highlight.sh
Used for colorizing text. Arguments of this script will be highlighted when text is redirected through it. Arguments can be regular expressions.
Colors used for highlighting are the following: RED, GREEN, CYAN, YELLOW, MAGENTA, BLUE. If there is more than 6 arguments, colors are reused in the same order as stated.
Example: 
```
cat some.log | ./highlight.sh ERROR WARN "error.*"
```
