package o;

import java.security.MessageDigest;

class ڐ
  implements ﮆ
{
  private final ﮆ ec;
  private final String id;
  
  public ڐ(String paramString, ﮆ paramﮆ)
  {
    this.id = paramString;
    this.ec = paramﮆ;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (ڐ)paramObject;
    if (!this.id.equals(paramObject.id)) {
      return false;
    }
    return this.ec.equals(paramObject.ec);
  }
  
  public int hashCode()
  {
    return this.id.hashCode() * 31 + this.ec.hashCode();
  }
  
  public void ˊ(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(this.id.getBytes("UTF-8"));
    this.ec.ˊ(paramMessageDigest);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ú
 * JD-Core Version:    0.7.0.1
 */