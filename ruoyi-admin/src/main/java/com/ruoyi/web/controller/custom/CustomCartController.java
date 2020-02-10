package com.ruoyi.web.controller.custom;/**
 * ClassName: CustomCartController <br/>
 * Description: <br/>
 * date: 2019/12/30 10:15 上午<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.SysOrderView;
import com.ruoyi.system.service.ICustomCartService;
import com.ruoyi.system.service.ICustomOrderService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2019-12-30 10:15
 **/
@Controller
@RequestMapping("/custom/cart")
public class CustomCartController extends BaseController {

    String prefix = "/custom";

    @Autowired
    ICustomCartService customCartService;

    @GetMapping()
    public String myCart(){
        Long userId = ShiroUtils.getUserId();
        customCartService.getMycart(userId);
        return prefix + "/myCart";
    }

}
