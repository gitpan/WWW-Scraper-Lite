# -*- mode: cperl; tab-width: 8; indent-tabs-mode: nil; basic-offset: 2 -*-
# vim:ts=8:sw=2:et:sta:sts=2
#########
# Author:        rmp
# Last Modified: $Date: 2011-05-29 16:47:20 +0100 (Sun, 29 May 2011) $
# Id:            $Id: Build.PL 4 2011-05-29 15:47:20Z rmp $
# Source:        $Source$
# $HeadURL: svn+ssh://psyphi.net/repository/svn/www-scraper-lite/branches/prerelease-0.1/Build.PL $
#
use strict;
use warnings;
use Module::Build;
use lib qw(lib);

my $builder = Module::Build->new(
				 dist_name           => 'WWW-Scraper-Lite',
				 dist_version_from   => 'lib/WWW/Scraper/Lite.pm',
				 dist_author         => 'Roger Pettett <rmp@psyphi.net>',
				 dist_abstract       => q[Simple web scraper with XPath support],
				 license             => 'perl',
				 requires            => {
							 'English'           => '1.01',
							 'Carp'              => '1.02',
							 'Readonly'          => '1.03',
							 'HTML::TreeBuilder::XPath' => '0.12',
							},
				 recommends          => {
							},
				 build_requires      => {
							 'Test::More'              => '0.8',
							},
				 build_recommends    => {
							 'Test::Distribution'      => '2.00',
							 'Test::Perl::Critic'      => '1.01',
							},
				 sign                => 1,
				);

$builder->create_build_script();
