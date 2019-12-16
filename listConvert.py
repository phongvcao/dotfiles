#!/usr/bin/env python

import re, argparse, sys
from os.path import expanduser

Urllib = None
isPython3 = True
if sys.version_info[ 0 ] >= 3:
    import urllib.parse
    Urllib = urllib.parse
else:
    import urllib
    Urllib = urllib
    isPython3 = False


class ListConverter:
    selfControlUrlPattern = re.compile( "((?:[a-z0-9]+\.)+[a-z0-9]+)" )
    leechBlockUrlPattern = re.compile( "((?:[a-z0-9]+\.)+[a-z0-9]+)" )
    stayFocusdUrlPattern = re.compile( "((?:[a-z0-9]+\.)+[a-z0-9]+)" )

    def getFileType( self, fileName ):
        if fileName.endswith( ".selfcontrol" ):
            return "SelfControl"
        elif fileName.endswith( ".leechblock" ):
            return "LeechBlock"
        elif fileName.endswith( ".json" ):
            return "StayFocusd"
        else:
            assert False, "Unsupported file extension: %s" % fileName

    def convertToList( self, fileName ):
        if fileName.endswith( ".selfcontrol" ):
            return self.selfControlToList( fileName )
        elif fileName.endswith( ".leechblock" ):
            return self.leechBlockToList( fileName )
        elif fileName.endswith( ".json" ):
            return self.stayFocusdToList( fileName )
        else:
            assert False, "Unsupported file extension: %s" % fileName

    def selfControlToList( self, fileName ):
        try:
            content = None
            f = None
            if isPython3:
                f = open( fileName, "r", encoding="latin1" )
            else:
                f = open( fileName, "r" )
            content = f.read()
            f.close()

            return list( set ( [ "*imghp", "*isch" ] +
                [ match for match in re.findall( self.selfControlUrlPattern, content ) ] ) )

        except IOError:
            print( "No such file or directory: %s" % fileName )

        return []

    def leechBlockToList( self, fileName ):
        try:
            f = []
            if isPython3:
                f = open( fileName, "r", encoding="latin1" )
            else:
                f = open( fileName, "r" )

            for line in f:
                if line[0:7] == "sites1=":
                    f.close()
                    return list( set ( [ "*imghp", "*isch" ] +
                        [ match for match in re.findall( self.leechBlockUrlPattern, line ) ] ) )
        except IOError:
            print( "No such file or directory: %s" % fileName )

        return []

    def stayFocusdToList( self, fileName ):
        try:
            content = None
            f = None
            if isPython3:
                f = open( fileName, "r", encoding="latin1" )
            else:
                f = open( fileName, "r" )
            content = f.read()
            f.close()

            content = Urllib.unquote( content )
            return list( set( [ match for match in re.findall( self.stayFocusdUrlPattern, content ) ] ) )

        except IOError:
            print( "No such file or directory: %s" % fileName )

        return []


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument( 'file_names', type=str, nargs='?' )

    args = parser.parse_args()

    listConverter = ListConverter()
    finalList = []

    if not args.file_names:
        args.file_names = []
        args.file_names.append( "%s/.dotfiles/home/config/selfcontrol/Blacklist.selfcontrol" % expanduser( "~" ) )
        args.file_names.append( "%s/.dotfiles/home/config/selfcontrol/Work.leechblock" % expanduser( "~" ) )
        args.file_names.append( "%s/.dotfiles/home/config/selfcontrol/StayFocusd.json" % expanduser( "~" ) )

    for fileName in args.file_names:
        file_type = listConverter.getFileType( fileName )
        if file_type == "SelfControl":
            print( "SelfControl:" )
            print( "" )
        elif file_type == "LeechBlock":
            print( "LeechBlock:" )
            print( "" )
        elif file_type == "StayFocusd":
            print( "StayFocusd:" )
            print( "" )

        tempList = listConverter.convertToList( fileName )
        print( "LeechBlock and StayFocusd format:" )
        print( "\n".join( tempList ) )
        print( "\n" )
        print( "SelfControl format:" )
        print( ", ".join( tempList ) )
        print( "\n" )
        print( "\n" )

        finalList += tempList

    finalList = list( set( finalList ) )

    if finalList:
        print( "LeechBlock and StayFocusd format:" )
        print( "" )
        print( "\n".join( finalList ) )
        print( "\n" )
        print( "SelfControl format:" )
        print( ", ".join( finalList ) )

if __name__ == "__main__":
    main()
