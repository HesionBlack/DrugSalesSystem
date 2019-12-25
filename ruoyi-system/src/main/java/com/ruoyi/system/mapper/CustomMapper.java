package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysDrug;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;

import java.util.List;

/**
 * ClassName: CustomMapper <br/>
 * Description: <br/>
 * date: 2019/12/25 2:26 下午<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
@Mapper
public interface CustomMapper {
@Select("SELECT * FROM sys_drug   WHERE del_flag='0'")
@Results(id = "sys_drug_custom",
        value = {
                @Result(property = "createTime", column = "create_time"),
                @Result(property = "updateTime", column = "update_time"),
                @Result(property = "sysDrugType", column = "typeId", one = @One(select = "com.ruoyi.system.mapper.SysDrugMapper.findDrugType", fetchType = FetchType.DEFAULT))
        })
    List<SysDrug> selectDrugList();


}
