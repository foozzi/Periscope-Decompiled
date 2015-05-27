package o;

import java.util.Hashtable;
import java.util.Vector;

class ks
  extends lu
{
  ks(Vector paramVector, int paramInt1, int paramInt2, Hashtable paramHashtable)
  {
    super(paramVector, paramInt1, paramInt2, paramHashtable);
  }
  
  public void shutdown()
  {
    if (this.PQ != null) {
      this.PQ.shutdown();
    }
  }
  
  void ˋ(kn paramkn)
  {
    try
    {
      kq.ﹾ(paramkn.getUrl());
      ko localko = this.PQ.ˊ(paramkn.getUrl(), paramkn.ap());
    }
    catch (lh locallh)
    {
      kq.ﹾ("Pubnub Exception in Fetch : " + locallh.aE());
      if (!this.PO) {
        paramkn.ao().ˊ(paramkn, locallh.aE());
      }
      return;
    }
    catch (Exception localException)
    {
      kq.ﹾ("Exception in Fetch : " + localException.toString());
      if (!this.PO) {
        paramkn.ao().ˊ(paramkn, lg.ˊ(lg.OY, 2, localException.toString()));
      }
      return;
    }
    if (!this.PO)
    {
      if (localException == null)
      {
        kq.ﹾ("Error in fetching url : " + paramkn.getUrl());
        paramkn.ao().ˊ(paramkn, lg.ˊ(lg.OY, 3));
        return;
      }
      paramkn.ao().ˊ(paramkn, localException.aq());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ks
 * JD-Core Version:    0.7.0.1
 */