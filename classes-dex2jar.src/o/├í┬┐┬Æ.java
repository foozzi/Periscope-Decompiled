package o;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

class ῒ
{
  private final ｼ<ﮆ, String> jh = new ｼ(1000);
  
  public String ι(ﮆ paramﮆ)
  {
    Object localObject1;
    synchronized (this.jh)
    {
      localObject1 = (String)this.jh.get(paramﮆ);
    }
    if (localObject1 == null)
    {
      try
      {
        ??? = MessageDigest.getInstance("SHA-256");
        paramﮆ.ˊ((MessageDigest)???);
        ??? = ﾕ.ᐝ(((MessageDigest)???).digest());
        localObject1 = ???;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        localUnsupportedEncodingException.printStackTrace();
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        localNoSuchAlgorithmException.printStackTrace();
      }
      synchronized (this.jh)
      {
        this.jh.put(paramﮆ, localObject1);
        return localObject1;
      }
    }
    return localObject1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¿
 * JD-Core Version:    0.7.0.1
 */