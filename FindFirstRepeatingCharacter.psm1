function Find-FirstRepeatingCharacter() {

    <#
        .SYNOPSIS
        A powershell function that takes an arbitrarily long string parameter $foo (e.g. 'abcdedcba') and returns the first recurring character in that Input string.
        
        .DESCRIPTION
        A powershell function that takes an arbitrarily long string parameter $foo (e.g. 'abcdedcba') and returns the first recurring character in that Input string.
        Uses a hash table to store already identified characters
        Loops through each character in the string adding keys to the hash table as they are discovered
        If a character already has a key in our hash table, then we have found our first recurring character and we return it
        Executes in O(n) time

        .PARAMETER foo
        Specifies the string to be parsed for the first recurring character

        .EXAMPLE
        Find-FirstRepeatingCharacter -foo "abcdedcba"

        .OUTPUTS
        System.Char
    #>

    [CmdletBinding()]
    Param(
        [parameter(Mandatory=$true)] 
        [ValidateNotNullOrEmpty()]
        [String]$foo 
    )

    $hashTable = @{}
    [Char]$firstRepeatingCharacter = $null

    foreach ($char in $foo.ToLower().ToCharArray()) { 
        if($hashTable.ContainsKey($char)) {
            $firstRepeatingCharacter = $char
            break
        }
        else {
            $hashTable[$char] = $true
        }
    }

    return $firstRepeatingCharacter

}