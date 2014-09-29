#!/bin/sh
cd ~/
	env x='() { :;}; echo You are vulnerable! Please install the patch by running this script as root with the argument -i' bash -c 'echo '
	env X='() { (a)=>\' sh -c "echo date"; cat echo
	if [ -f "echo" ]; then
		echo "You are still vulnerable! Please install the patch by running this script as root with the argument -i"
		rm echo
	fi
	bash -c 'true <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF' ||
echo "You are still vulnerable! Please install the patch by running this script as root with the argument -i, redir_stack"
(for x in {1..200} ; do echo "for x$x in ; do :"; done; for x in {1..200} ; do echo done ; done) | bash ||
echo "You are still vulnerable! Please install the patch by running this script as root with the argument -i, word_lineno"
	exit 0