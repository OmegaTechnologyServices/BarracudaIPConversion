# This script will take a formatted .csv file containing an IP address and the CIDR address
# and output a .txt file you can paste into the Barracuda Email bulk edit client. This is
# significantly faster than blocking IP addresses on at a time and this script will ensure
# the proper format is used to avoid mistakes when entering IP addresses.

# Built by Justin Sherley for use in RS&I, Inc

# 5/9/2019 | omegatechnologyservices@protonmail.com | https://www.github.com/OmegaTechnologyServices/BarracudaIPConversion

# Define Variables

$directory = Read-Host "Enter path where .csv file is located. Example C:\users\USER\desktop"
$importfile = Read-Host "Enter name for import file. Do not include extension"
$exportfile = Read-Host "Enter name for export file. Do not include extension"
$owner = Read-Host "What is the name of the IP owner?"
$country = Read-Host "What is the originating Country?"
$reason = Read-Host "What is the reason for the block?"

$fullimport = $directory + '\' + $importfile + '.csv'
$fullexport = $directory + '\' + $exportfile + '.txt'

# Assign CIDR conversion to Subnet Mask variable

$CIDR = Import-Csv -Path $fullimport | Select-Object CIDR,IP | ForEach-Object{
    if( $_.CIDR -like 1 ) { $SubMask = "128.0.0.0"
        $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
     
        } elseif ( $_.CIDR -like 2 ) { $SubMask = '192.0.0.0' 
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
        
        } elseif ( $_.CIDR -like 3 ) { $SubMask = '224.0.0.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
  
        } elseif ( $_.CIDR -like 4 ) { $SubMask = '240.0.0.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
   
        } elseif ( $_.CIDR -like 5 ) { $SubMask = '248.0.0.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
  
        } elseif ( $_.CIDR -like 6 ) { $SubMask = '252.0.0.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'

        } elseif ( $_.CIDR -like 7 ) { $SubMask = '254.0.0.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
 
        } elseif ( $_.CIDR -like 8 ) { $SubMask = '255.0.0.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
        
        } elseif ( $_.CIDR -like 9 ) { $SubMask = '255.128.0.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')' 
        
        } elseif ( $_.CIDR -like 10 ) { $SubMask = '255.192.0.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'

        } elseif ( $_.CIDR -like 11 ) { $SubMask = '255.224.0.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'

        } elseif ( $_.CIDR -like 12 ) { $SubMask = '255.240.0.0' 
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
        
        } elseif ( $_.CIDR -like 13 ) { $SubMask = '255.248.0.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
  
        } elseif ( $_.CIDR -like 14 ) { $SubMask = '255.252.0.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
   
        } elseif ( $_.CIDR -like 15 ) { $SubMask = '255.254.0.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
  
        } elseif ( $_.CIDR -like 16 ) { $SubMask = '255.255.0.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'

        } elseif ( $_.CIDR -like 17 ) { $SubMask = '255.255.128.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
 
        } elseif ( $_.CIDR -like 18 ) { $SubMask = '255.255.192.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
        
        } elseif ( $_.CIDR -like 19 ) { $SubMask = '255.255.224.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')' 
        
        } elseif ( $_.CIDR -like 20 ) { $SubMask = '255.255.240.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'

        } elseif ( $_.CIDR -like 21 ) { $SubMask = '255.255.248.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'

        } elseif ( $_.CIDR -like 22 ) { $SubMask = '255.255.252.0' 
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
        
        } elseif ( $_.CIDR -like 23 ) { $SubMask = '255.255.254.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
  
        } elseif ( $_.CIDR -like 24 ) { $SubMask = '255.255.255.0'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
   
        } elseif ( $_.CIDR -like 25 ) { $SubMask = '255.255.255.128'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
  
        } elseif ( $_.CIDR -like 26 ) { $SubMask = '255.255.255.192'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'

        } elseif ( $_.CIDR -like 27 ) { $SubMask = '255.255.255.224'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
 
        } elseif ( $_.CIDR -like 28 ) { $SubMask = '255.255.255.240'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
        
        } elseif ( $_.CIDR -like 29 ) { $SubMask = '255.255.255.248'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')' 
        
        } elseif ( $_.CIDR -like 30 ) { $SubMask = '255.255.255.252'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'

        } elseif ( $_.CIDR -like 31 ) { $SubMask = '255.255.255.254'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')'
        
        } elseif ( $_.CIDR -like 32 ) { $SubMask = '255.255.255.255'
                $IP = $_.IP + ',' + $SubMask + ',' + 'Block' + ', ' + $Reason + ' ' + $Country + ' (' + $Owner + ')' 
    }
  
 $IP | Out-File -Append $fullexport  

}
  