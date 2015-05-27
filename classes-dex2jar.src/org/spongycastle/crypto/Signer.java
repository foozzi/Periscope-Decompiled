package org.spongycastle.crypto;

public abstract interface Signer
{
  public abstract byte[] iP();
  
  public abstract void update(byte paramByte);
  
  public abstract void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  public abstract void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters);
  
  public abstract boolean ᵔ(byte[] paramArrayOfByte);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.Signer
 * JD-Core Version:    0.7.0.1
 */