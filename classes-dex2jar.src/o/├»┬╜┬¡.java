package o;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

public class ｭ
  implements Į<InputStream>
{
  private final byte[] bytes;
  private final String id;
  
  public ｭ(byte[] paramArrayOfByte, String paramString)
  {
    this.bytes = paramArrayOfByte;
    this.id = paramString;
  }
  
  public void cancel() {}
  
  public String getId()
  {
    return this.id;
  }
  
  public InputStream ˋ(ᔿ paramᔿ)
  {
    return new ByteArrayInputStream(this.bytes);
  }
  
  public void ב() {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½­
 * JD-Core Version:    0.7.0.1
 */