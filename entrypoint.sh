#!/bin/sh -l

reviewdog -f=checkstyle -name="ktlint" --reporter=github-pr-check
