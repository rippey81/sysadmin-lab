# 🐚 Bash Scripting Commands Reference

## 🔄 Variables
```bash
name="Robert"
echo "Hello $name"

📜 Conditionals
bash

if [ "$name" == "Robert" ]; then
  echo "Name matches"
else
  echo "Name does not match"
fi
🔁 Loops
For Loop
bash

for i in {1..5}; do
  echo "Number $i"
done
While Loop
bash

count=1
while [ $count -le 5 ]; do
  echo $count
  ((count++))
done
🔧 Functions
bash

greet() {
  echo "Hi there!"
}
greet
📂 File Checks
bash

if [ -f "myfile.txt" ]; then
  echo "File exists"
fi
💣 Exit Status
bash

command
echo $?
🔌 Command Substitution
bash

DATE=$(date)
echo "Today is $DATE"
✅ Best Practices
Always #!/bin/bash at the top of scripts

Use set -euo pipefail for safer scripting
