package o;

public class nw
{
  @go("section")
  public final String RA;
  @go("component")
  public final String RB;
  @go("element")
  public final String RC;
  @go("action")
  public final String RD;
  @go("client")
  public final String Ry;
  @go("page")
  public final String Rz;
  
  public nw(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    this.Ry = paramString1;
    this.Rz = paramString2;
    this.RA = paramString3;
    this.RB = paramString4;
    this.RC = paramString5;
    this.RD = paramString6;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (nw)paramObject;
    if (this.RD != null ? !this.RD.equals(paramObject.RD) : paramObject.RD != null) {
      return false;
    }
    if (this.Ry != null ? !this.Ry.equals(paramObject.Ry) : paramObject.Ry != null) {
      return false;
    }
    if (this.RB != null ? !this.RB.equals(paramObject.RB) : paramObject.RB != null) {
      return false;
    }
    if (this.RC != null ? !this.RC.equals(paramObject.RC) : paramObject.RC != null) {
      return false;
    }
    if (this.Rz != null ? !this.Rz.equals(paramObject.Rz) : paramObject.Rz != null) {
      return false;
    }
    return this.RA != null ? this.RA.equals(paramObject.RA) : paramObject.RA == null;
  }
  
  public int hashCode()
  {
    int i;
    if (this.Ry != null) {
      i = this.Ry.hashCode();
    } else {
      i = 0;
    }
    int j;
    if (this.Rz != null) {
      j = this.Rz.hashCode();
    } else {
      j = 0;
    }
    int k;
    if (this.RA != null) {
      k = this.RA.hashCode();
    } else {
      k = 0;
    }
    int m;
    if (this.RB != null) {
      m = this.RB.hashCode();
    } else {
      m = 0;
    }
    int n;
    if (this.RC != null) {
      n = this.RC.hashCode();
    } else {
      n = 0;
    }
    int i1;
    if (this.RD != null) {
      i1 = this.RD.hashCode();
    } else {
      i1 = 0;
    }
    return ((((i * 31 + j) * 31 + k) * 31 + m) * 31 + n) * 31 + i1;
  }
  
  public String toString()
  {
    return "client=" + this.Ry + ", page=" + this.Rz + ", section=" + this.RA + ", component=" + this.RB + ", element=" + this.RC + ", action=" + this.RD;
  }
  
  public static class if
  {
    private String RA;
    private String RB;
    private String RC;
    private String RD;
    private String Ry;
    private String Rz;
    
    public nw bU()
    {
      return new nw(this.Ry, this.Rz, this.RA, this.RB, this.RC, this.RD);
    }
    
    public if וֹ(String paramString)
    {
      this.Ry = paramString;
      return this;
    }
    
    public if ﹲ(String paramString)
    {
      this.Rz = paramString;
      return this;
    }
    
    public if ﹷ(String paramString)
    {
      this.RA = paramString;
      return this;
    }
    
    public if ﹻ(String paramString)
    {
      this.RB = paramString;
      return this;
    }
    
    public if ﹼ(String paramString)
    {
      this.RC = paramString;
      return this;
    }
    
    public if ﺑ(String paramString)
    {
      this.RD = paramString;
      return this;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.nw
 * JD-Core Version:    0.7.0.1
 */