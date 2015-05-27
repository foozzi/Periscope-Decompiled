package org.spongycastle.asn1.pkcs;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class KeyDerivationFunc
  extends ASN1Object
{
  private AlgorithmIdentifier agJ;
  
  public KeyDerivationFunc(ASN1ObjectIdentifier paramASN1ObjectIdentifier, ASN1Encodable paramASN1Encodable)
  {
    this.agJ = new AlgorithmIdentifier(paramASN1ObjectIdentifier, paramASN1Encodable);
  }
  
  private KeyDerivationFunc(ASN1Sequence paramASN1Sequence)
  {
    this.agJ = AlgorithmIdentifier.ᓪ(paramASN1Sequence);
  }
  
  public static KeyDerivationFunc ᵄ(Object paramObject)
  {
    if ((paramObject instanceof KeyDerivationFunc)) {
      return (KeyDerivationFunc)paramObject;
    }
    if (paramObject != null) {
      return new KeyDerivationFunc(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    return this.agJ.ez();
  }
  
  public ASN1ObjectIdentifier fK()
  {
    return this.agJ.fK();
  }
  
  public ASN1Encodable fL()
  {
    return this.agJ.fL();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.KeyDerivationFunc
 * JD-Core Version:    0.7.0.1
 */