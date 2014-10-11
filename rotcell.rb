#! ruby
require "pry"

def solver (inputdata, aa)
  rot_cells = Array.new(5){|i| 
    Array.new(5){|j|
      ("a".ord + (i*5) + j).chr  
      }
    }


  moved = []
  inputdata.chars.each do |char|
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

  # binding.pry 

    pos = [[0,1],[1,1],[1,0],[1,-1],[0,-1],[-1,-1],[-1,0],[-1,1]]
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

  ans = moved.map{|i,j| rot_cells[i][j] }.sort * ""
  # p ans
  p ans == aa
end


solver( "YokoHamarb", "acdfp" );    
solver( "Ruby", "twx" );    
solver( "ruby", "nst" );    
solver( "PHP", "gkluv" );    
solver( "a", "bfg" );    
solver( "b", "acfgh" );    
solver( "m", "ghilnqrs" );    
solver( "mg", "bcdhilmq" );    
solver( "Mg", "fhiklmpq" );    
solver( "MS", "ijmnoqrt" );    
solver( "mG", "bcdhilmq" );    
solver( "lf", "abcghklp" );    
solver( "paq", "lprvw" );    
solver( "bFH", "abcfg" );    
solver( "Agh", "abcfgklm" );    
solver( "Msul", "pruvw" );    
solver( "RSRX", "jorty" );    
solver( "xTsn", "ijmos" );    
solver( "FHwnQ", "lmorsvwx" );    
solver( "jIDIb", "cfghilmo" );    
solver( "rLGPq", "ilmnprvx" );    
solver( "WRiFhd", "ceg" );    
solver( "gkfLfh", "cfglmpqr" );    
solver( "STydYQ", "hklmpruv" );    
solver( "spaeAWJ", "cdehimns" );    
solver( "xTxTXwY", "mwx" );    
solver( "xyQMkMi", "cdejlnow" );    
solver( "HJkxpWxA", "cdhkp" );    
solver( "hgaGDodg", "djo" );    
solver( "abKBmkBc", "bdfik" );    
solver( "mCvlhnilm", "adfgikqr" );    
solver( "StyxTYsIh", "imnostxy" );    
solver( "HLHnhLMLC", "ahlmn" );    
solver( "DuHmbFQysI", "ehj" );    
solver( "cGfGCaLgCq", "acguv" );    
solver( "OisYOrOXwq", "ilnstvwx" );    
solver( "wMnYIukHAvO", "bdefhjmn" );    
solver( "HCfBhKHkhDF", "abdghikn" );    
solver( "pUPmwrHsYSH", "morsy" );    
solver( "PnCYYWnPoUxq", "bfopv" );    
solver( "DiojiYXowowr", "cilmnstw" );    
solver( "HLNsiNMnbAnn", "abdkm" );