param($Url)

$result = Invoke-WebRequest -Uri $Url -Method Get

if($result.StatusCode -ne 200) {
    throw "Expected status code 200 but got $($result.StatusCode) from $($Url)"
}else{
    Write-Host "Success: got status code $($result.StatusCode) from $($Url)"
}
