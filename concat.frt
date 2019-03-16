: get_lenght
    dup 0 
    repeat 
      swap dup c@ swap 
      1 + rot 
      1 + rot 
      0 = 
    until 
    1 - 
    swap ." str end " . cr 
    dup ." str len = " . cr ;
: copy
    swap 
    repeat 
      dup rot dup rot 
      c@ swap c! dup c@ 
      rot 1 + rot 1 + 
      swap rot 
      0 = 
    until 
    ." str end ". 
    cr 1 - ;
: concat 
	get_lenght    
	rot
	get_lenght    
	rot + heap-alloc 
	dup ." gotten addres is " . cr
	dup >r rot rot r>
	copy    
	copy 
	." str end " . cr
	; 
