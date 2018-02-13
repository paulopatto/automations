#!/usr/bin/env bats i
# vim: set ft=sh :

@test "Check that total is listed" {
  run ls -l [[ ${lines[0]} =~ "total" ]]
}
