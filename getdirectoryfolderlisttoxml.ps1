Get-ChildItem -Path D:\ -Recurse -Force -Directory |select FullName | Export-Clixml ficheiro.xml

