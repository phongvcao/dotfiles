#!/usr/bin/python

import lldb
import os
import time
import re

def __lldb_init_module( debugger, internal_dict ):
    moduleName = os.path.splitext( os.path.basename( __file__ ) )[ 0 ]
    debugger.HandleCommand( 'command script add -f %s.voltron_step S' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_step_out O' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_next N' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_until T' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_watchpoint W' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_continue C' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_run R' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_kill K' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_frame_select F' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_list L' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_breakpoint B' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_breakpoint_delete D' % moduleName )

    debugger.HandleCommand( 'command script add -f %s.voltron_step Step' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_step_out Out' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_next Next' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_until Until' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_watchpoint Watch' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_continue Continue' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_continue Cont' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_run Run' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_kill Kill' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_frame_select FrameSelect' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_list List' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_breakpoint Break' % moduleName )
    debugger.HandleCommand( 'command script add -f %s.voltron_breakpoint_delete Delete' % moduleName )


def voltron_step( debugger, command, result, internal_dict ):
    debugger.HandleCommand( 'step' )
    debugger.HandleCommand( 'voltron update' )

def voltron_step_out( debugger, command, result, internal_dict ):
    debugger.HandleCommand( 'thread step-out' )
    debugger.HandleCommand( 'voltron update' )

def voltron_next( debugger, command, result, internal_dict ):
    if command:
        debugger.HandleCommand( 'next -c %d' % int( command ) )
        debugger.HandleCommand( 'voltron update' )
    else:
        debugger.HandleCommand( 'next' )
        debugger.HandleCommand( 'voltron update' )

def voltron_until( debugger, command, result, internal_dict ):
    if command:
        debugger.HandleCommand( 'thread until %d' % int( command ) )
        debugger.HandleCommand( 'voltron update' )

def voltron_watchpoint( debugger, command, result, internal_dict ):
    commandArgs = re.split( "\s+", command, 1 )
    debugger.HandleCommand( 'watchpoint set variable %s' % commandArgs[ 0 ] )
    debugger.HandleCommand( "watchpoint modify -c ' ( %s )'" % commandArgs[ 1 ] )
    debugger.HandleCommand( "continue" )
    debugger.HandleCommand( "settings set auto-confirm 1" )
    debugger.HandleCommand( "watchpoint del" )
    debugger.HandleCommand( "settings set auto-confirm 0" )
    debugger.HandleCommand( 'voltron update' )

def voltron_continue( debugger, command, result, internal_dict ):
    if ( command ):
        debugger.HandleCommand( 'continue -i %d' % int( command ) )
    else:
        debugger.HandleCommand( 'continue' )
    debugger.HandleCommand( 'voltron update' )

def voltron_run( debugger, command, result, internal_dict ):
    if command:
        debugger.HandleCommand( 'process launch -i %s' % str( command ) )
        debugger.HandleCommand( 'voltron update' )
    else:
        debugger.HandleCommand( 'run' )
    time.sleep( 2 )
    debugger.HandleCommand( 'voltron update' )

def voltron_kill( debugger, command, result, internal_dict ):
    debugger.HandleCommand( 'kill' )
    debugger.HandleCommand( 'voltron update' )

def voltron_frame_select( debugger, command, result, internal_dict ):
    debugger.HandleCommand( 'frame select %d' % int( command ) )
    debugger.HandleCommand( 'voltron update' )

def voltron_list( debugger, command, result, internal_dict ):
    lineCount = 30
    if command:
        line = ( int( command ) - lineCount / 2 )
    else:
        line = 0
    debugger.HandleCommand( 'source list -c %d -l %d' % ( lineCount, line ) )
    debugger.HandleCommand( 'voltron update' )

def voltron_breakpoint( debugger, command, result, internal_dict ):
    debugger.HandleCommand( 'b %s' % command )
    debugger.HandleCommand( 'voltron update' )

def voltron_breakpoint_delete( debugger, command, result, internal_dict ):
    debugger.HandleCommand( 'breakpoint delete %s' % command )
    debugger.HandleCommand( 'voltron update' )
