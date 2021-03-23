#  Para ativar o print to pdf feature caso haja remoção do feature
#
#
#

# acede em modo administrativo no powershell e execute o seguinte comando

# Set-ExecutionPolicy RemoteSigned
# ou
# Set-ExecutionPolicy Unrestricted "Este comando não é recomendado"


# De seguida  corra o DIR:\\ "script_pdf_print.ps1"
# ou execute os seguintes comandos

Disable-WindowsOptionalFeature -online -FeatureName Printing-PrintToPDFServices-Features 


Enable-WindowsOptionalFeature -online -FeatureName Printing-PrintToPDFServices-Features -All
