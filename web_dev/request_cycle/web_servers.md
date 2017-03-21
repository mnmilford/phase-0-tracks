## What are some of the key design philosophies of the Linux operating system?

While researching the philosophy behind the Linux OS, I found a sentence that seems to sum it up quite well.

> Linux is, and more than likely always will be, a hacker's operating system.
> 
> [Source](http://www.science.unitn.it/~fiorella/guidelinux/gs/node22.html)

In contrast, the Windows OS philosophy has always been to shield users from access to things that could mess up the system. MAC OS is similar to Windows, making use of a GUI for nearly everything. MAC OS does include a bash shell that provides a great deal of power but you have to know where to look.

Back to Linux, another good quote is:

> Unix was not designed to stop its users from doing stupid things, as that 
> would also stop them from doing clever things.
> 
> [Source](http://www.linfo.org/q_unix.html)

The bottom line is that Linux puts full power in the hands of the user. It takes the assumption that its users understand computers and so it will process your commands usually without asking you to confirm.

## What is a VPS? What are some advantages of using a VPS?

A VPS is a virtual private server. It's really just a virtual machine that can be used for whatever you like but it's most commonly sold as a service by web hosting companies. The virtual machine you pay for is just a section of a server with a certain amount of power, memory, etc. that you have access to. Performance *can* be affected by other VPSs on the underlying hardware.

Probably the greatest thing about a VPS is that it can easily be created, copied, moved, backed-up, and recovered. If something goes wrong with the VPS, it's not a catastrophic failure like it would be if you ran your own server and it crashed.

## Why is it bad to run programs as root user on Linux?

It's all about security. Programs should be able to run by non-administrators except on a case-by-case basis where a user absolutely needs access to the root shell. You wouldn't want a vulnerability in a certain program to have access to your whole root folder otherwise it could damage the operating system itself.