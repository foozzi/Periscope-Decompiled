package org.spongycastle.util.io.pem;

public class PemHeader
{
  private String name;
  private String value;
  
  private boolean ˡ(String paramString1, String paramString2)
  {
    if (paramString1 == paramString2) {
      return true;
    }
    if ((paramString1 == null) || (paramString2 == null)) {
      return false;
    }
    return paramString1.equals(paramString2);
  }
  
  private int Ї(String paramString)
  {
    if (paramString == null) {
      return 1;
    }
    return paramString.hashCode();
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof PemHeader)) {
      return false;
    }
    paramObject = (PemHeader)paramObject;
    return (paramObject == this) || ((ˡ(this.name, paramObject.name)) && (ˡ(this.value, paramObject.value)));
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getValue()
  {
    return this.value;
  }
  
  public int hashCode()
  {
    return Ї(this.name) + Ї(this.value) * 31;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.io.pem.PemHeader
 * JD-Core Version:    0.7.0.1
 */