#!/usr/bin/perl -w
# programa 1.6
#http://161.111.227.80/compbio/material/bioperl/node14.html por: Bruno Contreras-Moreira
#Modificado por: Daniel Pabón, email: daniel.epm12@gmail.com
use strict;
use Bio::Perl;

my @genomas= ( #COI
'KJ829539',
'KJ829540',
'KJ829543',
'KJ829541',
'KJ829542',
'KJ829553',
'KJ829556',
'KJ829555',
'KJ829554',
'KJ829552',
'KJ829546',
'KJ829550',
'KJ829549',
'KJ829548',
'KJ829547',
'KJ829551',
'KJ829544',
'KJ829545',
'KJ829538',
'KJ829558',
'KJ829557',
'KJ829563',
'KJ829564',
'KJ829559',
'KJ829560',
'KJ829562',
'KJ829561',
);

foreach my $elemento (@genomas){
  my $gi = $elemento; # identificador conocido # prueba NP_417816 con red lenta
  #my $gbfile  = $gi . '.gb';
  my $fnafile = $gi . '.fna';

  my $secuenciaGenBank = get_sequence( 'genbank', $gi );
  #write_sequence(">$gbfile", 'genbank', $secuenciaGenBank);
  write_sequence(">$fnafile", 'fasta', $secuenciaGenBank); # convierte a FASTA la secuencia

  #printf("# descargo $gbfile (%1.1g Mb)\n",(-s $gbfile) / (1024 * 1024));

  printf("# Se Descargo el genoma: $fnafile (%1.1g Mb)\n",(-s $fnafile) / (1024 * 1024));

}
