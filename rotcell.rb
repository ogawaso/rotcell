#! ruby

rot_cells = Array.new(5){|i| 
  Array.new(5){|j|
    ("a".ord + (i*5) + j).chr  
    }
  }



ARGV[0].chars.each do |char|
  arr = []
  is_upper = false

  rot_cells.each_with_index do |r,i|
    r.each_with_index do |c,j|
      if c == char.downcase 
        arr = [i,j]
        is_upper = !(c == char)
      end
    end
  end  

  pos = [[0,1],[1,1],[1,0],[1,-1][0,-1],[-1,-1],[-1,0],[-1,1]]
    .map { |i,j| [i+arr[0], j+arr[1]]  }
    .select {|z| z.map{|x| x>=0 && x<5 }.reduce(true){|sum,var| sum &=var } }

  moved = pos.dup

  if !is_upper
    tmp = moved.shift
    moved.push(tmp)
  else
    tmp = moved.pop
    moved.unshift(tmp)
  end


  pos.map { |x,y| rot_cells[x][y] }
    .zip(moved)
    .map { |char,m| rot_cells[m[0]][m[1]] = char }

end



__END__
/*0*/ test( "YokoHamarb", "acdfp" );    
/*1*/ test( "Ruby", "twx" );    
/*2*/ test( "ruby", "nst" );    
/*3*/ test( "PHP", "gkluv" );    
/*4*/ test( "a", "bfg" );    
/*5*/ test( "b", "acfgh" );    
/*6*/ test( "m", "ghilnqrs" );    
/*7*/ test( "mg", "bcdhilmq" );    
/*8*/ test( "Mg", "fhiklmpq" );    
/*9*/ test( "MS", "ijmnoqrt" );    
/*10*/ test( "mG", "bcdhilmq" );    
/*11*/ test( "lf", "abcghklp" );    
/*12*/ test( "paq", "lprvw" );    
/*13*/ test( "bFH", "abcfg" );    
/*14*/ test( "Agh", "abcfgklm" );    
/*15*/ test( "Msul", "pruvw" );    
/*16*/ test( "RSRX", "jorty" );    
/*17*/ test( "xTsn", "ijmos" );    
/*18*/ test( "FHwnQ", "lmorsvwx" );    
/*19*/ test( "jIDIb", "cfghilmo" );    
/*20*/ test( "rLGPq", "ilmnprvx" );    
/*21*/ test( "WRiFhd", "ceg" );    
/*22*/ test( "gkfLfh", "cfglmpqr" );    
/*23*/ test( "STydYQ", "hklmpruv" );    
/*24*/ test( "spaeAWJ", "cdehimns" );    
/*25*/ test( "xTxTXwY", "mwx" );    
/*26*/ test( "xyQMkMi", "cdejlnow" );    
/*27*/ test( "HJkxpWxA", "cdhkp" );    
/*28*/ test( "hgaGDodg", "djo" );    
/*29*/ test( "abKBmkBc", "bdfik" );    
/*30*/ test( "mCvlhnilm", "adfgikqr" );    
/*31*/ test( "StyxTYsIh", "imnostxy" );    
/*32*/ test( "HLHnhLMLC", "ahlmn" );    
/*33*/ test( "DuHmbFQysI", "ehj" );    
/*34*/ test( "cGfGCaLgCq", "acguv" );    
/*35*/ test( "OisYOrOXwq", "ilnstvwx" );    
/*36*/ test( "wMnYIukHAvO", "bdefhjmn" );    
/*37*/ test( "HCfBhKHkhDF", "abdghikn" );    
/*38*/ test( "pUPmwrHsYSH", "morsy" );    
/*39*/ test( "PnCYYWnPoUxq", "bfopv" );    
/*40*/ test( "DiojiYXowowr", "cilmnstw" );    
/*41*/ test( "HLNsiNMnbAnn", "abdkm" );