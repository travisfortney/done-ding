# done-ding

[![Validate](https://github.com/travisfortney/done-ding/actions/workflows/validate.yml/badge.svg)](https://github.com/travisfortney/done-ding/actions/workflows/validate.yml)

A tiny macOS terminal chime for long-running commands.

Run a command, call `done-ding`, and get a small system sound when the work is finished.

![done-ding terminal preview](docs/demo.gif)

## Usage

Run a command, then call the chime:

```bash
long-running-command
bin/done-ding "long-running-command"
```

Or use it from another script:

```bash
./examples/long-task.sh
```

By default it waits `1.5` seconds, logs the finished label to `/tmp/done-ding.log`, and plays the built-in macOS Pop sound.

## Options

Set environment variables to change the sound, delay, or log file:

```bash
export DONE_DING_SOUND="/System/Library/Sounds/Glass.aiff"
export DONE_DING_DELAY="0.5"
export DONE_DING_LOG="/tmp/my-done-ding.log"
export DONE_DING_PLAYER="/usr/bin/afplay"
```

Then run:

```bash
bin/done-ding "backup script"
```

## Install

Clone the repo, then either call the script directly or symlink it somewhere in your path:

```bash
ln -s "$PWD/bin/done-ding" /usr/local/bin/done-ding
```

After that:

```bash
make test
done-ding "tests"
```

## Notes

This is intentionally small. It is a local convenience script, not a notification framework.
