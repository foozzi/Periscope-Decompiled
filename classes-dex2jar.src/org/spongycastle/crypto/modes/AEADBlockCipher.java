package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;

public abstract interface AEADBlockCipher
{
  public abstract int doFinal(byte[] paramArrayOfByte, int paramInt);
  
  public abstract int getOutputSize(int paramInt);
  
  public abstract BlockCipher iH();
  
  public abstract void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters);
  
  public abstract int ˋ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3);
  
  public abstract int ء(int paramInt);
  
  public abstract void ᵔ(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.AEADBlockCipher
 * JD-Core Version:    0.7.0.1
 */