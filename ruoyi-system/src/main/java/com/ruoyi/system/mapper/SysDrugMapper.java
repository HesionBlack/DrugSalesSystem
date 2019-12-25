package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysDrug;
import com.ruoyi.system.domain.SysDrugType;
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
    @Select({"<script> " +
            "SELECT * FROM sys_drug  where 1=1" +
            "<if test=\"name != null and name != ''\">" +
            "AND name LIKE \'%${name}%\'</if>" +
            "<if test=\"typeId != null and typeId != ''\"> AND typeId =#{typeId}</if>" +
            "<if test=\"params.beginTime != null and params.beginTime != ''\">" +
            "AND date_format(createTime,'%y%m%d') &gt;= date_format(#{params.beginTime},'%y%m%d')</if>" +
            "<if test=\"params.endTime != null and params.endTime != ''\">" +
            "AND date_format(createTime,'%y%m%d') &lt;= date_format(#{params.endTime},'%y%m%d')</if>" +
            "</script>"})
    @Results(id = "sys_drug",
            value = {
                    @Result(property = "createTime", column = "create_time"),
                    @Result(property = "updateTime", column = "update_time"),
                    @Result(property = "sysDrugType", column = "typeId", one = @One(select = "com.ruoyi.system.mapper.SysDrugMapper.findDrugType", fetchType = FetchType.DEFAULT))
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

    @Insert("INSERT INTO" +
            " sys_drug " +
            "VALUE(REPLACE(UUID(), '-', ''),#{dr.name},#{dr.dept},#{dr.validity},#{dr.price},#{dr.imageUrl},#{dr.typeId},#{dr.effect},#{dr.createTime},#{dr.createBy},#{dr.updateBy},#{dr.updateTime},#{dr.del_flag})")
    int saveDrug(@Param("dr") SysDrug sysDrug);
    @Select("SELECT  imageUrl  FROM sys_drug WHERE id=#{id}")
    String findImageUrl(String id);
    @Update("<script>" +
            "update sys_drug set del_flag = '1' where id in" +
            "<foreach collection=\"ids\" item=\"id\" open=\"(\" separator=\",\" close=\")\">" +
            "#{id}" +
            "</foreach> " +
            "</script>")
    int deleteDrugByIds(@Param("ids") String[] id);
}
