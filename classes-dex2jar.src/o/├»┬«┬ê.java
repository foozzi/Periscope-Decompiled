package o;

final class ﮈ
{
  public final String nn;
  private String pG;
  public final String pT;
  public final String pU;
  public final String pV;
  public final String pW;
  public final String pX;
  public final String pY;
  public final String pZ;
  public final String qa;
  public final String qb;
  public final String qc;
  
  public ﮈ(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11)
  {
    this.pT = paramString1;
    this.pU = paramString2;
    this.pV = paramString3;
    this.pW = paramString4;
    this.pX = paramString5;
    this.pY = paramString6;
    this.nn = paramString7;
    this.pZ = paramString8;
    this.qa = paramString9;
    this.qb = paramString10;
    this.qc = paramString11;
  }
  
  public String toString()
  {
    if (this.pG == null) {
      this.pG = ("appBundleId=" + this.pT + ", executionId=" + this.pU + ", installationId=" + this.pV + ", androidId=" + this.pW + ", advertisingId=" + this.pX + ", betaDeviceToken=" + this.pY + ", buildId=" + this.nn + ", osVersion=" + this.pZ + ", deviceModel=" + this.qa + ", appVersionCode=" + this.qb + ", appVersionName=" + this.qc);
    }
    return this.pG;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï®
 * JD-Core Version:    0.7.0.1
 */