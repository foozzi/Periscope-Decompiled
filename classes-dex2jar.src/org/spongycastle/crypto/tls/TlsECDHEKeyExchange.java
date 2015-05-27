package org.spongycastle.crypto.tls;

import java.io.InputStream;
import java.util.Vector;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.io.TeeInputStream;

public class TlsECDHEKeyExchange
  extends TlsECDHKeyExchange
{
  protected TlsSignerCredentials aUW = null;
  
  public TlsECDHEKeyExchange(int paramInt, Vector paramVector, int[] paramArrayOfInt, short[] paramArrayOfShort1, short[] paramArrayOfShort2)
  {
    super(paramInt, paramVector, paramArrayOfInt, paramArrayOfShort1, paramArrayOfShort2);
  }
  
  public byte[] lL()
  {
    int k = -1;
    int i;
    if (this.aSF == null)
    {
      i = 23;
    }
    else
    {
      int j = 0;
      for (;;)
      {
        i = k;
        if (j >= this.aSF.length) {
          break;
        }
        i = this.aSF[j];
        if ((NamedCurve.isValid(i)) && (TlsECCUtils.ᓳ(i))) {
          break;
        }
        j += 1;
      }
    }
    Object localObject1 = null;
    if (i >= 0) {
      localObject1 = TlsECCUtils.ᒧ(i);
    } else if (Arrays.ʾ(this.aSF, 65281)) {
      localObject1 = TlsECCUtils.ᒧ(23);
    } else if (Arrays.ʾ(this.aSF, 65282)) {
      localObject1 = TlsECCUtils.ᒧ(10);
    }
    if (localObject1 == null) {
      throw new TlsFatalAlert((short)80);
    }
    Object localObject2 = TlsECCUtils.ˊ(this.aSQ.lG(), (ECDomainParameters)localObject1);
    this.aVi = ((ECPrivateKeyParameters)((AsymmetricCipherKeyPair)localObject2).iE());
    DigestInputBuffer localDigestInputBuffer = new DigestInputBuffer();
    if (i < 0) {
      TlsECCUtils.ˊ(this.aSG, (ECDomainParameters)localObject1, localDigestInputBuffer);
    } else {
      TlsECCUtils.ˏ(i, localDigestInputBuffer);
    }
    localObject1 = (ECPublicKeyParameters)((AsymmetricCipherKeyPair)localObject2).iD();
    TlsECCUtils.ˊ(this.aSG, ((ECPublicKeyParameters)localObject1).kH(), localDigestInputBuffer);
    if (TlsUtils.ᐝ(this.aSQ))
    {
      localObject1 = this.aUW.lO();
      if (localObject1 == null) {
        throw new TlsFatalAlert((short)80);
      }
      localObject2 = TlsUtils.ͺ(((SignatureAndHashAlgorithm)localObject1).mK());
    }
    else
    {
      localObject1 = null;
      localObject2 = new CombinedHash();
    }
    Object localObject3 = this.aSQ.lH();
    ((Digest)localObject2).update(((SecurityParameters)localObject3).aUz, 0, ((SecurityParameters)localObject3).aUz.length);
    ((Digest)localObject2).update(((SecurityParameters)localObject3).aUA, 0, ((SecurityParameters)localObject3).aUA.length);
    localDigestInputBuffer.ˎ((Digest)localObject2);
    localObject3 = new byte[((Digest)localObject2).iJ()];
    ((Digest)localObject2).doFinal((byte[])localObject3, 0);
    new DigitallySigned((SignatureAndHashAlgorithm)localObject1, this.aUW.ﯨ((byte[])localObject3)).encode(localDigestInputBuffer);
    return localDigestInputBuffer.toByteArray();
  }
  
  public void ˈ(InputStream paramInputStream)
  {
    Object localObject1 = this.aSQ.lH();
    SignerInputBuffer localSignerInputBuffer = new SignerInputBuffer();
    Object localObject2 = new TeeInputStream(paramInputStream, localSignerInputBuffer);
    ECDomainParameters localECDomainParameters = TlsECCUtils.ˊ(this.aSF, this.aSG, (InputStream)localObject2);
    localObject2 = TlsUtils.ٴ((InputStream)localObject2);
    paramInputStream = DigitallySigned.ˋ(this.aSQ, paramInputStream);
    localObject1 = ˊ(this.aUX, paramInputStream.mm(), (SecurityParameters)localObject1);
    localSignerInputBuffer.ˊ((Signer)localObject1);
    if (!((Signer)localObject1).ᵔ(paramInputStream.getSignature())) {
      throw new TlsFatalAlert((short)51);
    }
    this.aVj = TlsECCUtils.ˊ(TlsECCUtils.ˊ(this.aSG, localECDomainParameters, (byte[])localObject2));
  }
  
  protected Signer ˊ(TlsSigner paramTlsSigner, SignatureAndHashAlgorithm paramSignatureAndHashAlgorithm, SecurityParameters paramSecurityParameters)
  {
    paramTlsSigner = paramTlsSigner.ˊ(paramSignatureAndHashAlgorithm, this.aUZ);
    paramTlsSigner.update(paramSecurityParameters.aUz, 0, paramSecurityParameters.aUz.length);
    paramTlsSigner.update(paramSecurityParameters.aUA, 0, paramSecurityParameters.aUA.length);
    return paramTlsSigner;
  }
  
  public void ˊ(TlsCredentials paramTlsCredentials)
  {
    if (!(paramTlsCredentials instanceof TlsSignerCredentials)) {
      throw new TlsFatalAlert((short)80);
    }
    ˊ(paramTlsCredentials.lX());
    this.aUW = ((TlsSignerCredentials)paramTlsCredentials);
  }
  
  public void ˋ(CertificateRequest paramCertificateRequest)
  {
    paramCertificateRequest = paramCertificateRequest.lR();
    int i = 0;
    while (i < paramCertificateRequest.length)
    {
      switch (paramCertificateRequest[i])
      {
      default: 
        break;
      case 1: 
      case 2: 
      case 64: 
        break;
      }
      throw new TlsFatalAlert((short)47);
      i += 1;
    }
  }
  
  public void ˋ(TlsCredentials paramTlsCredentials)
  {
    if ((paramTlsCredentials instanceof TlsSignerCredentials)) {
      return;
    }
    throw new TlsFatalAlert((short)80);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsECDHEKeyExchange
 * JD-Core Version:    0.7.0.1
 */