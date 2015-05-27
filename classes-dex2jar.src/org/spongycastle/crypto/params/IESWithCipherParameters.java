package org.spongycastle.crypto.params;

public class IESWithCipherParameters
  extends IESParameters
{
  private int aQq;
  
  public IESWithCipherParameters(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2)
  {
    super(paramArrayOfByte1, paramArrayOfByte2, paramInt1);
    this.aQq = paramInt2;
  }
  
  public int kQ()
  {
    return this.aQq;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.IESWithCipherParameters
 * JD-Core Version:    0.7.0.1
 */