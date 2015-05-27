package org.spongycastle.crypto.tls;

import java.io.InputStream;
import java.util.Vector;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.util.io.TeeInputStream;

public class TlsDHEKeyExchange
  extends TlsDHKeyExchange
{
  protected TlsSignerCredentials aUW = null;
  
  public TlsDHEKeyExchange(int paramInt, Vector paramVector, DHParameters paramDHParameters)
  {
    super(paramInt, paramVector, paramDHParameters);
  }
  
  public byte[] lL()
  {
    if (this.aUY == null) {
      throw new TlsFatalAlert((short)80);
    }
    DigestInputBuffer localDigestInputBuffer = new DigestInputBuffer();
    this.aVd = TlsDHUtils.ˋ(this.aSQ.lG(), this.aUY, localDigestInputBuffer);
    SignatureAndHashAlgorithm localSignatureAndHashAlgorithm;
    Object localObject1;
    if (TlsUtils.ᐝ(this.aSQ))
    {
      localSignatureAndHashAlgorithm = this.aUW.lO();
      if (localSignatureAndHashAlgorithm == null) {
        throw new TlsFatalAlert((short)80);
      }
      localObject1 = TlsUtils.ͺ(localSignatureAndHashAlgorithm.mK());
    }
    else
    {
      localSignatureAndHashAlgorithm = null;
      localObject1 = new CombinedHash();
    }
    Object localObject2 = this.aSQ.lH();
    ((Digest)localObject1).update(((SecurityParameters)localObject2).aUz, 0, ((SecurityParameters)localObject2).aUz.length);
    ((Digest)localObject1).update(((SecurityParameters)localObject2).aUA, 0, ((SecurityParameters)localObject2).aUA.length);
    localDigestInputBuffer.ˎ((Digest)localObject1);
    localObject2 = new byte[((Digest)localObject1).iJ()];
    ((Digest)localObject1).doFinal((byte[])localObject2, 0);
    new DigitallySigned(localSignatureAndHashAlgorithm, this.aUW.ﯨ((byte[])localObject2)).encode(localDigestInputBuffer);
    return localDigestInputBuffer.toByteArray();
  }
  
  public void ˈ(InputStream paramInputStream)
  {
    Object localObject = this.aSQ.lH();
    SignerInputBuffer localSignerInputBuffer = new SignerInputBuffer();
    ServerDHParams localServerDHParams = ServerDHParams.ـ(new TeeInputStream(paramInputStream, localSignerInputBuffer));
    paramInputStream = DigitallySigned.ˋ(this.aSQ, paramInputStream);
    localObject = ˊ(this.aUX, paramInputStream.mm(), (SecurityParameters)localObject);
    localSignerInputBuffer.ˊ((Signer)localObject);
    if (!((Signer)localObject).ᵔ(paramInputStream.getSignature())) {
      throw new TlsFatalAlert((short)51);
    }
    this.aVa = TlsDHUtils.ˊ(localServerDHParams.mH());
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
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsDHEKeyExchange
 * JD-Core Version:    0.7.0.1
 */