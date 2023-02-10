# Notification Monitor

This script monitors notifications from a specified app or from all apps and plays a sound file when a notification is received.

> :warning: This script has been only tested on Ubuntu 22.04.

## Usage

```bash
./notify_monitor [OPTIONS]
```

Options:
  * `-h, --help`: Display the help message and exit.
  * `-s, --sound`: Specify a different sound file to play when a notification is received.
  * `-a, --app`: Specify the name of the application to monitor for notifications. If not specified, notifications from all applications will be monitored.

## Examples

```bash
./notify_monitor --app "Microsoft Edge"
./notify_monitor --sound /path/to/custom/sound.ogg
./notify_monitor -s /path/to/custom/sound.ogg -a firefox
```

## Running as a Background Process

To run the script as a background process in Linux, you can use the `nohup` command followed by `&` to run the script in the background. The `nohup` command allows the script to continue running even after the terminal is closed. The `&` symbol causes the script to run in the background and return control to the terminal immediately.

```bash
nohup ./notify_monitor &
```


## Default Sound File

The default sound file is `/usr/share/sounds/freedesktop/stereo/message.oga`. If a different sound file is not specified using the `-s` option, this file will be used.