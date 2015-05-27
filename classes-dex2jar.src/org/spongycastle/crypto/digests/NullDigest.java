package org.spongycastle.crypto.digests;

import java.io.ByteArrayOutputStream;
import org.spongycastle.crypto.Digest;

public class NullDigest
  implements Digest
{
  private ByteArrayOutputStream aGG = new ByteArrayOutputStream();
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = this.aGG.toByteArray();
    System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt, arrayOfByte.length);
    reset();
    return arrayOfByte.length;
  }
  
  public String iG()
  {
    return "NULL";
  }
  
  public int iJ()
  {
    return this.aGG.size();
  }
  
  public void reset()
  {
    this.aGG.reset();
  }
  
  public void update(byte paramByte)
  {
    this.aGG.write(paramByte);
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aGG.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.digests.NullDigest
 * JD-Core Version:    0.7.0.1
 */