# LoanDepotInterview1

## Header
Author: Ryan Knee

Date: 2022-04-18

## Synopsis
A powershell function that takes an arbitrarily long string parameter $foo (e.g. 'abcdedcba') and returns the first recurring character in that Input string.

## Description
A powershell function that takes an arbitrarily long string parameter $foo (e.g. 'abcdedcba') and returns the first recurring character in that Input string.

Uses a hash table to store already identified characters

Loops through each character in the string adding keys to the hash table as they are discovered

If a character already has a key in our hash table, then we have found our first recurring character and we return it

Executes in O(n) time

## Parameters

    -foo <String>

        Specifies the string to be parsed for the first recurring character

        Required?                    true

        Position?                    1

        Default value

        Accept pipeline input?       false

        Accept wildcard characters?  false

    <CommonParameters>

## Example
Find-FirstRepeatingCharacter -foo "abcdedcba"

## Outputs
System.Char