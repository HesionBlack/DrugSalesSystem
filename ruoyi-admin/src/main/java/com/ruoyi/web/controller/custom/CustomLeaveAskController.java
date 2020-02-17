package com.ruoyi.web.controller.custom;/**
 * ClassName: CustomLeaveAskController <br/>
 * Description: <br/>
 * date: 2020/2/17 14:30<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.CustomLeaveMsg;
import com.ruoyi.system.service.CustomLeaveMsgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2020-02-17 14:30
 **/
@Controller
@RequestMapping("custom/leaveAsk")
public class CustomLeaveAskController extends BaseController {
    String prefix = "/custom";

    @Autowired
    CustomLeaveMsgService customLeaveMsgService;
    @GetMapping("{dId}")
    public String leaveAskPage(@PathVariable String dId, ModelMap mmap){
        mmap.put("dId",dId);
        return prefix+"/leave";
    }

    @PostMapping("leave")
    @ResponseBody
    private AjaxResult leaveMsg(CustomLeaveMsg customLeaveMsg){
        Long userId = ShiroUtils.getUserId();
        customLeaveMsg.setUId(userId);
        try {
            return toAjax(customLeaveMsgService.leave(customLeaveMsg));
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }
}
