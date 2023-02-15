# Notification Sound

This script monitors notifications from a specified application or from all applications and plays a sound file when a notification is received. It is particularly useful for web applications that send notifications but do not play any sounds, such as Microsoft Teams.

> :warning: Note that it has only been tested on Ubuntu 22.04.

## Usage

```bash
./notify_sound [OPTIONS]
```

Options:
  * `-h, --help`: Display the help message and exit.
  * `-s, --sound`: Specify a different sound file to play when a notification is received.
  * `-a, --app`: Specify the name of the application to monitor for notifications. If not specified, notifications from all applications will be monitored.

## Examples

```bash
./notify_sound --app "Microsoft Edge"
./notify_sound --sound /path/to/custom/sound.ogg
./notify_sound -s /path/to/custom/sound.ogg -a firefox
```

If you are using this script with applications that embed a browser engine, such as Outlook or Teams, use the name of a browser in the --app parameter (for example, "Microsoft Edge" for Teams/Outlook).

## Running as a Background Process

To run the script as a background process in Ubuntu, you can use the `nohup` command followed by `&`. The `nohup` command allows the script to continue running even after the terminal is closed. The `&` symbol causes the script to run in the background and return control to the terminal immediately.

```bash
nohup ./notify_sound &
```


## Default Sound File

If a different sound file is not specified using the `-s` option,
the default file that will be used is `/usr/share/sounds/freedesktop/stereo/message.oga`.