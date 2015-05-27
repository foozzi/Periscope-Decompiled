package org.spongycastle.crypto.agreement.kdf;

import java.io.IOException;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.DigestDerivationFunction;
import org.spongycastle.crypto.generators.KDF2BytesGenerator;
import org.spongycastle.crypto.params.KDFParameters;
import org.spongycastle.util.Pack;

public class ECDHKEKGenerator
  implements DigestDerivationFunction
{
  private ASN1ObjectIdentifier aCT;
  private byte[] aFF;
  private DigestDerivationFunction aFJ;
  private int ahI;
  
  public ECDHKEKGenerator(Digest paramDigest)
  {
    this.aFJ = new KDF2BytesGenerator(paramDigest);
  }
  
  public void ˊ(DerivationParameters paramDerivationParameters)
  {
    paramDerivationParameters = (DHKDFParameters)paramDerivationParameters;
    this.aCT = paramDerivationParameters.fK();
    this.ahI = paramDerivationParameters.getKeySize();
    this.aFF = paramDerivationParameters.iQ();
  }
  
  public int ᐧ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(new AlgorithmIdentifier(this.aCT, DERNull.abj));
    localASN1EncodableVector.ˊ(new DERTaggedObject(true, 2, new DEROctetString(Pack.ﮃ(this.ahI))));
    try
    {
      this.aFJ.ˊ(new KDFParameters(this.aFF, new DERSequence(localASN1EncodableVector).getEncoded("DER")));
    }
    catch (IOException paramArrayOfByte)
    {
      throw new IllegalArgumentException("unable to initialise kdf: " + paramArrayOfByte.getMessage());
    }
    return this.aFJ.ᐧ(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.agreement.kdf.ECDHKEKGenerator
 * JD-Core Version:    0.7.0.1
 */