function config_entry(entry) 
    SetMapEntryEntiID(entry, 193) 
    SetMapEntryUnitLimit(entry, 100) 
end 
function after_create_entry(entry) 
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("�q�V�a��"..tmap_name.."���J�f�A�w�g���}�_"..map_name.."["..posx..","..posy.."]") 
end

function after_destroy_entry_garner(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("�q�V�a��"..tmap_name.."���J�f�A�w�g�����_"..map_name.."["..posx..","..posy.."]") 
end

function begin_enter_garner() 
end 
function begin_out_garner() 
end 