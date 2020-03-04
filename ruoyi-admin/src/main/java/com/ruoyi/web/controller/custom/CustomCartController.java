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
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.CustomCart;
import com.ruoyi.system.domain.CustomCartView;
import com.ruoyi.system.domain.SysOrderView;
import com.ruoyi.system.service.ICustomCartService;
import com.ruoyi.system.service.ICustomOrderService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.tomcat.jni.Mmap;
import org.aspectj.weaver.loadtime.Aj;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.UUID;

/**
 * @program: ruoyi
 * @description:
 * @author: hesion
 * @create: 2019-12-30 10:15
 **/
@Controller
@RequestMapping("/custom/cart")
public class CustomCartController extends BaseController {

    String prefix = "custom";

    @Autowired
    ICustomCartService customCartService;

    @GetMapping()
    public String myCart(ModelMap mmap) {
        Long userId = ShiroUtils.getUserId();
        List<CustomCartView> mycart = customCartService.getMycart(userId);
        mmap.put("mycart",mycart);
        return prefix + "/myCart";
    }

    @PostMapping("/addMycart/{dId}")
    @ResponseBody
    public AjaxResult addMycart(@PathVariable String dId) {
        Long userId = ShiroUtils.getUserId();
        CustomCart hasCart = customCartService.hasAddBefore(dId, userId);
        if (hasCart == null) {
            CustomCart customCart = new CustomCart();
            customCart.setUId(userId);
            customCart.setDId(dId);
            customCart.setId(UUID.randomUUID().toString());
            customCart.setCartnum(1);
            Integer addMycart = customCartService.addMycart(customCart);
            if(addMycart == 1){
                return AjaxResult.success();
            }else {
                return AjaxResult.error("加入购物车失败,请重试");
            }
        } else {
            hasCart.setCartnum(hasCart.getCartnum()+1);
            Integer integer = customCartService.updateCart(hasCart);
            if(integer == 1){
                return AjaxResult.success();
            }else {
                return AjaxResult.error("加入购物车失败,请重试");
            }
        }
    }

    @PostMapping("/remove/{sId}")
    @ResponseBody
    public AjaxResult removeShop(@PathVariable String sId){
        Long userId = ShiroUtils.getUserId();

        int isRemove = customCartService.removeShop(sId,userId);
        if (isRemove >=1 ){
            return AjaxResult.success();
        }else {
            return AjaxResult.error("商品移除失败,请重试!");
        }

    }


}
