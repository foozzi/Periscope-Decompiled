package org.spongycastle.crypto.agreement.kdf;

import java.io.IOException;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.DerivationFunction;
import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.util.Pack;

public class DHKEKGenerator
  implements DerivationFunction
{
  private ASN1ObjectIdentifier aCT;
  private byte[] aFF;
  private final Digest aFH;
  private byte[] aFI;
  private int ahI;
  
  public void ˊ(DerivationParameters paramDerivationParameters)
  {
    paramDerivationParameters = (DHKDFParameters)paramDerivationParameters;
    this.aCT = paramDerivationParameters.fK();
    this.ahI = paramDerivationParameters.getKeySize();
    this.aFF = paramDerivationParameters.iQ();
    this.aFI = paramDerivationParameters.iR();
  }
  
  public int ᐧ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte.length - paramInt2 < paramInt1) {
      throw new DataLengthException("output buffer too small");
    }
    long l = paramInt2;
    int n = this.aFH.iJ();
    if (l > 8589934591L) {
      throw new IllegalArgumentException("Output length too large");
    }
    int i1 = (int)((n + l - 1L) / n);
    byte[] arrayOfByte = new byte[this.aFH.iJ()];
    int k = 1;
    int m = 0;
    int i = paramInt2;
    int j = paramInt1;
    paramInt1 = m;
    paramInt2 = k;
    while (paramInt1 < i1)
    {
      this.aFH.update(this.aFF, 0, this.aFF.length);
      Object localObject = new ASN1EncodableVector();
      ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
      localASN1EncodableVector.ˊ(this.aCT);
      localASN1EncodableVector.ˊ(new DEROctetString(Pack.ﮃ(paramInt2)));
      ((ASN1EncodableVector)localObject).ˊ(new DERSequence(localASN1EncodableVector));
      if (this.aFI != null) {
        ((ASN1EncodableVector)localObject).ˊ(new DERTaggedObject(true, 0, new DEROctetString(this.aFI)));
      }
      ((ASN1EncodableVector)localObject).ˊ(new DERTaggedObject(true, 2, new DEROctetString(Pack.ﮃ(this.ahI))));
      try
      {
        localObject = new DERSequence((ASN1EncodableVector)localObject).getEncoded("DER");
        this.aFH.update((byte[])localObject, 0, localObject.length);
      }
      catch (IOException paramArrayOfByte)
      {
        throw new IllegalArgumentException("unable to encode parameter info: " + paramArrayOfByte.getMessage());
      }
      this.aFH.doFinal(arrayOfByte, 0);
      if (i > n)
      {
        System.arraycopy(arrayOfByte, 0, paramArrayOfByte, j, n);
        j += n;
        i -= n;
      }
      else
      {
        System.arraycopy(arrayOfByte, 0, paramArrayOfByte, j, i);
      }
      paramInt2 += 1;
      paramInt1 += 1;
    }
    this.aFH.reset();
    return (int)l;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.agreement.kdf.DHKEKGenerator
 * JD-Core Version:    0.7.0.1
 */