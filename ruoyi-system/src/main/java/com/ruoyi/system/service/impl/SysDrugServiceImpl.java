package com.ruoyi.system.service.impl;/**
 * ClassName: SysDrugServiceImpl <br/>
 * Description: <br/>
 * date: 2019/12/24 11:51 上午<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.system.domain.SysDrug;
import com.ruoyi.system.domain.SysDrugType;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.mapper.SysDrugMapper;
import com.ruoyi.system.service.ISysDrugService;
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
 * @create: 2019-12-24 11:51
 **/
@Service()
public class SysDrugServiceImpl implements ISysDrugService {

    @Autowired
    SysDrugMapper sysDrugMapper;
    @Override
    public List<SysDrug> selectDrugList(SysDrug sysDrug) {
        return sysDrugMapper.selectDrugList(sysDrug);
    }

    @Override
    public int saveDrug(SysDrug sysDrug) {
        return sysDrugMapper.saveDrug(sysDrug);
    }

    @Override
    public List<SysDrugType> getDrugType() {
        return sysDrugMapper.getDrugType();
    }

    @Override
    public String findImageUrl(String id) {
        return sysDrugMapper.findImageUrl(id);
    }

    @Override
    public int deleteDrugByIds(String ids) {
        String[] id = ids.split(",");
        return sysDrugMapper.deleteDrugByIds(id);
    }

    @Override
    public SysDrug findDrugById(String drugId) {
        return sysDrugMapper.findDrugById(drugId);
    }

    @Override
    public int editDrug(SysDrug sysDrug) {
        return sysDrugMapper.editDrug(sysDrug);
    }
}
