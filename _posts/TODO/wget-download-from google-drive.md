## Source: 
<https://medium.com/@acpanjan/download-google-drive-files-using-wget-3c2c025a8b99>


Steps:

Select a file that is need to be downloaded and do right click.
Click Share. A dialog box will appear.
Click Advance in the right bottom corner.
Click on the Change.. under who has access.
Make it On- Public on the web.
Click Save button.
Copy the link for sharing…like…https://drive.google.com/file/d/1UibyVC_C2hoT_XEw15gPEwPW4yFyJFeOEA/view?usp=sharing
Extrac FILEID part like….from above….1UibyVC_C2hoT_XEw15gPEwPW4yFyJFeOEA
SO for small file run following command on your terminal:

wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=FILEID' -O FILENAMEIn the above command change the FILEID by above id extracted and rename FILENAME for your own simple use.

For lagre file run the following command with necessary changes in FILEID and FILENAME:

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=FILEID' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=FILEID" -O FILENAME && rm -rf /tmp/cookies.txt
