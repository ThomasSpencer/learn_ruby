def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(string, num=2)
    repeated_string = "#{string} " * num
  repeated_string.rstrip
end

def start_of_word(string, number)
  string[0..number-1]
end

def first_word(string)
  string.split[0]
end

def titleize(string)
noise_words = "about,after,all,also,an,and,another,any,are,as,at,be,because,been,before,being,between,both,but,by,came,can,come,could,did,do,each,for,from,get,got,has,had,he,have,her,here,him,himself,his,how,if,in,into,is,it,like,make,many,me,might,more,most,much,must,my,never,now,of,on,only,or,other,our,out,over,said,same,see,should,since,some,still,such,take,than,that,the,their,them,then,there,these,they,this,those,through,to,too,under,up,very,was,way,we,well,were,what,where,which,while,who,with,would,you,your,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,$,1,2,3,4,5,6,7,8,9,0"

not_capital_list = noise_words.split(",")

  output = string.split.each do |word|
    unless not_capital_list.include?(word)
      word.capitalize!
    end
  end
  output[0].capitalize!
  final_string = output.join(" ")
end
