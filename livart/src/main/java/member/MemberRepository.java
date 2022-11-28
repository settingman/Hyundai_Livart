package member;


import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MemberRepository {


    private static Map<Long,MemberDAO> store = new HashMap<>();
    private static long sequence =0L;


    private static final MemberRepository instance = new MemberRepository();

    public static MemberRepository getInstance(){
        return instance;
    }

    private MemberRepository(){

    }

    public MemberDAO save(MemberDAO member){
        member.setId(++sequence);
        store.put(member.getId(),member);
        return member;
    }

    public MemberDAO findById(Long id){
        return store.get(id);
    }

    public List<MemberDAO> findAll(){
        return new ArrayList<>(store.values());
    }

    public void clearStore(){
        store.clear();
    }

}