Search .md files containing "author" string

find ~  -name  '*.md' -not -path '*/.*' | xargs -I X  grep -l  author X | xargs head -10 -q | less

find ~  -name  '*.md' -not -path '*/.*' -exec grep -l  author {} \; | xargs head -10 -q | less
