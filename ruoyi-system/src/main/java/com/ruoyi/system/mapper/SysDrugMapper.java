package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysDrug;
import com.ruoyi.system.domain.SysDrugType;
import com.ruoyi.system.domain.SysUser;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;

import java.util.List;

/**
 * ClassName: SysDrugMapper <br/>
 * Description: <br/>
 * date: 2019/12/24 11:52 上午<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
@Mapper
public interface SysDrugMapper {
    @Select("SELECT * FROM sys_drug")
    @Results(id = "sys_drug",
            value = {
                    @Result(property = "createTime", column = "create_time"),
                    @Result(property = "updateTime", column = "update_time"),
                    @Result(property = "sysDrugType",column = "typeId",one = @One(select = "com.ruoyi.system.mapper.SysDrugMapper.findDrugType",fetchType = FetchType.DEFAULT))
            })
    List<SysDrug> selectDrugList(SysDrug sysDrug);
    @Select("SELECT * FROM sys_drug_type WHERE id=#{typeId}")
    @Results(id = "sys_drug_type_id",
            value = {
                    @Result(property = "createTime", column = "create_time"),
                    @Result(property = "updateTime", column = "update_time"),
            })
    SysDrugType findDrugType(String typeId);
    @Select("SELECT * FROM sys_drug_type")
    @Results(id = "sys_drug_type",
            value = {
                    @Result(property = "createTime", column = "create_time"),
                    @Result(property = "updateTime", column = "update_time"),
            })
    List<SysDrugType> getDrugType();

}
