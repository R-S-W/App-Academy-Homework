

fish=['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(arr)

    (0...arr.length).each do |i|   
        el = arr[i]
        if arr.all? {|a|  el.length >= a.length}
            return el
        end
    end





end

def dominant_octopus(arr)
    arr.sort {|a,b| a.length <=> b.length }
    arr.first
end

def clever_octopus(arr)
    max_idx  = -1
    maxlen = 0
    arr.each_with_index do |e,i|
        if e.length > maxlen
            maxlen = e.length
            max_idx = i
        end
    end
    arr[max_idx]
end



tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

slow_dance(str, tiles_array)
    tiles_array.each_with_index {|t,i| return i if t == str}
end 
a_tiles_hash = {"up"=>0, "right-up"=>1, "right"=>2, "right-down"=>3, "down"=>4, "left-down"=>5, "left"=>6,  "left-up"=>7}
constant_dance(str,tiles_hash)
    tiles_hash[str]

end
