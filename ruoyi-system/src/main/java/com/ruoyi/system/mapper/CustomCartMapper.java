package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.CustomCart;
import com.ruoyi.system.domain.CustomCartView;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * ClassName: CustomCartMapper <br/>
 * Description: <br/>
 * date: 2020/2/16 19:45<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
@Mapper
public interface CustomCartMapper {
    @Insert("INSERT INTO custom_cart VALUE(#{c.id},#{c.uId},#{c.dId},#{c.cartnum})")
    int addMycart(@Param("c") CustomCart customCart);

    @Select("SELECT * FROM custom_cart WHERE dId=#{drugId} AND uId=#{userId}")
    CustomCart hasAddBefore(@Param("drugId") String drugId, @Param("userId") Long userId);

    @Update("UPDATE custom_cart SET cartnum = #{h.cartnum} WHERE uId=#{h.uId} AND dId=#{h.dId} ")
    Integer updateCart(@Param("h") CustomCart hasCart);

    @Select("SELECT * FROM v_custom_cart WHERE uId=#{userId}")
    List<CustomCartView> getMycart(Long userId);
}
