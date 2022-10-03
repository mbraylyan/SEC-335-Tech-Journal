param($prefix, $dns)

for ( $i=0; $i -lt 256; $i++) {

    $result = (Resolve-DnsName -DnsOnly ($prefix + "." + $i) -Server $dns -ErrorAction Ignore)
    
    if ($result -ne $null) {
        
        Write-Host ($prefix + "." + $i) $result.NameHost
    
    }




}