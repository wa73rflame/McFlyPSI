Function McFly-BVE {
    $byar = $Args[0]
    $key = $Args[1]
    [byte[]] $keymap = $null
    while($key -ne 1){
        $keymap += $key
        $key = $key - 1
    }
    while($key -ne $keymap[0]){
        $keymap += $key
        $key = $key + 1
    }
    $kmc = 0
    for($i = 0; $i -lt $byar.length; $i++) {
        $wb = $byar[$i]
        $wb = $wb + $keymap[$kmc]
        if($wb -gt 255) {
            $wb = $wb - 256
        }
        $byar[$i] = $wb
        if($kmc -eq $keymap.length - 1){
            $kmc = 0
        }else{
            $kmc = $kmc + 1
        }
    }
    return $byar
}
Function McFly-BVD {
    $byar = $Args[0]
    $key = $Args[1]
    [byte[]] $keymap = $null
    while($key -ne 1){
        $keymap += $key
        $key = $key - 1
    }
    while($key -ne $keymap[0]){
        $keymap += $key
        $key = $key + 1
    }
    $kmc = 0
    for($i = 0; $i -lt $byar.length; $i++) {
        $wb = $byar[$i]
        $wb = $wb - $keymap[$kmc]
        if($wb -lt 0) {
            $wb = $wb + 256
        }
        $byar[$i] = $wb
        if($kmc -eq $keymap.length - 1){
            $kmc = 0
        }else{
            $kmc = $kmc + 1
        }
    }
    return $byar
}
