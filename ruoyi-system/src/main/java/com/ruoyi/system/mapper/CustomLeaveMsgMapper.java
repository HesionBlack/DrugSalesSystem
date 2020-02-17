package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.CustomLeaveMsg;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * ClassName: CustomLeaveMsgMapper <br/>
 * Description: <br/>
 * date: 2020/2/17 15:17<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
@Mapper
public interface CustomLeaveMsgMapper {
    @Insert("INSERT INTO" +
            " custom_leavemsg " +
            "VALUE(REPLACE(UUID(), '-', ''),#{m.uId},#{m.dId},#{m.msg},#{m.createTime},#{m.createBy},#{m.replayStatu})")
    int leave(@Param("m") CustomLeaveMsg customLeaveMsg);
}
