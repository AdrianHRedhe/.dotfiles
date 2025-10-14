#!/bin/bash
# Checks My Mail for me
function check_mail() {
echo 'Running: tail /var/mail/adrian'
tail /var/mail/adrian
}

# Remove all my emails
function clear_mailbox() {
echo 'Running: truncate -s 0 /var/mail/adrian'
truncate -s 0 /var/mail/adrian 
}
