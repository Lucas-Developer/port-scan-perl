#!/usr/bin/perl
use IO::Socket;
 
$| = 1;
 
print "Entre com o Host : ";

chop ($target = <stdin>);
print "Porta inicial : ";
chop ($start_port = <stdin>);
print "porta final : ";
chop ($end_port = <stdin>);
 
foreach ($port = $start_port ; $port <= $end_port ; $port++) 
{
    print "\rScaneando portas $port";
     
    $socket = IO::Socket::INET->new(PeerAddr => $target , PeerPort => $port , Proto => 'tcp' , Timeout => 1);
     
    if( $socket )
    {
        print "\r = Porta $port esta Aberta.\n" ;
    }
    else
    {

    }
}
 
print "\n\nScanner finalizado $target\n";
 
exit (0)