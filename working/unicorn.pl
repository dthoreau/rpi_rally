#!/usr/bin/env perl -w

use strict;
use Data::Dumper;
use LWP::UserAgent;

my $agent = LWP::UserAgent->new;

my $url_prefix = 'http://192.168.1.88:8080';

my $COLOURS = { 
	RED => [255,0,0],
	GREEN => [0, 255,0],
	BLUE => [0,0,255],
	BLACK=> [0,0,0],
	MAGENTA => [255,0,255],
	CYAN => [0,255,255],
	YELLOW => [255,255,0]
	};
	
sub plot_white_dot ($$) {
  my ($x, $y) = @_;
 
  plot_dot($x, $y, [255, 255, 255]);
}

sub plot_dot ($$$) {
  my ($x, $y, $col) = @_;
  
  my ($r, $g, $b) = @$col;
  
  my $url = $url_prefix.'/dot/' . join(';', ($x, $y, $r, $g, $b));

  do_url($url);
}

sub do_url($) {
  my ($url) = @_;

  my $req = HTTP::Request->new(PUT => $url);

  my $res => $agent->request($req);
 
}

sub show() {
  do_url("$url_prefix/show");
}

sub clear {
  do_url($url_prefix.'/monoframe/123456000000000000000000');
  show();
}
      
my $LEFT =  '193264C864321900';
my $RIGHT = '984C2613264C9800';    
my $UP = 	'081C366349142241';
my $DOWN =  '82442892C66C3810';
      
sub main {
	clear();

while (1) {
	do_url("$url_prefix/monoframe/880000$LEFT");
	sleep(1);
	do_url("$url_prefix/monoframe/008800$RIGHT");
	sleep(1);
	do_url("$url_prefix/monoframe/000088$UP");
	sleep(1);
	do_url("$url_prefix/monoframe/880088$DOWN");
	sleep(1);
	}
}

main();