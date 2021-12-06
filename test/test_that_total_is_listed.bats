#!/usr/bin/env bats i
# vim: set ft=sh :

load 'bats_helper'

@test "Check that total is listed" {
  run ls -l [[ ${lines[0]} =~ "total" ]]
}
