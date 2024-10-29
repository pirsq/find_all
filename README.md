# Find\_all.sh

Find\_all searches all or specified cPanels for a list of files. It was originally developed to locate and remove undesired skeleton files in the default document roots of several cPanels. Found files are redirected to found\_files.txt, which is emptied each time the script is ran. A *last run* date/timestamp is included at the top of the found files list.

## Requirements

The script is designed for cPanel servers that use RedHat Linux derived distros. It has specifically been tested on AlmaLinux 8, but should work on CentOS servers as well. Find_all must be ran with root level privileges.

## Configuration

By default, find\_all will search all cPanels for files listed in the *file\_list* array. Alternatively, you can specify the searched cPanels in the *cPusers* array. Initial configuration limits the search to the default document root (public_html) of each cPanel.

## License

This script is licensed under the [GNU General Public License (GPL) v3](https://www.gnu.org/licenses/gpl-3.0.en.html).
