package o;

import java.net.SocketTimeoutException;
import java.util.Hashtable;
import java.util.Vector;

class ln
  extends kg
{
  private Exception PD = null;
  
  ln(Vector paramVector, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, Hashtable paramHashtable)
  {
    super(paramVector, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramHashtable);
  }
  
  public void shutdown()
  {
    if (this.PQ != null) {
      this.PQ.shutdown();
    }
  }
  
  void ˋ(kn paramkn)
  {
    ko localko1 = null;
    int i;
    if (paramkn.an()) {
      i = 1;
    } else {
      i = this.NI;
    }
    kq.ɩ("disconnectAndResubscribe is " + paramkn.an());
    if (paramkn.al() != null)
    {
      kq.ɩ("Request placed by worker " + paramkn.al().getThread().getName());
      if (paramkn.al().PO)
      {
        kq.ɩ("The thread which placed the request has died, so ignore the request : " + paramkn.al().getThread().getName());
        return;
      }
    }
    paramkn.ˊ(this);
    if ((!paramkn.am()) && (this.NK != 0)) {
      try
      {
        Thread.sleep(this.NK);
      }
      catch (InterruptedException localInterruptedException1) {}
    }
    int j = 0;
    for (;;)
    {
      ko localko2 = localko1;
      if (this.PO) {
        break;
      }
      localko2 = localko1;
      if (i > this.NI) {
        break;
      }
      if (j != 0) {
        try
        {
          Thread.sleep(this.NJ);
        }
        catch (InterruptedException localInterruptedException2) {}
      }
      j = 1;
      ko localko3 = localko1;
      Object localObject2 = localko1;
      Object localObject3 = localko1;
      try
      {
        kq.ﹾ(paramkn.getUrl());
        localko3 = localko1;
        localObject2 = localko1;
        localObject3 = localko1;
        localko1 = this.PQ.ˊ(paramkn.getUrl(), paramkn.ap());
        if (localko1 != null)
        {
          localko3 = localko1;
          localObject2 = localko1;
          localObject3 = localko1;
          boolean bool = kp.ṙ(localko1.getStatusCode());
          if (bool)
          {
            localko3 = localko1;
            break;
          }
        }
      }
      catch (SocketTimeoutException localSocketTimeoutException)
      {
        kq.ɩ("No Traffic , Read Timeout Exception in Fetch : " + localSocketTimeoutException.toString());
        if (this.PO)
        {
          kq.ɩ("Asked to Die, Don't do back from DAR processing");
          break;
        }
        if (paramkn.an())
        {
          paramkn.ao().ˏ(paramkn);
          return;
        }
        paramkn.ao().ˊ(paramkn, lg.ˊ(lg.Pn, 1));
        return;
      }
      catch (lh locallh)
      {
        this.PD = locallh;
        switch (locallh.aE().tB)
        {
        default: 
          break;
        case 112: 
        case 113: 
          kq.ɩ("Authentication Failure : " + locallh.toString());
          i = this.NI + 1;
          break;
        }
        localObject3 = new StringBuilder().append("Retry Attempt : ");
        if (i == this.NI) {
          localObject1 = "last";
        } else {
          localObject1 = Integer.valueOf(i);
        }
        kq.ɩ(localObject1 + " Exception in Fetch : " + locallh.toString());
        i += 1;
        localObject1 = localObject2;
      }
      catch (Exception localException)
      {
        this.PD = localException;
        localObject2 = new StringBuilder().append("Retry Attempt : ");
        if (i == this.NI) {
          localObject1 = "last";
        } else {
          localObject1 = Integer.valueOf(i);
        }
        kq.ɩ(localObject1 + " Exception in Fetch : " + localException.toString());
        i += 1;
        Object localObject1 = localObject3;
      }
    }
    if (!this.PO)
    {
      if (localException == null)
      {
        kq.ﹾ("Error in fetching url : " + paramkn.getUrl());
        if (paramkn.an())
        {
          kq.ɩ("Exhausted number of retries");
          paramkn.ao().ᐝ(paramkn);
          return;
        }
        if ((this.PD != null) && ((this.PD instanceof lh)) && (((lh)this.PD).aE() != null))
        {
          paramkn.ao().ˊ(paramkn, ((lh)this.PD).aE());
          return;
        }
        paramkn.ao().ˊ(paramkn, lg.ˊ(lg.OY, 1));
        return;
      }
      kq.ﹾ(localException.aq());
      paramkn.ao().ˊ(paramkn, localException.aq());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ln
 * JD-Core Version:    0.7.0.1
 */