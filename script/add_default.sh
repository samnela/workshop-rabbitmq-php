#!/bin/bash

rabbitmqctl add_user testons testons

rabbitmqctl set_user_tags testons administrator
 rabbitmqctl set_permissions -p / testons ".*" ".*" ".*"

rabbitmqctl delete_user guest
