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

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getDept() {
    return dept;
  }

  public void setDept(String dept) {
    this.dept = dept;
  }

  public String getValidity() {
    return validity;
  }

  public void setValidity(String validity) {
    this.validity = validity;
  }

  public Float getPrice() {
    return price;
  }

  public void setPrice(Float price) {
    this.price = price;
  }

  public String getImageUrl() {
    return imageUrl;
  }

  public void setImageUrl(String imageUrl) {
    this.imageUrl = imageUrl;
  }

  public String getTypeId() {
    return typeId;
  }

  public void setTypeId(String typeId) {
    this.typeId = typeId;
  }

  public SysDrugType getSysDrugType() {
    return sysDrugType;
  }

  public void setSysDrugType(SysDrugType sysDrugType) {
    this.sysDrugType = sysDrugType;
  }

  public String getEffect() {
    return effect;
  }

  public void setEffect(String effect) {
    this.effect = effect;
  }

  public String getDel_flag() {
    return del_flag;
  }

  public void setDel_flag(String del_flag) {
    this.del_flag = del_flag;
  }

  @Override
  public String toString() {
    return "SysDrug{" +
            "id='" + id + '\'' +
            ", name='" + name + '\'' +
            ", dept='" + dept + '\'' +
            ", validity='" + validity + '\'' +
            ", price=" + price +
            ", imageUrl='" + imageUrl + '\'' +
            ", typeId='" + typeId + '\'' +
            ", sysDrugType=" + sysDrugType +
            ", effect='" + effect + '\'' +
            ", del_flag='" + del_flag + '\'' +
            '}';
  }
}
