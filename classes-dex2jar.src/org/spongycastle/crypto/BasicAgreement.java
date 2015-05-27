package org.spongycastle.crypto;

import java.math.BigInteger;

public abstract interface BasicAgreement
{
  public abstract int getFieldSize();
  
  public abstract void ˊ(CipherParameters paramCipherParameters);
  
  public abstract BigInteger ˋ(CipherParameters paramCipherParameters);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.BasicAgreement
 * JD-Core Version:    0.7.0.1
 */