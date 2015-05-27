package org.spongycastle.asn1.pkcs;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class PBES2Parameters
  extends ASN1Object
  implements PKCSObjectIdentifiers
{
  private KeyDerivationFunc aqk;
  private EncryptionScheme aql;
  
  private PBES2Parameters(ASN1Sequence paramASN1Sequence)
  {
    paramASN1Sequence = paramASN1Sequence.eT();
    ASN1Sequence localASN1Sequence = ASN1Sequence.ﹾ(((ASN1Encodable)paramASN1Sequence.nextElement()).ez());
    if (localASN1Sequence.ϲ(0).equals(aqN)) {
      this.aqk = new KeyDerivationFunc(aqN, PBKDF2Params.וּ(localASN1Sequence.ϲ(1)));
    } else {
      this.aqk = KeyDerivationFunc.ᵄ(localASN1Sequence);
    }
    this.aql = EncryptionScheme.ᘁ(paramASN1Sequence.nextElement());
  }
  
  public static PBES2Parameters ᵧ(Object paramObject)
  {
    if ((paramObject instanceof PBES2Parameters)) {
      return (PBES2Parameters)paramObject;
    }
    if (paramObject != null) {
      return new PBES2Parameters(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aqk);
    localASN1EncodableVector.ˊ(this.aql);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public KeyDerivationFunc fP()
  {
    return this.aqk;
  }
  
  public EncryptionScheme fQ()
  {
    return this.aql;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.PBES2Parameters
 * JD-Core Version:    0.7.0.1
 */