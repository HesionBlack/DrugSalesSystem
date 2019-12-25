package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysDrug;
import com.ruoyi.system.domain.SysDrugType;
import com.ruoyi.system.domain.SysUser;

import java.util.List;

/**
 * ClassName: ISysDrugService <br/>
 * Description: <br/>
 * date: 2019/12/24 11:49 上午<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
public interface ISysDrugService {
    List<SysDrug> selectDrugList(SysDrug sysDrug);

    int saveDrug(SysDrug sysDrug);

    List<SysDrugType> getDrugType();

    String findImageUrl(String id);

    int deleteDrugByIds(String ids);

    SysDrug findDrugById(String drugId);

    int editDrug(SysDrug sysDrug);
}
