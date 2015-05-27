package org.spongycastle.pqc.jcajce.provider.mceliece;

import java.io.IOException;
import java.security.PublicKey;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.pqc.asn1.McEliecePublicKey;
import org.spongycastle.pqc.crypto.mceliece.McElieceParameters;
import org.spongycastle.pqc.crypto.mceliece.McEliecePublicKeyParameters;
import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;

public class BCMcEliecePublicKey
  implements CipherParameters, PublicKey
{
  private int aQb;
  private String aby;
  private int bdK;
  private GF2Matrix bgn;
  private McElieceParameters bix;
  
  public BCMcEliecePublicKey(String paramString, int paramInt1, int paramInt2, GF2Matrix paramGF2Matrix)
  {
    this.aby = paramString;
    this.aQb = paramInt1;
    this.bdK = paramInt2;
    this.bgn = paramGF2Matrix;
  }
  
  public BCMcEliecePublicKey(McEliecePublicKeyParameters paramMcEliecePublicKeyParameters)
  {
    this(paramMcEliecePublicKeyParameters.rp(), paramMcEliecePublicKeyParameters.kC(), paramMcEliecePublicKeyParameters.rj(), paramMcEliecePublicKeyParameters.rw());
    this.bix = paramMcEliecePublicKeyParameters.rr();
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof BCMcEliecePublicKey)) {
      return false;
    }
    paramObject = (BCMcEliecePublicKey)paramObject;
    return (this.aQb == paramObject.aQb) && (this.bdK == paramObject.bdK) && (this.bgn.equals(paramObject.bgn));
  }
  
  public String getAlgorithm()
  {
    return "McEliece";
  }
  
  public byte[] getEncoded()
  {
    Object localObject = new McEliecePublicKey(new ASN1ObjectIdentifier(this.aby), this.aQb, this.bdK, this.bgn);
    AlgorithmIdentifier localAlgorithmIdentifier = new AlgorithmIdentifier(nV(), DERNull.abj);
    try
    {
      localObject = new SubjectPublicKeyInfo(localAlgorithmIdentifier, (ASN1Encodable)localObject).getEncoded();
      return localObject;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public String getFormat()
  {
    return null;
  }
  
  public int hashCode()
  {
    return this.aQb + this.bdK + this.bgn.hashCode();
  }
  
  public int kC()
  {
    return this.aQb;
  }
  
  protected ASN1ObjectIdentifier nV()
  {
    return new ASN1ObjectIdentifier("1.3.6.1.4.1.8301.3.1.3.4.1");
  }
  
  public McElieceParameters rZ()
  {
    return this.bix;
  }
  
  public int rj()
  {
    return this.bdK;
  }
  
  public String rp()
  {
    return this.aby;
  }
  
  public GF2Matrix rw()
  {
    return this.bgn;
  }
  
  public String toString()
  {
    String str = "McEliecePublicKey:\n" + " length of the code         : " + this.aQb + "\n";
    str = str + " error correction capability: " + this.bdK + "\n";
    return str + " generator matrix           : " + this.bgn.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.mceliece.BCMcEliecePublicKey
 * JD-Core Version:    0.7.0.1
 */