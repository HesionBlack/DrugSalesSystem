package com.ruoyi.web.controller.system;/**
 * ClassName: SystemDrugController <br/>
 * Description: <br/>
 * date: 2019/12/24 11:10 上午<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.config.Global;
import com.ruoyi.common.config.ServerConfig;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.SysDrug;
import com.ruoyi.system.service.ISysDrugService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * @program: ruoyi
 * @description:
 * @author: hesion
 * @create: 2019-12-24 11:10
 **/
@Controller
@RequestMapping("/system/drug")
public class SystemDrugController extends BaseController {

    String prefix = "/system/drug";
    @Autowired
    private ServerConfig serverConfig;
    @Autowired
    ISysDrugService sysDrugService;

    @GetMapping("")
    public String drug(SysDrug sysDrug) {

        return prefix + "/drug";
    }

    @RequiresPermissions("system:drug:view")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo drugList(SysDrug sysDrug) {
        startPage();
        List<SysDrug> list = sysDrugService.selectDrugList(sysDrug);
        return getDataTable(list);
    }

    /**
     * 展示图片
     */
    @GetMapping("/showImage/{id}")
    public String authDataScope(@PathVariable("id") String id, ModelMap mmap) {
        mmap.put("imageUrl", sysDrugService.findImageUrl(id));
        return prefix + "/showImage";
    }

    /**
     * 药物增加页面跳转接口
     */
    @GetMapping("/add")
    @RequiresPermissions("system:drug:add")
    public String add(ModelMap mmap) {
        mmap.put("types", sysDrugService.getDrugType());
        return prefix + "/add";
    }

    /**
        *@Author hst
        *@Description //TODO 药物新增页面请求接口
        *@Date 2:01 下午 2019/12/25
        *@Param [file, sysDrug]
        * @return com.ruoyi.common.core.domain.AjaxResult
        **/
    @RequiresPermissions("system:drug:add")
    @Log(title = "药物管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@RequestParam("file") MultipartFile file, @Validated SysDrug sysDrug) throws IOException {
        // 上传文件路径
        String filePath = Global.getUploadPath();
        // 上传并返回新文件名称
        String fileName = FileUploadUtils.upload(filePath, file);
        String urlBase = serverConfig.getUrl() + fileName;
        String url = urlBase.substring(urlBase.indexOf("/p"));
        sysDrug.setCreateBy(ShiroUtils.getLoginName());
        sysDrug.setCreateTime(new Date());
        sysDrug.setImageUrl(url);
        sysDrug.setDel_flag("0");

        int result = sysDrugService.saveDrug(sysDrug);
        if (result > 0) {
            return success();
        }
        return error();
    }


    /**
        *@Author hst
        *@Description //TODO 药品信息删除接
        *@Date 2:01 下午 2019/12/25
        *@Param [ids]
        * @return com.ruoyi.common.core.domain.AjaxResult
        **/
    @RequiresPermissions("system:drug:remove")
    @Log(title = "药品管理", businessType = BusinessType.INSERT)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        try {
            return toAjax(sysDrugService.deleteDrugByIds(ids));
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }

    /**
     * 修改药物信息页面跳转接口
     */
    @GetMapping("/edit/{drugId}")
    public String edit(@PathVariable("drugId") String drugId, ModelMap mmap) {
        mmap.put("drugs", sysDrugService.findDrugById(drugId));
        mmap.put("types", sysDrugService.getDrugType());
        return prefix + "/edit";
    }

    /**
        *@Author hst
        *@Description //TODO 修改药品信息页面数据提交接
        *@Date 2:01 下午 2019/12/25
        *@Param [file, sysDrug]
        * @return com.ruoyi.common.core.domain.AjaxResult
        **/
    @RequiresPermissions("system:drug:edit")
    @Log(title = "药品管理", businessType = BusinessType.INSERT)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@RequestParam("file") MultipartFile file, @Validated SysDrug sysDrug) throws IOException {
        // 上传文件路径
        String filePath = Global.getUploadPath();
        // 上传并返回新文件名称
        String fileName = FileUploadUtils.upload(filePath, file);
        String urlBase = serverConfig.getUrl() + fileName;
        String url = urlBase.substring(urlBase.indexOf('/'));
        sysDrug.setCreateBy(ShiroUtils.getLoginName());
        sysDrug.setCreateTime(new Date());
        sysDrug.setImageUrl(url);
        sysDrug.setDel_flag("0");
        sysDrug.setUpdateBy(ShiroUtils.getLoginName());
        sysDrug.setUpdateTime(new Date());
        int result = sysDrugService.editDrug(sysDrug);
        if (result > 0) {
            return success();
        }
        return error();
    }
}
