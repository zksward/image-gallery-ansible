#!/usr/bin/bash

# Install packages
yum -y update
yum install -y python3 git postgresql gcc python3-devel postgresql-devel

su ec2-user -l -c "pip3 install pexpect --user"

su ec2-user -l -c "echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCDldDiXWAdP9sq9KlxQaTVkF2DMFq9CQXk0pLqSY2jjaS1PQgj0Svf7RGSbMVlgSdd87Qdc534r26L6l+2GVQcMTClyFDZGdxf9vrfhJV8+Eyj5MFDMsBO9EDO9T+EAqfcz1+oXoGd7/slehHyQ9O12tcxNZmViWpHNrv9WAtBcpKR+M9k0PKydnH0GtSU4Ta33/fAagTUP2Q20J01qLwEW6R70xObQ+POmrhLWwHoQtpTtCy5DUP6ZV3To+JCSL7ZDbxNuR98P/awe7bdPiv0sXvC68a1GsAamBmt96mQFrCrS44GIcjgVCWdWSacBA8BGTQz5tmGahIXkcK3xbqH cpsc4973ta' >>~/.ssh/authorized_keys"