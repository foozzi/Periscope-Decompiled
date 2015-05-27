package o;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import org.spongycastle.util.encoders.Base64;

class ach
  implements act
{
  public final fz bxH;
  
  public ach(fz paramfz)
  {
    this.bxH = paramfz;
  }
  
  public byte[] wI()
  {
    Object localObject1 = new ArrayList(this.bxH.entrySet().size());
    Object localObject2 = this.bxH.entrySet().iterator();
    while (((Iterator)localObject2).hasNext()) {
      ((ArrayList)localObject1).add(((Map.Entry)((Iterator)localObject2).next()).getKey());
    }
    Collections.sort((List)localObject1, String.CASE_INSENSITIVE_ORDER);
    localObject2 = new ByteArrayOutputStream();
    DataOutputStream localDataOutputStream = new DataOutputStream((OutputStream)localObject2);
    try
    {
      Iterator localIterator = ((ArrayList)localObject1).iterator();
      while (localIterator.hasNext())
      {
        localObject1 = (String)localIterator.next();
        if ((!((String)localObject1).startsWith("signature")) && (!((String)localObject1).startsWith("signer_")))
        {
          localObject1 = this.bxH.เ((String)localObject1);
          if ((((fw)localObject1).p()) && (((fw)localObject1).t().x())) {
            localObject1 = ((fw)localObject1).h();
          } else {
            localObject1 = ((fw)localObject1).toString();
          }
          localDataOutputStream.write(((String)localObject1).getBytes(Charset.forName("UTF-8")));
        }
      }
    }
    catch (IOException localIOException)
    {
      akk.ʻ("ChannelItem", "Should never happen", localIOException);
    }
    return ((ByteArrayOutputStream)localObject2).toByteArray();
  }
  
  public byte[] wJ()
  {
    fw localfw = this.bxH.เ("signature");
    if ((localfw != null) && (anw.ᐨ(localfw.h()))) {
      return Base64.ᵥ(localfw.h());
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ach
 * JD-Core Version:    0.7.0.1
 */