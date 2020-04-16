#!/usr/bin/env bash
find $1 -type f -name "*.md" -print0 | xargs -0 perl -0777 -pi -e 's/!!! (info|note|warning|example|success).*\n\s*(.*)\n/{% hint style="\1" %}\n\2\n{% endhint %}\n/gm'
find $1 -type f -name "*.md" -exec sed -i '' -e 's/style="example"/style="info"/g' {} \;
find $1 -type f -name "*.md" -exec sed -i '' -e 's/style="note"/style="info"/g' {} \;
find $1 -type f -name "*.md" -exec sed -i '' -e 's/<!--.*-->//g' {} \;
find $1 -type f -name "*.md" -exec sed -i '' -E 's@ \[(.*)\]\(([^/#:.]*)\)@ [\1](\2.md)@g' {} \;
