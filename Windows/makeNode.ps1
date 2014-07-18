$outzip = "C:\makeNode_Package\package.7z"
$inzip = "C:\Project\*.*"
$date = Get-date -format "dddd-dd-MMMM-yyyy_HH.mm~ms"
$logfile = "C:\$date.log"
$outpath = "C:\$date\package.exe"
$nwpath = "C:\node-webkit\nw.exe"
$archiver = "7z.exe"

CMD /C $archiver a -t7z -r "$outzip" "$inzip" > $logfile

mkdir -p $outpath

CMD /C Copy /b $nwpath+$outzip $outpath
