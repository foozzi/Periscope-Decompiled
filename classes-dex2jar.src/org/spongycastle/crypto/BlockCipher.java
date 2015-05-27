package org.spongycastle.crypto;

public abstract interface BlockCipher
{
  public abstract int getBlockSize();
  
  public abstract String iG();
  
  public abstract void reset();
  
  public abstract int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2);
  
  public abstract void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.BlockCipher
 * JD-Core Version:    0.7.0.1
 */