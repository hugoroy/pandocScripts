#!/bin/zsh

# This script looks for paragraphs and will append a prefix. Useful if
# you want to enumerate paragraphs, e.g. in contracts or legal briefs.

# TODO: Pandoc filters can take the format output as an argument.
# Ideally, the script should do different things depending on the
# chosen output. It currently only works if the output is -t latex

sed 's#"t":"Para","c":\[{#"t":"Para","c":\[{"t":"RawInline","c":\["tex","\\\\paragraph{}"\]},{#g'
