# Mackup restore on secondary computers

# Wait for icloud drive to load all files
brew update
brew upgrade

# symlink for mackup configuration file
ln -sf ~/Library/Mobile\ Documents/com~apple~CloudDocs/Mackup/.mackup.cfg ~/.mackup.cfg

# symlink for custom mackup applications
ln -sf ~/Library/Mobile\ Documents/com~apple~CloudDocs/Mackup/.mackup ~/.mackup

# mackup restore
mackup restore

# Remove further cloud syncing to prevent fucking up library
mackup uninstall