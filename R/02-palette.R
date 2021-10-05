# palette for cell lineage from viridis::inferno
# order to match 'lineage' and colour proximity reflects functionality proximity
# "Y1015" dark purple
# "Y101" mid purple
# "Y201" dark pink
# "Y202" orange
# "Y102" yellow
line_colours <- viridis::inferno(7, 
                                 begin = 0.15,
                                 end = 0.85)[c(1, 2, 4, 6, 7)]