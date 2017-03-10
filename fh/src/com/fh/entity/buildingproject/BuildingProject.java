package com.fh.entity.buildingproject;

import java.math.BigDecimal;
import java.util.Date;

public class BuildingProject {
    private Integer buildingProjectId;

    private String buildingProjectName;

    private Integer provinceId;

    private Integer cityId;

    private Integer districtId;

    private Integer plateId;

    private String provinceName;

    private String cityName;

    private String districtName;

    private String plateName;

    private String address;

    private String tags;

    private BigDecimal footprint;

    private BigDecimal floorArea;

    private BigDecimal volumeRatio;

    private BigDecimal greeningRatio;

    private Integer houseTotal;

    private Integer parkingTotalUg;

    private Integer parkingTotalLg;

    private BigDecimal price;

    private Date createTime;

    private Integer operatorId;

    private String operatorName;

    private Integer merchantId;

    private String merchantName;

    private Integer deptId;

    private Integer modifyOperatorId;

    private String modifyOperatorName;

    private Date modifyTime;

    private Short status;

    private Short delFlag;

    private String col1;

    private String col2;

    private String col3;

    private String col4;

    private String col5;

    private String fingerprint;

    private String biref;

    public Integer getBuildingProjectId() {
        return buildingProjectId;
    }

    public void setBuildingProjectId(Integer buildingProjectId) {
        this.buildingProjectId = buildingProjectId;
    }

    public String getBuildingProjectName() {
        return buildingProjectName;
    }

    public void setBuildingProjectName(String buildingProjectName) {
        this.buildingProjectName = buildingProjectName == null ? null : buildingProjectName.trim();
    }

    public Integer getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(Integer provinceId) {
        this.provinceId = provinceId;
    }

    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    public Integer getDistrictId() {
        return districtId;
    }

    public void setDistrictId(Integer districtId) {
        this.districtId = districtId;
    }

    public Integer getPlateId() {
        return plateId;
    }

    public void setPlateId(Integer plateId) {
        this.plateId = plateId;
    }

    public String getProvinceName() {
        return provinceName;
    }

    public void setProvinceName(String provinceName) {
        this.provinceName = provinceName == null ? null : provinceName.trim();
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName == null ? null : cityName.trim();
    }

    public String getDistrictName() {
        return districtName;
    }

    public void setDistrictName(String districtName) {
        this.districtName = districtName == null ? null : districtName.trim();
    }

    public String getPlateName() {
        return plateName;
    }

    public void setPlateName(String plateName) {
        this.plateName = plateName == null ? null : plateName.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags == null ? null : tags.trim();
    }

    public BigDecimal getFootprint() {
        return footprint;
    }

    public void setFootprint(BigDecimal footprint) {
        this.footprint = footprint;
    }

    public BigDecimal getFloorArea() {
        return floorArea;
    }

    public void setFloorArea(BigDecimal floorArea) {
        this.floorArea = floorArea;
    }

    public BigDecimal getVolumeRatio() {
        return volumeRatio;
    }

    public void setVolumeRatio(BigDecimal volumeRatio) {
        this.volumeRatio = volumeRatio;
    }

    public BigDecimal getGreeningRatio() {
        return greeningRatio;
    }

    public void setGreeningRatio(BigDecimal greeningRatio) {
        this.greeningRatio = greeningRatio;
    }

    public Integer getHouseTotal() {
        return houseTotal;
    }

    public void setHouseTotal(Integer houseTotal) {
        this.houseTotal = houseTotal;
    }

    public Integer getParkingTotalUg() {
        return parkingTotalUg;
    }

    public void setParkingTotalUg(Integer parkingTotalUg) {
        this.parkingTotalUg = parkingTotalUg;
    }

    public Integer getParkingTotalLg() {
        return parkingTotalLg;
    }

    public void setParkingTotalLg(Integer parkingTotalLg) {
        this.parkingTotalLg = parkingTotalLg;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getOperatorId() {
        return operatorId;
    }

    public void setOperatorId(Integer operatorId) {
        this.operatorId = operatorId;
    }

    public String getOperatorName() {
        return operatorName;
    }

    public void setOperatorName(String operatorName) {
        this.operatorName = operatorName == null ? null : operatorName.trim();
    }

    public Integer getMerchantId() {
        return merchantId;
    }

    public void setMerchantId(Integer merchantId) {
        this.merchantId = merchantId;
    }

    public String getMerchantName() {
        return merchantName;
    }

    public void setMerchantName(String merchantName) {
        this.merchantName = merchantName == null ? null : merchantName.trim();
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public Integer getModifyOperatorId() {
        return modifyOperatorId;
    }

    public void setModifyOperatorId(Integer modifyOperatorId) {
        this.modifyOperatorId = modifyOperatorId;
    }

    public String getModifyOperatorName() {
        return modifyOperatorName;
    }

    public void setModifyOperatorName(String modifyOperatorName) {
        this.modifyOperatorName = modifyOperatorName == null ? null : modifyOperatorName.trim();
    }

    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }

    public Short getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(Short delFlag) {
        this.delFlag = delFlag;
    }

    public String getCol1() {
        return col1;
    }

    public void setCol1(String col1) {
        this.col1 = col1 == null ? null : col1.trim();
    }

    public String getCol2() {
        return col2;
    }

    public void setCol2(String col2) {
        this.col2 = col2 == null ? null : col2.trim();
    }

    public String getCol3() {
        return col3;
    }

    public void setCol3(String col3) {
        this.col3 = col3 == null ? null : col3.trim();
    }

    public String getCol4() {
        return col4;
    }

    public void setCol4(String col4) {
        this.col4 = col4 == null ? null : col4.trim();
    }

    public String getCol5() {
        return col5;
    }

    public void setCol5(String col5) {
        this.col5 = col5 == null ? null : col5.trim();
    }

    public String getFingerprint() {
        return fingerprint;
    }

    public void setFingerprint(String fingerprint) {
        this.fingerprint = fingerprint == null ? null : fingerprint.trim();
    }

    public String getBiref() {
        return biref;
    }

    public void setBiref(String biref) {
        this.biref = biref == null ? null : biref.trim();
    }
}