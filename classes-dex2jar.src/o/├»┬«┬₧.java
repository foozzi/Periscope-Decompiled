package o;

import java.security.MessageDigest;

public class ﮞ
  implements ﮆ
{
  private final String mY;
  
  public ﮞ(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException("Signature cannot be null!");
    }
    this.mY = paramString;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (ﮞ)paramObject;
    return this.mY.equals(paramObject.mY);
  }
  
  public int hashCode()
  {
    return this.mY.hashCode();
  }
  
  public String toString()
  {
    return "StringSignature{signature='" + this.mY + '\'' + '}';
  }
  
  public void ˊ(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(this.mY.getBytes("UTF-8"));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï®
 * JD-Core Version:    0.7.0.1
 */