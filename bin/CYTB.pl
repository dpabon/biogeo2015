#!/usr/bin/perl w 
# programa 1.6 
#http://161.111.227.80/compbio/material/bioperl/node14.html por: Bruno ContrerasMoreira 
#Modificado por: Daniel Pabón, email: daniel.epm12@gmail.com 
use strict; 
use Bio::Perl; 
my @genomas= ( #CYTB 
'KJ829571',
'KJ829572',
'KJ829584',
'KJ829588',
'KJ829587',
'KJ829586',
'KJ829585',
'KJ829583',
'KJ829576',
'KJ829580',
'KJ829581',
'KJ829579',
'KJ829578', 
'KJ829577',
'KJ829582',
'KJ829574',
'KJ829575',
'KJ829566',
'KJ829567',
'KJ829568',
'KJ829565',
'KJ829590',
'KJ829589',
'KJ829591',
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
