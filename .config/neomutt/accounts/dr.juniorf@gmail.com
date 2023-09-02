set my_username="dr.juniorf"
set my_hostname="gmail.com"
set my_address="$my_username@$my_hostname"

## Receive options
set mbox_type=Maildir
set folder="~/.mail/$my_address"
mailboxes +Inbox +Sent +Drafts +Spam +Trash
set mbox="+Inbox"
set record="+[Gmail]/Sent Mail"
set postponed="+[Gmail]/Drafts"
set trash="+[Gmail]/Trash"
set spoolfile="+INBOX"

## Send options
set smtp_pass="`pass show Google-Accounts/Personal | grep -oP '(?<=Application_Password_Gmail: )[a-z]{16}'`"
set realname="Назарько Данил"
set smtp_url="smtps://$my_address@smtp.$my_hostname"
set from="$my_address"
set hostname="$my_hostname"
# Connection options
set ssl_force_tls = yes
unset ssl_starttls

