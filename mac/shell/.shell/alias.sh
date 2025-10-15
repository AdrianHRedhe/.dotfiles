alias sshpi="ssh pi@adrianhredhe.com"
rsyncTo() {
  local dest="pi@adrianhredhe.com:~/"
  echo "$1" | xargs -I {} rsync -avz {} "$dest"
}
rsyncFrom() {
  local src="pi@adrianhredhe.com:~/"
  echo "$1" | xargs -I {} rsync -avz "$src"{} .
}
