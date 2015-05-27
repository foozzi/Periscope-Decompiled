package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.digests.NullDigest;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.signers.DSADigestSigner;

public abstract class TlsDSASigner
  extends AbstractTlsSigner
{
  protected abstract short mS();
  
  protected abstract DSA ʻ(short paramShort);
  
  public Signer ˊ(SignatureAndHashAlgorithm paramSignatureAndHashAlgorithm, AsymmetricKeyParameter paramAsymmetricKeyParameter)
  {
    return ˊ(paramSignatureAndHashAlgorithm, false, false, paramAsymmetricKeyParameter);
  }
  
  protected Signer ˊ(SignatureAndHashAlgorithm paramSignatureAndHashAlgorithm, boolean paramBoolean1, boolean paramBoolean2, CipherParameters paramCipherParameters)
  {
    int i;
    if (paramSignatureAndHashAlgorithm != null) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != TlsUtils.ᐝ(this.aSQ)) {
      throw new IllegalStateException();
    }
    if ((paramSignatureAndHashAlgorithm != null) && ((paramSignatureAndHashAlgorithm.mK() != 2) || (paramSignatureAndHashAlgorithm.mL() != mS()))) {
      throw new IllegalStateException();
    }
    short s;
    if (paramSignatureAndHashAlgorithm == null) {
      s = 2;
    } else {
      s = paramSignatureAndHashAlgorithm.mK();
    }
    if (paramBoolean1) {
      paramSignatureAndHashAlgorithm = new NullDigest();
    } else {
      paramSignatureAndHashAlgorithm = TlsUtils.ͺ(s);
    }
    paramSignatureAndHashAlgorithm = new DSADigestSigner(ʻ(s), paramSignatureAndHashAlgorithm);
    paramSignatureAndHashAlgorithm.ˊ(paramBoolean2, ˋ(paramBoolean2, paramCipherParameters));
    return paramSignatureAndHashAlgorithm;
  }
  
  public boolean ˊ(SignatureAndHashAlgorithm paramSignatureAndHashAlgorithm, byte[] paramArrayOfByte1, AsymmetricKeyParameter paramAsymmetricKeyParameter, byte[] paramArrayOfByte2)
  {
    paramAsymmetricKeyParameter = ˊ(paramSignatureAndHashAlgorithm, true, false, paramAsymmetricKeyParameter);
    if (paramSignatureAndHashAlgorithm == null) {
      paramAsymmetricKeyParameter.update(paramArrayOfByte2, 16, 20);
    } else {
      paramAsymmetricKeyParameter.update(paramArrayOfByte2, 0, paramArrayOfByte2.length);
    }
    return paramAsymmetricKeyParameter.ᵔ(paramArrayOfByte1);
  }
  
  public byte[] ˊ(SignatureAndHashAlgorithm paramSignatureAndHashAlgorithm, AsymmetricKeyParameter paramAsymmetricKeyParameter, byte[] paramArrayOfByte)
  {
    paramAsymmetricKeyParameter = ˊ(paramSignatureAndHashAlgorithm, true, true, new ParametersWithRandom(paramAsymmetricKeyParameter, this.aSQ.lG()));
    if (paramSignatureAndHashAlgorithm == null) {
      paramAsymmetricKeyParameter.update(paramArrayOfByte, 16, 20);
    } else {
      paramAsymmetricKeyParameter.update(paramArrayOfByte, 0, paramArrayOfByte.length);
    }
    return paramAsymmetricKeyParameter.iP();
  }
  
  protected CipherParameters ˋ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    return paramCipherParameters;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsDSASigner
 * JD-Core Version:    0.7.0.1
 */