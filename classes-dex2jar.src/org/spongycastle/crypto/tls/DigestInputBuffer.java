package org.spongycastle.crypto.tls;

import java.io.ByteArrayOutputStream;
import org.spongycastle.crypto.Digest;

class DigestInputBuffer
  extends ByteArrayOutputStream
{
  void ˎ(Digest paramDigest)
  {
    paramDigest.update(this.buf, 0, this.count);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.DigestInputBuffer
 * JD-Core Version:    0.7.0.1
 */