package o;

import java.net.URI;
import java.util.Map;
import java.util.Timer;

public class aat
  implements aaq.aux, akw.if
{
  private final String buJ;
  private aaq buK;
  private aaq.ᐝ buL;
  private akw buM;
  private aav buN = null;
  private aav buO = null;
  private if buP;
  private Timer buQ;
  private long buR;
  private boolean buS = false;
  private long buT = 0L;
  
  public aat(String paramString, if paramif)
  {
    this.buJ = paramString;
    this.buP = paramif;
  }
  
  private void reconnect()
  {
    if ((this.buM != null) && (this.buM.Bi())) {
      try
      {
        Object localObject4 = new URI(this.buJ);
        String str1 = ((URI)localObject4).getScheme();
        String str2 = ((URI)localObject4).getHost();
        int i = ((URI)localObject4).getPort();
        Object localObject3 = ((URI)localObject4).getQuery();
        Object localObject1 = localObject3;
        if (((String)localObject3).startsWith("t=")) {
          localObject1 = ((String)localObject3).substring(2);
        }
        localObject4 = ((URI)localObject4).getPath();
        localObject3 = localObject4;
        if (((String)localObject4).charAt(0) == '/') {
          localObject3 = ((String)localObject4).substring(1);
        }
        int j = ((String)localObject3).indexOf('/');
        if (j <= 0) {
          return;
        }
        localObject4 = ((String)localObject3).substring(0, j);
        localObject3 = ((String)localObject3).substring(j + 1);
        if ((i == 80) && (str1.equalsIgnoreCase("rtmp")))
        {
          this.buM = new akw();
          this.buM.৲(2500000L);
          this.buM.ˊ("RTMPS", str2, 443, (String)localObject4, (String)localObject3, (String)localObject1, this);
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    try
    {
      boolean bool = this.buS;
      if (bool) {
        return;
      }
      this.buS = true;
    }
    finally {}
    this.buP.vL();
  }
  
  private void vG()
  {
    this.buM = new akw();
    this.buM.৲(2500000L);
    this.buM.ˊ(this.buJ, this);
  }
  
  private void vH()
  {
    try
    {
      this.buR = 0L;
      this.buT = System.currentTimeMillis();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private void vI()
  {
    this.buQ = new Timer();
    this.buQ.schedule(new aau(this), 3000L, 3000L);
  }
  
  private void vJ()
  {
    if (this.buQ != null)
    {
      this.buQ.cancel();
      this.buQ = null;
    }
  }
  
  private void vK()
  {
    long l = System.currentTimeMillis();
    int j = 0;
    int i;
    try
    {
      if (this.buR > 0L)
      {
        i = j;
        if (l - this.buR > 9000L)
        {
          akk.ᐪ("RTMP", "Connect timeout");
          this.buR = 0L;
          this.buT = 0L;
          i = 1;
        }
      }
      else
      {
        i = j;
        if (this.buT > 0L)
        {
          i = j;
          if (l - this.buT > 9000L)
          {
            akk.ᐪ("RTMP", "No data timeout");
            i = 1;
            this.buT = 0L;
          }
        }
      }
    }
    finally {}
    if (i != 0)
    {
      this.buM.shutdown();
      reconnect();
    }
  }
  
  public void onClose()
  {
    akk.ᐪ("RTMP", "Unexpected close: reconnect");
    reconnect();
  }
  
  public void onShutdown()
  {
    vJ();
  }
  
  public void Ŀ(int paramInt)
  {
    if (paramInt > 0)
    {
      String str = this.buM.getTarget();
      this.buM.ˊ("play", new Object[] { null, str, Integer.valueOf(0) });
    }
  }
  
  public void ˊ(aaq paramaaq, aaq.ᐝ paramᐝ)
  {
    this.buK = paramaaq;
    this.buL = paramᐝ;
    this.buR = System.currentTimeMillis();
    vI();
    vG();
  }
  
  public boolean ˊ(alc paramalc)
  {
    if (paramalc.getType() == 18)
    {
      paramalc = paramalc.Bu();
      if ((((String)paramalc[0]).equals("onMetaData")) && (this.buO == null)) {
        ᐝ((Map)paramalc[1]);
      }
    }
    else if (paramalc.getType() == 9)
    {
      if (this.buO != null)
      {
        vH();
        this.buO.ˋ(paramalc);
        return true;
      }
    }
    else if ((paramalc.getType() == 8) && (this.buN != null))
    {
      vH();
      this.buN.ˋ(paramalc);
      return true;
    }
    return false;
  }
  
  public void ᐝ(Map<String, Object> paramMap)
  {
    Object localObject1 = (Object[])paramMap.get("trackinfo");
    int i = 0;
    while (i < localObject1.length)
    {
      localObject2 = (Map)localObject1[i];
      Object localObject3 = (String)((Map)localObject2).get("type");
      Double localDouble;
      if (((String)localObject3).equals("video"))
      {
        localObject2 = (String)((Map)localObject2).get("sprop-parameter-sets");
        localObject3 = (Double)paramMap.get("width");
        localDouble = (Double)paramMap.get("height");
        this.buO = new aaw(i, (String)localObject2, ((Double)localObject3).intValue(), localDouble.intValue(), this.buP);
        this.buO.ˊ(this.buM);
      }
      else if (((String)localObject3).equals("audio"))
      {
        localObject2 = (String)((Map)localObject2).get("config");
        localObject3 = (Double)paramMap.get("audiochannels");
        localDouble = (Double)paramMap.get("audiosamplerate");
        this.buN = new aas(i, (String)localObject2, ((Double)localObject3).intValue(), localDouble.intValue());
        this.buN.ˊ(this.buM);
      }
      i += 1;
    }
    paramMap = new ԅ(this.buO, 1, 5000L, this.buK.vD(), this.buK, 50);
    localObject1 = new з(this.buN);
    Object localObject2 = new ڹ[5];
    localObject2[0] = paramMap;
    localObject2[1] = localObject1;
    this.buL.ˊ(null, null, (ڹ[])localObject2);
  }
  
  public static abstract interface if
  {
    public abstract void vL();
    
    public abstract void ˊ(Map<String, Object> paramMap, long paramLong);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aat
 * JD-Core Version:    0.7.0.1
 */