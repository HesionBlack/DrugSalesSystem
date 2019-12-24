package com.ruoyi.system.domain;/**
 * ClassName: SysDrug <br/>
 * Description: <br/>
 * date: 2019/12/24 11:14 上午<br/>
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
 * @create: 2019-12-24 11:14
 **/
@Data
public class SysDrug extends BaseEntity {
  private String id;
  private String name;
  private String dept;
  private String validity;
  private Float price;
  private String imageUrl;
  private String typeId;
  private SysDrugType sysDrugType;
  private String effect;
  private String del_flag;
}
