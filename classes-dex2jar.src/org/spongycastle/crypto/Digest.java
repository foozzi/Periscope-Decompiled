package org.spongycastle.crypto;

public abstract interface Digest
{
  public abstract int doFinal(byte[] paramArrayOfByte, int paramInt);
  
  public abstract String iG();
  
  public abstract int iJ();
  
  public abstract void reset();
  
  public abstract void update(byte paramByte);
  
  public abstract void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.Digest
 * JD-Core Version:    0.7.0.1
 */