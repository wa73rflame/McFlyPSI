Function McFly-ByDec {
    $binFile = $args[0]
    $key = $args[1]
    for ($i = 0; $i -lt $binFile.Lenght; $i++){
        if ($binFile[$i] -ge $key){
            $binFile[$i] = $binFile[$i] - $key
        }else {
            $binFile[$i] = (255 + $binFile[$i]) - $key
        }
    }
}
