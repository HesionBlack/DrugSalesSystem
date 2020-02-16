package com.ruoyi.system.service.impl;/**
 * ClassName: CustomCartServiceimpl <br/>
 * Description: <br/>
 * date: 2020/2/10 15:54<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.system.domain.CustomCart;
import com.ruoyi.system.domain.CustomCartView;
import com.ruoyi.system.mapper.CustomCartMapper;
import com.ruoyi.system.service.ICustomCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2020-02-10 15:54
 **/
@Service
public class CustomCartServiceimpl implements ICustomCartService {
   @Autowired
   CustomCartMapper customCartMapper;
    @Override
    public List<CustomCartView> getMycart(Long userId) {
        return customCartMapper.getMycart(userId);
    }

    @Override
    public int addMycart(CustomCart customCart) {
        return customCartMapper.addMycart(customCart);
    }

    @Override
    public CustomCart hasAddBefore(String dId,Long uId) {
        return customCartMapper.hasAddBefore(dId,uId);
    }

    @Override
    public Integer updateCart(CustomCart hasCart) {
        return customCartMapper.updateCart(hasCart);
    }
}
