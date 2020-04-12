import os
from datetime import datetime


folder = 'E:/dev/scan/'
napsConsole = 'D:/NAPS2/NAPS2.Console.exe'
choice = -1
while choice != 0:
    print('Enter a number to choose a NAPS2 profile: ')
    print('(1) COLOR-A4-300')
    print('(2) GRAYSCALE-A4-300')
    print('(3) BLACKWHITE-A4-300')
    print('(4) COLOR-A4-300 and BLACKWHITE-A4-300')
    print('(0) EXIT')
    choice = int(input('Profile: '))
    if choice > 0:
        filename = input('Filename: ')
        filename = datetime.now().strftime('%Y-%m-%d-%H-%M-%S-') + filename
        profile1 = ''
        profile2 = ''
        if choice == 1:
            profile1 = 'COLOR-A4-300'
        elif choice == 2:
            profile1 = 'GRAYSCALE-A4-300'
        elif choice == 3:
            profile1 = 'BLACKWHITE-A4-300'
        else:
            profile1 = 'COLOR-A4-300'
            profile2 = 'BLACKWHITE-A4-300'
        if profile1 != '':
            command = napsConsole + ' --output "' + folder + filename + '-P1.pdf"' + ' --profile ' + profile1 + ' --verbose'
            os.system(command)
        if profile2 != '':
            command = napsConsole + ' --output "' + folder + filename + '-P2.pdf"' + ' --profile ' + profile2 + ' --verbose'
            os.system(command)
