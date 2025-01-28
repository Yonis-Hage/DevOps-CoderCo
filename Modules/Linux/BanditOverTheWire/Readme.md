# Bandit Game Passwords 1-18

### Bandit 0
**Command:** `ssh bandit0@bandit.labs.overthewire.org -p 2220`  
Password: `bandit0`

---

### Bandit 0-1
1. Run `ls` to see the files.
2. Use `cat readme` to get the password.

Password: `ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If`

---

### Bandit 1-2
1. Run `ls` to see the files.
2. Use `cat ./-` (the `./` is required because of the dash in the filename).

Password:`263JGJPfgU6LtdEvgfWU1XP5yac29mFx`

---

### Bandit 2-3
1. Run `ls` to see the file names.
2. Use `cat sp` and press Tab to autocomplete (or use `cat spaces\ in\ this\ filename`).

Password:`MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx`

---

### Bandit 3-4
1. Run `ls` to see the files/directories (look for `inhere` directory).
2. Navigate using `cd inhere`.
3. Run `ls -a` to show hidden files.
4. Use `cat .` and press Tab to autocomplete the filename.

Password: `2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ`

---

### Bandit 4-5
1. Run `ls` to see files (look for `inhere` directory).
2. Navigate using `cd inhere`.
3. Use `file ./-file*` to find the ASCII text file.
4. Use `cat ./-file07`.
There are extra ways to complete this level such as doing `cat` every file or using `file` to see if it has ASCII text

Password:`4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw`

---

### Bandit 5-6
1. Run `ls` to see files (look for `inhere` directory).
2. Navigate using `cd inhere`.
3. Use `find . -type f -size 1033c ! -executable` to find the file(maybehere07)
4. Navigate to the directory and use `cat` on the file.

Password: `HWasnPhtq9AVKe0dmk45nxy20cvUa6EG`

---

### Bandit 6-7
1. Use `find / -type f -user bandit7 -group bandit6 -size 33c`. Forward slash to search the entire server/filesystem.
2. Locate `/var/lib/dpkg/info/bandit7.password` and use `cat` to read it.
Password: `morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj`

---

### Bandit 7-8
1. Run `ls` to find `data.txt`.
2. Use `strings data.txt | grep "millionth"`. `strings` looks for the printable strings in the file(cleans it up in a way) and using `grep` in combo with it allows you to find the word millionth in the file.

Password: `dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc`

---

### Bandit 8-9
1. Run `cat data.txt`.
2. Use `sort data.txt | uniq -c`. `Sort` data make it looks more presentable and nicer, `uniq` tells you many times a line has been repeated, use -c in conjunction to prefix the lines by the number of occurences and you will get the password(from the one that appears once). 
3. Find the line that occurs only once.

Password:`4CKMh1JI91bUIZZPXDqGanal4xvAg0JM`

---

### Bandit 9-10
1. Run `ls` to find `data.txt`.
2. Use `strings data.txt | grep "="`. `strings ` to allign the data and use `grep` to find the word(and password).

Password: `FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey`

---

### Bandit 10-11
1. Run `ls` to find `data.txt`.
2. Decode with `base64 -d data.txt`. `Base64` encoded data so I used the man page to see how to decode and I had to do -d for that.

Password:`dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr`

---

### Bandit 11-12
1. Run `ls` to find `data.txt`.
2. Decode using `cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'`. I didn't actually know how to shift the letters so I found out by using the internet.

Password: `7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4`

---

### Bandit 12-13
1. Make a temporary directory: `mkdir /tmp/Yonis`.
2. Copy the file: `cp data.txt /tmp/Yonis`.
3. Navigate to the directory: `cd /tmp/Yonis`.
4. Reverse the hex dump: `xxd -r data.txt > data`.
5. Use `file` to check the file type and decompress accordingly:
   - Use `mv`, `gzip -d`, `bzip2 -d`, or `tar xf` depending on the file type. For this part, before decompressing move the contents into a new file with the same file extension as the compression type(such as for bzip2 it would be bz2, for tar it would be tar and for gzip it would be gz).Also for tar, I initially didnt know that I had to do `tar xf` instead of doing `tar -x`  and I figured out that later on.
6. Repeat until the file is ASCII text.
7. Use `cat` to view the contents.

Password: `FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn`

---

### Bandit 13-14
1. Use `ssh -i sshkey.private bandit14@bandit.labs.overthewire.org -p 2220`.
No password for this level, straight into the next level.
Password:N/A

---

### Bandit 14-15
1. Run `cat /etc/bandit_pass/bandit14` to get the password for the previous level(MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS)
2. Use `nc localhost 30000` and enter the last password, which gives the password for the next level.

Password:`8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo`

---

### Bandit 15-16
1. Use `ncat --ssl localhost 30001` and enter the password. I initially looked through the man page of the `nc` command and you can see SSL doesn't work with this but it was possible with `ncat` so I used that.

Password:`kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx`

---

### Bandit 16-17
1. Use `nmap localhost -p 31000-32000`. You get 5 ports 31790 is the correct option.
2. Identify the port (31790).
3. Use `ncat --ssl localhost 31790` and enter the password.
4. Copy the RSA private key and save it.
5. USE `vim key` and enter the RSA priv key into it.
6. Use `chmod 400 key`.
7. SSH into the next level: `ssh -i key bandit17@bandit.labs.overthewire.org`.

---

### Bandit 17-18
1. Use `diff passwords.new passwords.old`.

Password: `ktfgBvpMzWKR5ENj26IbLGSblgUG9CzB`

---

### Bandit 18-19
1. Use `ssh bandit18@bandit.labs.overthewire.org -p 2220 "bash --norc"`. I was confused with this level so I researched how to do it.
2. Enter the password from the previous level(x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO).
3. Run `ls`
4. Run `cat readme` and you will get the password.

Password:`cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8`

---

### Bandit 19-20
1. Run `./bandit20-do cat /etc/bandit_pass/bandit20`, The wiki says that setuid allows users to run an executable with the file system permissions of the executable's owner or group respectively and to change behaviour in directories. Basically meaning that it gives you access of the file of the setuid file. And in this scenario the owner is bandit 20. 

Password: `0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO`

---

### Bandit 20-21
1. For this level you need to open another tab on the terminal, log into bandit20, set up a listening port and sending the password to the listening port.
2. On the first terminal, run `ls` to see suconnect.
3. On the other terminal run the command `cat /etc/bandit_pass/bandit20 | nc -l localhost -p 1234`
4. On the first terminal run the command `./suconnect 1234`
5.  The first terminal will have the bandit 19-20 password and the second terminal will have the bandit 20-21 password.

Password: `EeoULMCra2q0dSkYj561DX7s1CpBuOBt`


**Password:** `cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8`
