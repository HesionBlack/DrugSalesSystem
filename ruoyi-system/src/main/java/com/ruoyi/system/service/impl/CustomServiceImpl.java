package com.ruoyi.system.service.impl;/**
 * ClassName: CustomServiceImpl <br/>
 * Description: <br/>
 * date: 2019/12/25 2:23 下午<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.utils.orderNumUtils.OrderCodeFactory;
import com.ruoyi.system.domain.SysDrug;
import com.ruoyi.system.domain.SysOrder;
import com.ruoyi.system.mapper.CustomMapper;
import com.ruoyi.system.service.ICustomOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2019-12-25 14:23
 **/
@Service
public class CustomServiceImpl implements ICustomOrderService {

    @Autowired
    CustomMapper customMapper;
    @Override
    public List<SysDrug> selectDrugList() {
        return customMapper.selectDrugList();
    }

    @Override
    public int createOrder(SysOrder sysOrder) {
        String orderCode = OrderCodeFactory.getOrderCode(sysOrder.getUId());
        sysOrder.setId(orderCode);
        sysOrder.setCreateTime(new Date());
        return customMapper.createOrder(sysOrder);
    }
}
