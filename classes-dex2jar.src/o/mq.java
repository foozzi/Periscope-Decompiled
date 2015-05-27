package o;

import java.util.Iterator;
import java.util.List;
import retrofit.client.Header;

class mq
{
  private final long Qu;
  private int Qv;
  private long Qw;
  private int limit;
  
  mq(List<Header> paramList)
  {
    if (paramList == null) {
      throw new IllegalArgumentException("headers must not be null");
    }
    this.Qu = System.currentTimeMillis();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Header localHeader = (Header)paramList.next();
      if ("x-rate-limit-limit".equals(localHeader.getName())) {
        this.limit = Integer.valueOf(localHeader.getValue()).intValue();
      } else if ("x-rate-limit-remaining".equals(localHeader.getName())) {
        this.Qv = Integer.valueOf(localHeader.getValue()).intValue();
      } else if ("x-rate-limit-reset".equals(localHeader.getName())) {
        this.Qw = Long.valueOf(localHeader.getValue()).longValue();
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.mq
 * JD-Core Version:    0.7.0.1
 */