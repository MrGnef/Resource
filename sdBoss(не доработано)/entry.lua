--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 198,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 

    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�
    local EntryName = "Go to sdBoss"
    SetMapEntryEventName( entry, EntryName )
    
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("�����㲥���������["..posx..","..posy.."]�����ϴ��������ߵİ��ţ����¼��ձȵ����ľ������Ļ̻̣���λ��ʿԸ��ȥһ̽��������") --֪ͨ������������������

end

function after_destroy_entry_sdBoss(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("�����㲥������Ĺ�����ս���Ѿ�������") 

end

function after_player_login_sdBoss(entry, player_name)

end

--���ڼ���������
--����ֵ��0�����������������1���ɹ����롣
function check_can_enter_sdBoss( role, copy_mgr )

end

function begin_enter_sdBoss(role, copy_mgr) 
    

		SystemNotice(role,"�޴���������������޾��ĺڰ����ȴ�����Ǹ��ڰ��ĵ�����")
		MoveCity(role, "sdBoss")
	

end 
