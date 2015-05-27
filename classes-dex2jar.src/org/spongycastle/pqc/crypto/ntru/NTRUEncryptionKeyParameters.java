package org.spongycastle.pqc.crypto.ntru;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;

public class NTRUEncryptionKeyParameters
  extends AsymmetricKeyParameter
{
  protected final NTRUEncryptionParameters bha;
  
  public NTRUEncryptionKeyParameters(boolean paramBoolean, NTRUEncryptionParameters paramNTRUEncryptionParameters)
  {
    super(paramBoolean);
    this.bha = paramNTRUEncryptionParameters;
  }
  
  public NTRUEncryptionParameters rz()
  {
    return this.bha;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.ntru.NTRUEncryptionKeyParameters
 * JD-Core Version:    0.7.0.1
 */