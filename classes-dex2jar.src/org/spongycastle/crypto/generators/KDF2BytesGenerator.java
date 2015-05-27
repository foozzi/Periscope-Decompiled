package org.spongycastle.crypto.generators;

import org.spongycastle.crypto.Digest;

public class KDF2BytesGenerator
  extends BaseKDFBytesGenerator
{
  public KDF2BytesGenerator(Digest paramDigest)
  {
    super(1, paramDigest);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.KDF2BytesGenerator
 * JD-Core Version:    0.7.0.1
 */