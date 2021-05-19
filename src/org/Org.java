package org;

public class Org {
    private String Oid;
    private String orgPassword;
    private String orgName;

    public String getOid() {
        return Oid;
    }
    public void setOid(String oid) {
        Oid = oid;
    }
    public String getOrgPassword() {
        return orgPassword;
    }
    public void setOrgPassword(String orgPassword) {
        this.orgPassword = orgPassword;
    }
    public String getOrgName() {
        return orgName;
    }
    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }

}