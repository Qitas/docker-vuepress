#!/bin/bash

# if command starts with an option
if [ "${1:0:1}" = '-' ]; then
	set -- mysqld "$@"
fi

exec "$@"
