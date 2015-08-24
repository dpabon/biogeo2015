#!/usr/bin/perl -w
# programa 1.6
#http://161.111.227.80/compbio/material/bioperl/node14.html por: Bruno Contreras-Moreira
#Modificado por: Daniel Pabón, email: daniel.epm12@gmail.com
use strict;
use Bio::Perl;

my @genomas= ( #16S
'KJ829620',
'KJ829621',
'KJ829624',
'KJ829622',
'KJ829623',
'KJ829635',
'KJ829638',
'KJ829637',
'KJ829636',
'KJ829634',
'KJ829627',
'KJ829631',
'KJ829632',
'KJ829630',
'KJ829629',
'KJ829628',
'KJ829633',
'KJ829625',
'KJ829626',
'KJ829618',
'KJ829619',
'KJ829617', 
'KJ829640',
'KJ829639',
'KJ829644', 
'KJ829645',
'KJ829641',
'KJ829643',
'KJ829642',
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
