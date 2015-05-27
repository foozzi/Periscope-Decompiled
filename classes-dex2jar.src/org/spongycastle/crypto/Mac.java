package org.spongycastle.crypto;

public abstract interface Mac
{
  public abstract int doFinal(byte[] paramArrayOfByte, int paramInt);
  
  public abstract String iG();
  
  public abstract int iO();
  
  public abstract void reset();
  
  public abstract void update(byte paramByte);
  
  public abstract void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  public abstract void ˊ(CipherParameters paramCipherParameters);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.Mac
 * JD-Core Version:    0.7.0.1
 */