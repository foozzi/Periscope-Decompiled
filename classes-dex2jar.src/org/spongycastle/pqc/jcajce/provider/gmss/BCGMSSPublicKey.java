package org.spongycastle.pqc.jcajce.provider.gmss;

import java.security.PublicKey;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.pqc.asn1.GMSSPublicKey;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.asn1.ParSet;
import org.spongycastle.pqc.crypto.gmss.GMSSParameters;
import org.spongycastle.pqc.jcajce.provider.util.KeyUtil;
import org.spongycastle.util.encoders.Hex;

public class BCGMSSPublicKey
  implements CipherParameters, PublicKey
{
  private byte[] bis;
  private GMSSParameters bit;
  
  public String getAlgorithm()
  {
    return "GMSS";
  }
  
  public byte[] getEncoded()
  {
    return KeyUtil.ˊ(new AlgorithmIdentifier(PQCObjectIdentifiers.bdV, new ParSet(this.bit.qN(), this.bit.qO(), this.bit.qP(), this.bit.qQ()).ez()), new GMSSPublicKey(this.bis));
  }
  
  public String getFormat()
  {
    return "X.509";
  }
  
  public String toString()
  {
    String str = "GMSS public key : " + new String(Hex.ײ(this.bis)) + "\n" + "Height of Trees: \n";
    int i = 0;
    while (i < this.bit.qO().length)
    {
      str = str + "Layer " + i + " : " + this.bit.qO()[i] + " WinternitzParameter: " + this.bit.qP()[i] + " K: " + this.bit.qQ()[i] + "\n";
      i += 1;
    }
    return str;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.gmss.BCGMSSPublicKey
 * JD-Core Version:    0.7.0.1
 */