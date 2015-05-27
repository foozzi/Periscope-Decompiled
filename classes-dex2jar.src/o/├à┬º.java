package o;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

final class ŧ
{
  public static final ŧ np = new ŧ(new byte[0]);
  private final byte[] bytes;
  private volatile int nq = 0;
  
  private ŧ(byte[] paramArrayOfByte)
  {
    this.bytes = paramArrayOfByte;
  }
  
  public static ŧ ˈ(String paramString)
  {
    try
    {
      paramString = new ŧ(paramString.getBytes("UTF-8"));
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new RuntimeException("UTF-8 not supported.", paramString);
    }
  }
  
  public static ŧ ˋ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
    return new ŧ(arrayOfByte);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof ŧ)) {
      return false;
    }
    Object localObject = (ŧ)paramObject;
    int j = this.bytes.length;
    if (j != ((ŧ)localObject).bytes.length) {
      return false;
    }
    paramObject = this.bytes;
    localObject = ((ŧ)localObject).bytes;
    int i = 0;
    while (i < j)
    {
      if (paramObject[i] != localObject[i]) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public int hashCode()
  {
    int i = this.nq;
    int j = i;
    if (i == 0)
    {
      byte[] arrayOfByte = this.bytes;
      int k = this.bytes.length;
      i = k;
      j = 0;
      while (j < k)
      {
        i = i * 31 + arrayOfByte[j];
        j += 1;
      }
      j = i;
      if (i == 0) {
        j = 1;
      }
      this.nq = j;
    }
    return j;
  }
  
  public int size()
  {
    return this.bytes.length;
  }
  
  public void ˊ(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    System.arraycopy(this.bytes, paramInt1, paramArrayOfByte, paramInt2, paramInt3);
  }
  
  public InputStream ﮊ()
  {
    return new ByteArrayInputStream(this.bytes);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Å§
 * JD-Core Version:    0.7.0.1
 */