# -*- mode: cperl; tab-width: 8; indent-tabs-mode: nil; basic-offset: 2 -*-
# vim:ts=8:sw=2:et:sta:sts=2
#########
# Author:        rmp
# Last Modified: $Date: 2011-05-29 16:47:20 +0100 (Sun, 29 May 2011) $
# Id:            $Id: 00-pod.t 4 2011-05-29 15:47:20Z rmp $
# Source:        $Source$
# $HeadURL: svn+ssh://psyphi.net/repository/svn/www-scraper-lite/branches/prerelease-0.1/t/00-pod.t $
#
use strict;
use warnings;
use Test::More;

our $VERSION = do { my @r = (q$Revision: 4 $ =~ /\d+/mxg); sprintf '%d.'.'%03d' x $#r, @r };

eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;
all_pod_files_ok();
