package com.ruoyi.web.controller.custom;/**
 * ClassName: CustomOrderController <br/>
 * Description: <br/>
 * date: 2019/12/25 2:16 下午<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.system.domain.SysDrug;
import com.ruoyi.system.mapper.SysDrugMapper;
import com.ruoyi.system.service.ICustomOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @program: ruoyi
 * @description: 消费者订购控制器
 * @author: hesion
 * @create: 2019-12-25 14:16
 **/
@Controller
@RequestMapping("/custom/order")
public class CustomOrderController {
    String prefix = "/custom";
    @Autowired
    ICustomOrderService customOrderService;
    @Autowired
    SysDrugMapper sysDrugMapper;

    @GetMapping()
    public String order(ModelMap mmap) {
        List<SysDrug> sysDrugs = customOrderService.selectDrugList();
        mmap.put("drugs", sysDrugs);
        return prefix + "/salePage";
    }
}
