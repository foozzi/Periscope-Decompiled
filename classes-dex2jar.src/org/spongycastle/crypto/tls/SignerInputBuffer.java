package org.spongycastle.crypto.tls;

import java.io.ByteArrayOutputStream;
import org.spongycastle.crypto.Signer;

class SignerInputBuffer
  extends ByteArrayOutputStream
{
  void ˊ(Signer paramSigner)
  {
    paramSigner.update(this.buf, 0, this.count);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.SignerInputBuffer
 * JD-Core Version:    0.7.0.1
 */