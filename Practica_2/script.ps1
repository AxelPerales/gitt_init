get-childitem | format-table | out-file -filepath listado.txt
select-string "Documentos" listado.txt | out-file -filepath resultados.txt
clear-host
get-content resultado.txt
