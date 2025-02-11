# Bash Scripting Module Notes

## What is Bash?
**Bash** is a command-line tool used to interact with your computer.
**Bash Script** is a file containing a series of commands that the computer executes automatically.

### Why Learn Bash Scripting?
- **Automates tasks**: Saves time on repetitive actions.
- **Manages systems**: Handles files, software installs, and system configurations.
- **Boosts efficiency**: Gets more done with less typing.

## Basic Bash Structure
For every bash script, use the **shebang** command:
```bash
#!/bin/bash
```
This tells your computer to use Bash to run the script.

Make the script executable:
```bash
chmod +x script.sh
```
Run it:
```bash
./script.sh
```

## Basic Concepts
### Variables
Stores values and allows manipulation, making scripts dynamic and flexible.
```bash
name=yonis
echo "Hello, $name"
```
Output:
```
Hello, Yonis
```

### Comments
Explain the code or hide/exclude some parts.
- **Single-line comment**:
  ```bash
  # This is a comment
  ```
- **Multi-line comment**:
  ```bash
  : ' 
  This is a 
  multi-line comment 
  '
  ```

## Conditionals
### If Statements
```bash
if [ condition ]
then
  # Code block
fi
```
#### Comparison Operators:
- `-eq` : equals
- `-ne` : not equal to
- `-lt` : less than
- `-gt` : greater than
- `-le` : less than or equal to
- `-ge` : greater than or equal to
- `&&` : AND
- `||` : OR

Example:
```bash
age=25
if [ $age -ge 18 ]
then
  echo "You are an adult"
fi
```
Output:
```
You are an adult
```

### Else and Elif
```bash
age=16
if [ $age -ge 18 ]
then
  echo "You are an adult"
elif [ $age -ge 13 ]
then
  echo "You are a teenager"
else
  echo "You are not an adult"
fi
```
Output:
```
You are a teenager
```

## Loops
### While Loop
```bash
count=1
while [ $count -le 5 ]
do
  echo "Count: $count"
  ((count++))
done
```

### For Loop
```bash
for (( i=1; i<=5; i++ ))
do
  echo "Number: $i"
done
```

## Break and Continue
```bash
for (( i=1; i<=5; i++ ))
do
  if [[ $i -eq 3 ]]
  then
    break
  fi
  echo "Number: $i"
done
```
Output:
```
Number: 1
Number: 2
```

If `break` is replaced with `continue`, it will skip `3` and print `1, 2, 4, 5`.

## Functions
```bash
function_name() {
  # Code block
}

hello_world() {
  echo "Hello World!"
}
```
Calling `hello_world` prints:
```
Hello World!
```

## Parameters in Functions
```bash
#!/bin/bash
print_args() {
  echo "Number of arguments: $#"
  echo "Script name: $0"
  echo "First argument: $1"
  echo "Second argument: $2"
  echo "All arguments: $@"
}

print_args "Alice" "Bob"
```
Output:
```
Number of arguments: 2
Script name: ./script.sh
First argument: Alice
Second argument: Bob
All arguments: Alice Bob
```

## User Input
```bash
echo "What is your name?"
read name
echo "Hello, $name!"
```

## Exit Codes
- `0` - Success
- `1+` - Fail/Error

Check the exit code of the last command:
```bash
echo $?
```

## Debugging and Script Control
### `set` Commands
```bash
set -e  # Exit on error
set -u  # Treat unset variables as errors
set -x  # Debug mode: print commands before execution
set -eux  # Combine all three
```

## File Checksums
- **Cryptographic hashes** provide unique fingerprints for files to verify authenticity.
- Example: `md5sum file.txt`
