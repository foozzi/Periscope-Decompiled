package o;

public class nz
{
  @go("event_namespace")
  private final nw RN;
  @go("ts")
  private final String RO;
  @go("format_version")
  private final String RP;
  @go("_category_")
  private final String category;
  
  public nz(String paramString, nw paramnw, long paramLong)
  {
    this.category = paramString;
    this.RN = paramnw;
    this.RO = String.valueOf(paramLong);
    this.RP = "2";
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (nz)paramObject;
    if (this.category != null ? !this.category.equals(paramObject.category) : paramObject.category != null) {
      return false;
    }
    if (this.RN != null ? !this.RN.equals(paramObject.RN) : paramObject.RN != null) {
      return false;
    }
    if (this.RP != null ? !this.RP.equals(paramObject.RP) : paramObject.RP != null) {
      return false;
    }
    return this.RO != null ? this.RO.equals(paramObject.RO) : paramObject.RO == null;
  }
  
  public int hashCode()
  {
    int i;
    if (this.RN != null) {
      i = this.RN.hashCode();
    } else {
      i = 0;
    }
    int j;
    if (this.RO != null) {
      j = this.RO.hashCode();
    } else {
      j = 0;
    }
    int k;
    if (this.RP != null) {
      k = this.RP.hashCode();
    } else {
      k = 0;
    }
    int m;
    if (this.category != null) {
      m = this.category.hashCode();
    } else {
      m = 0;
    }
    return ((i * 31 + j) * 31 + k) * 31 + m;
  }
  
  public String toString()
  {
    return "event_namespace=" + this.RN + ", ts=" + this.RO + ", format_version=" + this.RP + ", _category_=" + this.category;
  }
  
  public static class if
    implements rt<nz>
  {
    private final fl gson;
    
    public if(fl paramfl)
    {
      this.gson = paramfl;
    }
    
    public byte[] ˋ(nz paramnz)
    {
      return this.gson.ᴸ(paramnz).getBytes("UTF-8");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.nz
 * JD-Core Version:    0.7.0.1
 */