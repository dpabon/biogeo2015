#!/usr/bin/perl w 
# programa 1.6 
#http://161.111.227.80/compbio/material/bioperl/node14.html por: Bruno ContrerasMoreira 
#Modificado por: Daniel Pabón, email: daniel.epm12@gmail.com 
use strict; 
use Bio::Perl; 
my @genomas= ( #WG 
'KJ829597',
'KJ829598',
'KJ829608',
'KJ829611',
'KJ829610',
'KJ829609',
'KJ829607',
'KJ829602',
'KJ829605',
'KJ829604',
'KJ829603',
'KJ829606',
'KJ829600',
'KJ829601',
'KJ829592',
'KJ829593',
'KJ829594',
'KJ829612',
'KJ829616',
'KJ829613',
'KJ829615',
'KJ829614',
);

foreach my $elemento (@genomas){
  my $gi = $elemento; # identificador conocido # prueba NP_417816 con red lenta
  #my $gbfile  = $gi . '.gb';
  my $fnafile = $gi . '.fna';

  my $secuenciaGenBank = get_sequence( 'genbank', $gi );
  #write_sequence(">$gbfile", 'genbank', $secuenciaGenBank);
  write_sequence(">$fnafile", 'fasta', $secuenciaGenBank); # convierte a FASTA la secuencia

  #printf("# descargo $gbfile (%1.1g Mb)\n",(s $gbfile) / (1024 * 1024));

  printf("# Se Descargo el genoma: $fnafile (%1.1g Mb)\n",(-s $fnafile) / (1024 * 1024));

}
