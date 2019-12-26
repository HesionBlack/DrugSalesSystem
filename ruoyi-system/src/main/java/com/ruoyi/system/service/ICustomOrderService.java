package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysDrug;
import com.ruoyi.system.domain.SysOrder;

import java.util.List;

/**
 * ClassName: ICustomOrderService <br/>
 * Description: <br/>
 * date: 2019/12/25 2:22 下午<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
public interface ICustomOrderService {
    List<SysDrug> selectDrugList();

    int createOrder(SysOrder sysOrder);
}
