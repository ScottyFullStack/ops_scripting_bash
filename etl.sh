#!/bin/bash
export $(cat app.env)

#update the headers

./headers.sh

./perms.sh

./setup_db.sh

./update.sh