package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;

public abstract interface TlsSigner
{
  public abstract Signer ˊ(SignatureAndHashAlgorithm paramSignatureAndHashAlgorithm, AsymmetricKeyParameter paramAsymmetricKeyParameter);
  
  public abstract void ˊ(TlsContext paramTlsContext);
  
  public abstract boolean ˊ(SignatureAndHashAlgorithm paramSignatureAndHashAlgorithm, byte[] paramArrayOfByte1, AsymmetricKeyParameter paramAsymmetricKeyParameter, byte[] paramArrayOfByte2);
  
  public abstract byte[] ˊ(AsymmetricKeyParameter paramAsymmetricKeyParameter, byte[] paramArrayOfByte);
  
  public abstract byte[] ˊ(SignatureAndHashAlgorithm paramSignatureAndHashAlgorithm, AsymmetricKeyParameter paramAsymmetricKeyParameter, byte[] paramArrayOfByte);
  
  public abstract boolean ˎ(AsymmetricKeyParameter paramAsymmetricKeyParameter);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsSigner
 * JD-Core Version:    0.7.0.1
 */