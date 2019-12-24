package com.ruoyi.system.domain;/**
 * ClassName: SysDrugType <br/>
 * Description: <br/>
 * date: 2019/12/24 11:46 上午<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.core.domain.BaseEntity;
import lombok.Data;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2019-12-24 11:46
 **/
@Data
public class SysDrugType extends BaseEntity {
    private  String id;
    private String typename;
}
