DOWNLOAD_URL=https://onevmw-my.sharepoint.com/personal/kmarkov_vmware_com/_layouts/15/download.aspx?SourceUrl=

SOURCE_URL=$(curl -sS -c cookie $1 | grep "onedrive.aspx?id=" | awk '{split($0, a, "id="); split(a[2], b, "&amp;"); print b[1]}')

curl -b cookie $DOWNLOAD_URL$SOURCE_URL -o $2

rm cookie