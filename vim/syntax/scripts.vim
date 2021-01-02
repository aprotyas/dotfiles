
" " Spice netlists and text listings
 elseif getline(1) =~ 'spice\>' || getline("$") =~ '^\.end'
   so <sfile>:p:h/spice.vim

