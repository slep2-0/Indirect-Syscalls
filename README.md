# INDIRECT SYSCALLS REV SHELL

**This is for educational purposes ONLY, I am not responsible for what you do with this, you skid**

This C++ process injector and reverse shell, uses Indirect Syscalls, to evade antiviruses, and some EDR's.

It will ask for a process to inject, then will use indirect syscalls to do so.

It uses the shellcode from the NTAPI one, the one that connects to 192.168.68.101, on port 4444.

It's a very weak shellcode, it got 7 detections in virustotal, mainly because of the mechanism and signature, which is very easy to decrypt, windows defender is trash tho.

https://www.virustotal.com/gui/file/94b39ba9d83fbf2e557e5be5cffd2eaf8b4f9bee72d6bec4e20f92203d545aa9?nocache=1

**Steps to build:**

Open the .sln file (Solution) in Visual Studio 2022

Build.
