--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,4) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("�����㲥���ݡ�������Online�������ż�⣬��ħŮ֮����["..posx..","..posy.."]λ�ø������־޴����У��������ֻС�Ķ�ܣ�������ұ���˵ͨ�������п��Ե���һ�����������ձ����硷�ĵط�������Ϣ��δ��ʵ�����йص�λע�⡣") --֪ͨ������������������

end

function after_destroy_entry_darkswamp(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("�����㲥���ݡ�������Online��������������Ϣ��ħŮ֮����["..posx..","..posy.."]λ�ø����������Ѿ�ֹͣ�����ҿ��԰��ĵ��ܴ��ˡ����Ҽ�����ע��̨�Ĺ㲥��ף����졫��") 

end

function after_player_login_darkswamp(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    ChaNotice(player_name, "�����㲥���ݡ�������Online�������ż�⣬��ħŮ֮����["..posx..","..posy.."]λ�ø������־޴����У��������ֻС�Ķ�ܣ�������ұ���˵ͨ�������п��Ե���һ�����������ձ����硷�ĵط�������Ϣ��δ��ʵ�����йص�λע�⡣") --֪ͨ������������������

end


--���ڼ���������
--����ֵ��0�����������������1���ɹ����롣
function check_can_enter_darkswamp( role, copy_mgr )
    local Cha = TurnToCha(role)
  
	if Lv(Cha) >=40 then
		
		return 1

	else
		SystemNotice(role, "������ձ������ɫ�ȼ��������40��֮��")
		return 0
	end
end


function begin_enter_darkswamp(role, copy_mgr) 

	SystemNotice(role,"��ʼ���롶���ձ����硷") 
	MoveCity(role, "���ձ�����")

end 
