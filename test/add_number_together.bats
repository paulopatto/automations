#!/usr/bin/env bats
# vim: set ft=sh :

load 'bats_helper'

@test "should add numbers together" {
  assert_equal $(echo 1+1 | bc) 2
}
