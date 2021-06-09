param (
    [Parameter(Mandatory=$true)]
    [String] $Foo
)

$WARNING = 0

Write-Output $Foo

exit $WARNING
