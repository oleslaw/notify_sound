# Notification Monitor

This script monitors a specified app for notifications and plays a sound file when a notification is received.

## Usage

```bash
./notify_monitor.sh [OPTIONS] APP_NAME
```

Options:
  * `-h, --help`: Display the help message and exit.
  * `-s, --sound`: Specify a different sound file to play when a notification is received.

## Examples

```bash
./notify_monitor.sh firefox
./notify_monitor.sh -s /path/to/custom/sound.ogg firefox
```

## Running as a Background Process

To run the script as a background process in Linux, you can use the `nohup` command followed by `&` to run the script in the background. The `nohup` command allows the script to continue running even after the terminal is closed. The `&` symbol causes the script to run in the background and return control to the terminal immediately.

```bash
nohup ./notify_monitor.sh APP_NAME &
```


## Default Sound File

The default sound file is `/usr/share/sounds/freedesktop/stereo/message-new-instant.oga`. If a different sound file is not specified using the `-s` option, this file will be used.