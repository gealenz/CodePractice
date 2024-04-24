package com.krowemoh.pojo;


import java.util.Date;

public class Provider {

//    主键ID
    private Integer id;

//    供应商编码proCode
    private String  proCode;

//    供应商名称proName
    private String proName;

//    供应商详细描述proDesc
    private String  proDesc;

//    供应商联系人proContact
    private String proContact;

//    联系电话proPhone
    private String proPhone;

//    地址proAddress
    private String proAddress;

//    传真proFax
    private String proFax;

//    创建者userId
    private Integer userId;

//    创建时间creationDate
    private Date creationDate;

//    更新时间modifyDate
    private Date modifyDate;

//    更新者（modifyBy）
    private Integer modifyBy;

//    企业营业执照的存储路径companyLicPicPath
    private String companyLicPicPath;

//    组织机构代码证的存储路径orgCodePicPath
    private String  orgCodePicPath;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public String getProCode() {
        return proCode;
    }

    public void setProCode(String proCode) {
        this.proCode = proCode;
    }

    public String getProDesc() {
        return proDesc;
    }

    public void setProDesc(String proDesc) {
        this.proDesc = proDesc;
    }

    public String getProContact() {
        return proContact;
    }

    public void setProContact(String proContact) {
        this.proContact = proContact;
    }

    public String getProPhone() {
        return proPhone;
    }

    public void setProPhone(String proPhone) {
        this.proPhone = proPhone;
    }

    public String getProAddress() {
        return proAddress;
    }

    public void setProAddress(String proAddress) {
        this.proAddress = proAddress;
    }

    public String getProFax() {
        return proFax;
    }

    public void setProFax(String proFax) {
        this.proFax = proFax;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public Date getModifyDate() {
        return modifyDate;
    }

    public void setModifyDate(Date modifyDate) {
        this.modifyDate = modifyDate;
    }

    public Integer getModifyBy() {
        return modifyBy;
    }

    public void setModifyBy(Integer modifyBy) {
        this.modifyBy = modifyBy;
    }

    public String getCompanyLicPicPath() {
        return companyLicPicPath;
    }

    public void setCompanyLicPicPath(String companyLicPicPath) {
        this.companyLicPicPath = companyLicPicPath;
    }

    public String getOrgCodePicPath() {
        return orgCodePicPath;
    }

    public void setOrgCodePicPath(String orgCodePicPath) {
        this.orgCodePicPath = orgCodePicPath;
    }

    @Override
    public String toString() {
        return "Provider{" +
                "id=" + id +
                ", proCode='" + proCode + '\'' +
                ", proName='" + proName + '\'' +
                ", proDesc='" + proDesc + '\'' +
                ", proContact='" + proContact + '\'' +
                ", proPhoned='" + proPhone + '\'' +
                ", proAddress='" + proAddress + '\'' +
                ", proFax='" + proFax + '\'' +
                ", userId=" + userId +
                ", creationDate=" + creationDate +
                ", modifyDate=" + modifyDate +
                ", modifyBy=" + modifyBy +
                ", companyLicPicPath='" + companyLicPicPath + '\'' +
                ", orgCodePicPath='" + orgCodePicPath + '\'' +
                '}';
    }
}
