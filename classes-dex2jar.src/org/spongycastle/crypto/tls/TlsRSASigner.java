package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.digests.NullDigest;
import org.spongycastle.crypto.encodings.PKCS1Encoding;
import org.spongycastle.crypto.engines.RSABlindedEngine;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.signers.GenericSigner;
import org.spongycastle.crypto.signers.RSADigestSigner;

public class TlsRSASigner
  extends AbstractTlsSigner
{
  protected AsymmetricBlockCipher nh()
  {
    return new PKCS1Encoding(new RSABlindedEngine());
  }
  
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
    if ((paramSignatureAndHashAlgorithm != null) && (paramSignatureAndHashAlgorithm.mL() != 1)) {
      throw new IllegalStateException();
    }
    Object localObject;
    if (paramBoolean1) {
      localObject = new NullDigest();
    } else if (paramSignatureAndHashAlgorithm == null) {
      localObject = new CombinedHash();
    } else {
      localObject = TlsUtils.ͺ(paramSignatureAndHashAlgorithm.mK());
    }
    if (paramSignatureAndHashAlgorithm != null) {
      paramSignatureAndHashAlgorithm = new RSADigestSigner((Digest)localObject, TlsUtils.ι(paramSignatureAndHashAlgorithm.mK()));
    } else {
      paramSignatureAndHashAlgorithm = new GenericSigner(nh(), (Digest)localObject);
    }
    paramSignatureAndHashAlgorithm.ˊ(paramBoolean2, paramCipherParameters);
    return paramSignatureAndHashAlgorithm;
  }
  
  public boolean ˊ(SignatureAndHashAlgorithm paramSignatureAndHashAlgorithm, byte[] paramArrayOfByte1, AsymmetricKeyParameter paramAsymmetricKeyParameter, byte[] paramArrayOfByte2)
  {
    paramSignatureAndHashAlgorithm = ˊ(paramSignatureAndHashAlgorithm, true, false, paramAsymmetricKeyParameter);
    paramSignatureAndHashAlgorithm.update(paramArrayOfByte2, 0, paramArrayOfByte2.length);
    return paramSignatureAndHashAlgorithm.ᵔ(paramArrayOfByte1);
  }
  
  public byte[] ˊ(SignatureAndHashAlgorithm paramSignatureAndHashAlgorithm, AsymmetricKeyParameter paramAsymmetricKeyParameter, byte[] paramArrayOfByte)
  {
    paramSignatureAndHashAlgorithm = ˊ(paramSignatureAndHashAlgorithm, true, true, new ParametersWithRandom(paramAsymmetricKeyParameter, this.aSQ.lG()));
    paramSignatureAndHashAlgorithm.update(paramArrayOfByte, 0, paramArrayOfByte.length);
    return paramSignatureAndHashAlgorithm.iP();
  }
  
  public boolean ˎ(AsymmetricKeyParameter paramAsymmetricKeyParameter)
  {
    return ((paramAsymmetricKeyParameter instanceof RSAKeyParameters)) && (!paramAsymmetricKeyParameter.isPrivate());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsRSASigner
 * JD-Core Version:    0.7.0.1
 */