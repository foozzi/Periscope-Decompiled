package o;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Random;
import java.util.Set;

abstract class ku
{
  protected static String VERSION = "";
  protected Hashtable NW;
  private String Oa = "pubsub";
  private int Ob = 1;
  private String Oc = "pubnub.com";
  private String Od = null;
  protected String Oe = "";
  protected String Of = "";
  protected String Og = "";
  private String Oh = "";
  private String Oi = null;
  private volatile String Oj = null;
  private volatile boolean Ok = true;
  private volatile boolean Ol;
  private boolean Om = true;
  private lp On;
  private lp Oo;
  protected lm Op;
  protected kr Oq;
  protected lr Or;
  private volatile String Os = "0";
  private volatile String Ot = "0";
  private String Ou = "-pnpres";
  private Random Ov = new Random();
  private int Ow = 0;
  private int Ox = 320;
  private volatile int Oy = 0;
  private ki Oz = new kv(this);
  protected String UUID = null;
  
  public ku(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean)
  {
    ˊ(paramString1, paramString2, paramString3, paramString4, paramBoolean);
  }
  
  private int aA()
  {
    return Math.abs(this.Ov.nextInt());
  }
  
  private void aB()
  {
    this.Od = null;
    this.Ob = aA();
  }
  
  private void aC()
  {
    aB();
    if (!this.Os.equals("0")) {
      this.Ot = this.Os;
    }
    this.Os = "0";
    kq.ɩ("Before Resubscribe Timetoken : " + this.Os);
    kq.ɩ("Before Resubscribe Saved Timetoken : " + this.Ot);
    ʻ(true, true);
  }
  
  private String ay()
  {
    if (this.On.PH.entrySet().size() > 0) {
      return this.On.PH.toString();
    }
    return null;
  }
  
  private void ʻ(Hashtable paramHashtable)
  {
    Object localObject2 = (String[])paramHashtable.get("channels");
    Object localObject3 = (String[])paramHashtable.get("groups");
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = new String[0];
    }
    localObject2 = localObject3;
    if (localObject3 == null) {
      localObject2 = new String[0];
    }
    localObject3 = (ki)paramHashtable.get("callback");
    paramHashtable = (String)paramHashtable.get("timetoken");
    if (!this.Os.equals("0")) {
      this.Ot = this.Os;
    }
    if (paramHashtable == null) {
      paramHashtable = "0";
    }
    this.Os = paramHashtable;
    int i = 0;
    while (i < localObject1.length)
    {
      paramHashtable = localObject1[i];
      if (this.On.ᒻ(paramHashtable) == null)
      {
        paramHashtable = new lo(paramHashtable, (ki)localObject3);
        this.On.ˊ(paramHashtable);
      }
      i += 1;
    }
    i = 0;
    while (i < localObject2.length)
    {
      paramHashtable = localObject2[i];
      if (this.Oo.ᒻ(paramHashtable) == null)
      {
        paramHashtable = new lo(paramHashtable, (ki)localObject3);
        this.Oo.ˊ(paramHashtable);
      }
      i += 1;
    }
    ᔅ(true);
  }
  
  private void ʻ(boolean paramBoolean1, boolean paramBoolean2)
  {
    ˊ(paramBoolean1, paramBoolean2, null);
  }
  
  private void ˁ(String paramString)
  {
    ˋ(li.৲(paramString), new Hashtable());
  }
  
  private lg ˊ(lh paramlh, lg paramlg, int paramInt, String paramString)
  {
    lg locallg = paramlh.aE();
    paramlh = locallg;
    if (locallg == null) {
      paramlh = lg.ˊ(paramlg, paramInt, paramString);
    }
    return paramlh;
  }
  
  private void ˊ(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean)
  {
    ˊ(paramString1, paramString2, paramString3, paramString4, paramBoolean, null);
  }
  
  private void ˊ(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean, String paramString5)
  {
    this.Oe = paramString1;
    this.Of = paramString2;
    this.Og = paramString3;
    this.Oh = paramString4;
    this.Om = paramBoolean;
    if (this.UUID == null) {
      this.UUID = at();
    }
    if (this.On == null) {
      this.On = new lp();
    }
    if (this.Oo == null) {
      this.Oo = new lp();
    }
    if (this.Op == null) {
      this.Op = new lm("Subscribe-Manager-" + System.identityHashCode(this), 10000, 310000);
    }
    if (this.Oq == null) {
      this.Oq = new kr("Non-Subscribe-Manager-" + System.identityHashCode(this), 10000, 15000);
    }
    if (this.Or == null) {
      this.Or = new lr("TimedTaskManager");
    }
    if (this.NW == null) {
      this.NW = new Hashtable();
    }
    this.NW.put("pnsdk", as());
    this.Op.setHeader("V", VERSION);
    this.Op.setHeader("Accept-Encoding", "gzip");
    this.Op.setHeader("User-Agent", as());
    this.Oq.setHeader("V", VERSION);
    this.Oq.setHeader("Accept-Encoding", "gzip");
    this.Oq.setHeader("User-Agent", as());
  }
  
  private void ˊ(String paramString1, ki paramki, fw paramfw, String paramString2, kn paramkn)
  {
    if ((this.Oh.length() > 0) && (!paramString1.endsWith(this.Ou)))
    {
      Object localObject = new le(this.Oh, this.Oi);
      try
      {
        localObject = ((le)localObject).ˢ(paramfw.toString());
        localObject = new gb().ᐤ((String)localObject);
        if (!ˎ(paramkn)) {
          paramki.ˋ(paramString1, (fw)localObject, paramString2);
        }
      }
      catch (IllegalStateException paramString2)
      {
        if (!ˎ(paramkn)) {
          paramki.ˊ(paramString1, lg.ˊ(lg.OM, 12, paramfw.toString()));
        }
      }
      catch (lh paramString2)
      {
        if (!ˎ(paramkn)) {
          paramki.ˊ(paramString1, ˊ(paramString2, lg.OM, 16, paramfw.toString() + " : " + paramString2.toString()));
        }
      }
      catch (Exception paramString2)
      {
        if (!ˎ(paramkn)) {
          paramki.ˊ(paramString1, lg.ˊ(lg.OM, 15, paramfw.toString() + " : " + paramString2.toString()));
        }
      }
      return;
    }
    if (!ˎ(paramkn)) {
      paramki.ˋ(paramString1, paramfw, paramString2);
    }
  }
  
  private void ˊ(ft paramft)
  {
    if (this.Oh.length() > 0)
    {
      int i = 0;
      while (i < paramft.size())
      {
        String str = new le(this.Oh, this.Oi).ˢ(paramft.ᴿ(i).toString());
        paramft.ˊ(i, new gb().ᐤ(str));
        i += 1;
      }
    }
  }
  
  private void ˊ(kn paramkn, lk paramlk, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramlk.aG();
    }
    paramlk.ˊ(paramkn);
  }
  
  private void ˊ(boolean paramBoolean, lu paramlu)
  {
    ˊ(paramBoolean, false, paramlu);
  }
  
  private void ˊ(boolean paramBoolean1, boolean paramBoolean2, lu paramlu)
  {
    Object localObject1 = this.On.aK();
    Object localObject2 = this.Oo.aK();
    Object localObject3 = this.On.aI();
    String[] arrayOfString = this.Oo.aI();
    if ((localObject3.length <= 0) && (arrayOfString.length <= 0))
    {
      this.Op.aG();
      return;
    }
    if (localObject1 == null)
    {
      ˊ((String[])localObject3, lg.Pd);
      return;
    }
    if (((String)localObject1).equals("")) {
      localObject1 = ",";
    } else {
      localObject1 = li.৲((String)localObject1);
    }
    localObject3 = az();
    String str1 = this.Of;
    String str2 = this.Os;
    Hashtable localHashtable = li.ʽ(this.NW);
    localHashtable.put("uuid", this.UUID);
    if (arrayOfString.length > 0) {
      localHashtable.put("channel-group", localObject2);
    }
    localObject2 = ay();
    if (localObject2 != null) {
      localHashtable.put("state", localObject2);
    }
    if ((this.Ox > 5) && (this.Ox < 320)) {
      localHashtable.put("heartbeat", String.valueOf(this.Ox));
    }
    kq.ɩ("Subscribing with timetoken : " + this.Os);
    localObject2 = new ky(this);
    localObject1 = new kn(new String[] { localObject3, "subscribe", str1, localObject1, "0", str2 }, localHashtable, (ll)localObject2);
    if (this.Os.equals("0"))
    {
      ((kn)localObject1).ᐢ(true);
      kq.ɩ("This is a subscribe 0 request");
    }
    ((kn)localObject1).ᒻ(paramBoolean2);
    if ((paramlu != null) && ((paramlu instanceof lu))) {
      ((kn)localObject1).ˊ(paramlu);
    }
    ˊ((kn)localObject1, this.Op, paramBoolean1);
  }
  
  private void ˊ(String[] paramArrayOfString, lg paramlg)
  {
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      String str = paramArrayOfString[i];
      this.On.ᒻ(str).OE.ˊ(str, paramlg);
      i += 1;
    }
  }
  
  private void ˋ(String paramString, Hashtable paramHashtable)
  {
    String str1 = az();
    String str2 = this.Of;
    paramHashtable.put("uuid", this.UUID);
    Object localObject = au();
    if ((localObject != null) && (((String)localObject).length() > 0)) {
      paramHashtable.put("auth", localObject);
    }
    localObject = new kx(this);
    ˊ(new kn(new String[] { str1, "v2/presence/sub_key", str2, "channel", paramString, "leave" }, paramHashtable, (ll)localObject), this.Oq);
  }
  
  private void ˎ(Hashtable paramHashtable)
  {
    String str1 = (String)paramHashtable.get("channel");
    String str2 = (String)paramHashtable.get("group");
    if ((str1 != null) && (!str1.equals("")))
    {
      paramHashtable.put("channels", new String[] { str1 });
      paramHashtable.remove("channel");
    }
    if ((str2 != null) && (!str2.equals("")))
    {
      paramHashtable.put("groups", new String[] { str2 });
      paramHashtable.remove("group");
    }
  }
  
  private boolean ˎ(kn paramkn)
  {
    if ((paramkn == null) || (paramkn.al() == null)) {
      return false;
    }
    return paramkn.al().PO;
  }
  
  private boolean ˏ(Hashtable paramHashtable)
  {
    if ((!(paramHashtable.get("callback") instanceof ki)) || (paramHashtable.get("callback") == null)) {
      throw new lh("Invalid Callback");
    }
    String[] arrayOfString = (String[])paramHashtable.get("channels");
    paramHashtable = (String[])paramHashtable.get("groups");
    int i;
    if ((arrayOfString != null) && (arrayOfString.length > 0)) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if ((paramHashtable != null) && (paramHashtable.length > 0)) {
      j = 1;
    } else {
      j = 0;
    }
    if ((i == 0) && (j == 0)) {
      throw new lh("Channel or Channel Group Missing");
    }
    return true;
  }
  
  private void ᔅ(boolean paramBoolean)
  {
    ˊ(paramBoolean, false, null);
  }
  
  protected abstract String as();
  
  abstract String at();
  
  public String au()
  {
    return this.Oj;
  }
  
  public void av()
  {
    ˊ(lg.Pf);
  }
  
  public boolean aw()
  {
    return this.Ol;
  }
  
  String[] ax()
  {
    String str = this.On.aJ();
    if (str.length() <= 0) {
      return null;
    }
    return new String[] { az(), "v2", "presence", "sub-key", this.Of, "channel", li.৲(str), "heartbeat" };
  }
  
  protected String az()
  {
    if (this.Od == null)
    {
      if (this.Om) {
        this.Od = "https://";
      } else {
        this.Od = "http://";
      }
      this.Od += this.Oa;
      StringBuilder localStringBuilder = new StringBuilder().append(this.Od);
      String str;
      if (!this.Ok) {
        str = "";
      } else {
        str = "-" + String.valueOf(this.Ob);
      }
      this.Od = str;
      this.Od = (this.Od + "." + this.Oc);
    }
    return this.Od;
  }
  
  public void unsubscribe(String paramString)
  {
    ˋ(new String[] { paramString });
  }
  
  public void ʵ(String paramString)
  {
    this.Oj = paramString;
    if ((paramString == null) || (paramString.length() == 0)) {
      this.NW.remove("auth");
    } else {
      this.NW.put("auth", this.Oj);
    }
    aC();
  }
  
  public void ʸ(String paramString)
  {
    ˋ(new String[] { paramString + this.Ou });
  }
  
  public void ˀ(String paramString)
  {
    this.UUID = paramString;
  }
  
  protected ki ˊ(ki paramki)
  {
    if (paramki == null) {
      return this.Oz;
    }
    return paramki;
  }
  
  public void ˊ(int paramInt, ki paramki)
  {
    paramki = ˊ(paramki);
    if ((paramInt > 0) && (paramInt < 5)) {
      paramInt = 5;
    }
    this.Ox = paramInt;
    if (this.Oy == 0)
    {
      if (this.Ox - 3 >= 1) {
        paramInt = this.Ox - 3;
      } else {
        paramInt = 1;
      }
      this.Oy = paramInt;
    }
    if (this.Ow == 0) {
      this.Ow = this.Or.ˊ("Presence-Heartbeat", new if(this.Oy, paramki));
    } else if ((this.Oy == 0) || (this.Oy > 320)) {
      this.Or.ἰ(this.Ow);
    } else {
      this.Or.ᒡ(this.Ow, this.Oy);
    }
    av();
  }
  
  public void ˊ(String paramString, long paramLong1, long paramLong2, int paramInt, boolean paramBoolean1, boolean paramBoolean2, ki paramki)
  {
    ki localki = ˊ(paramki);
    paramki = li.ʽ(this.NW);
    int i = paramInt;
    if (paramInt == -1) {
      i = 100;
    }
    paramki.put("count", String.valueOf(i));
    paramki.put("reverse", String.valueOf(paramBoolean1));
    paramki.put("include_token", String.valueOf(paramBoolean2));
    if (paramLong1 != -1L) {
      paramki.put("start", Long.toString(paramLong1).toLowerCase());
    }
    if (paramLong2 != -1L) {
      paramki.put("end", Long.toString(paramLong2).toLowerCase());
    }
    String str1 = az();
    String str2 = this.Of;
    String str3 = li.৲(paramString);
    paramString = new kz(this, localki, paramString);
    ˊ(new kn(new String[] { str1, "v2", "history", "sub-key", str2, "channel", str3 }, paramki, paramString), this.Oq);
  }
  
  protected void ˊ(String paramString1, String paramString2, String paramString3, ki paramki, int paramInt)
  {
    ˊ(paramString1, paramString2, paramString3, paramki, paramInt, false);
  }
  
  protected void ˊ(String paramString1, String paramString2, String paramString3, ki paramki, int paramInt, boolean paramBoolean)
  {
    Object localObject = new gb().ᐤ(paramString2);
    if (!((fw)localObject).o())
    {
      paramki.ˊ(paramString1, lg.ˊ(lg.OO, paramInt, paramString2));
      return;
    }
    localObject = ((fw)localObject).r();
    kq.ɩ("Looking for " + paramString3 + " in " + localObject);
    if ((paramString3 != null) && (paramString3.length() > 0))
    {
      paramString3 = ((fz)localObject).เ(paramString3);
      if ((paramString3 == null) || (!paramString3.o()))
      {
        if (!paramBoolean)
        {
          paramki.ˋ(paramString1, (fw)localObject);
          return;
        }
        paramki.ˊ(paramString1, lg.ˊ(lg.OO, paramInt, paramString2));
        return;
      }
      paramki.ˋ(paramString1, paramString3.r());
    }
  }
  
  public void ˊ(String paramString1, String paramString2, fz paramfz, ki paramki)
  {
    ˊ(this.On, li.৲(paramString1), null, paramString2, paramfz, paramki);
  }
  
  public void ˊ(String paramString, fz paramfz, ki paramki)
  {
    Hashtable localHashtable = new Hashtable();
    localHashtable.put("channel", paramString);
    localHashtable.put("message", paramfz);
    localHashtable.put("callback", paramki);
    ˋ(localHashtable);
  }
  
  public void ˊ(String paramString, ki paramki)
  {
    ˊ(paramString, paramki, "0");
  }
  
  public void ˊ(String paramString1, ki paramki, String paramString2)
  {
    ˊ(new String[] { paramString1 }, paramki, paramString2);
  }
  
  public void ˊ(String paramString, boolean paramBoolean1, boolean paramBoolean2, ki paramki)
  {
    ˊ(new String[] { paramString }, null, paramBoolean1, paramBoolean2, paramki);
  }
  
  protected void ˊ(kn paramkn, lk paramlk)
  {
    ˊ(paramkn, paramlk, false);
  }
  
  public void ˊ(lg paramlg)
  {
    kq.ɩ("Received disconnectAndResubscribe " + paramlg);
    this.On.ˋ(paramlg);
    this.Oo.ˋ(paramlg);
    aC();
  }
  
  protected void ˊ(lp paramlp, String paramString1, String paramString2, String paramString3, fz paramfz, ki paramki)
  {
    lo locallo = paramlp.ᒻ(paramString1);
    ki localki = ˊ(paramki);
    paramki = li.ʽ(this.NW);
    String str1 = az();
    String str2 = this.Of;
    paramString3 = li.৲(paramString3);
    if (paramfz != null) {
      paramki.put("state", paramfz.toString());
    }
    if (paramString2 != null) {
      paramki.put("channel-group", paramString2);
    }
    if (locallo != null) {
      paramlp.PH.ˊ(paramString1, paramfz);
    }
    paramlp = new lb(this, localki);
    ˊ(new kn(new String[] { str1, "v2", "presence", "sub-key", str2, "channel", paramString1, "uuid", paramString3, "data" }, paramki, paramlp), this.Oq);
  }
  
  public void ˊ(String[] paramArrayOfString, ki paramki, String paramString)
  {
    Hashtable localHashtable = new Hashtable();
    localHashtable.put("channels", paramArrayOfString);
    localHashtable.put("callback", paramki);
    localHashtable.put("timetoken", paramString);
    ᐝ(localHashtable);
  }
  
  public void ˊ(String[] paramArrayOfString1, String[] paramArrayOfString2, boolean paramBoolean1, boolean paramBoolean2, ki paramki)
  {
    paramki = ˊ(paramki);
    Hashtable localHashtable = li.ʽ(this.NW);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(az());
    localArrayList.add("v2");
    localArrayList.add("presence");
    localArrayList.add("sub_key");
    localArrayList.add(this.Of);
    if ((paramArrayOfString1 != null) || (paramArrayOfString2 != null))
    {
      paramArrayOfString1 = li.ˊ(paramArrayOfString1, ",");
      if ("".equals(paramArrayOfString1)) {
        paramArrayOfString1 = ",";
      } else {
        paramArrayOfString1 = li.৲(paramArrayOfString1);
      }
      localArrayList.add("channel");
      localArrayList.add(paramArrayOfString1);
    }
    if (paramBoolean1) {
      localHashtable.put("state", "1");
    }
    if (!paramBoolean2) {
      localHashtable.put("disable_uuids", "1");
    }
    if ((paramArrayOfString2 != null) && (paramArrayOfString2.length > 0)) {
      localHashtable.put("channel-group", li.ˊ(paramArrayOfString2, ","));
    }
    ˊ(new kn((String[])localArrayList.toArray(new String[localArrayList.size()]), localHashtable, new kw(this, paramki)), this.Oq);
  }
  
  public void ˋ(String paramString, ki paramki)
  {
    Hashtable localHashtable = new Hashtable(2);
    localHashtable.put("channels", new String[] { paramString + this.Ou });
    localHashtable.put("callback", paramki);
    ᐝ(localHashtable);
  }
  
  protected void ˋ(Hashtable paramHashtable)
  {
    Object localObject5 = (String)paramHashtable.get("channel");
    Object localObject4 = paramHashtable.get("message");
    ki localki = ˊ((ki)paramHashtable.get("callback"));
    paramHashtable = (String)paramHashtable.get("storeInHistory");
    Object localObject1 = localObject4.toString();
    Hashtable localHashtable = li.ʽ(this.NW);
    if ((paramHashtable != null) && (paramHashtable.length() > 0)) {
      localHashtable.put("store", paramHashtable);
    }
    if (this.Oh.length() > 0)
    {
      localObject6 = new le(this.Oh, this.Oi);
      paramHashtable = (Hashtable)localObject1;
      if ((localObject4 instanceof String)) {
        localObject4 = localObject1;
      }
      try
      {
        paramHashtable = "\"" + (String)localObject1 + "\"";
        localObject4 = paramHashtable;
        paramHashtable = "\"" + ((le)localObject6).ˤ(paramHashtable) + "\"";
      }
      catch (lh paramHashtable)
      {
        localki.ˊ((String)localObject5, ˊ(paramHashtable, lg.OL, 4, (String)localObject4 + " : " + paramHashtable.toString()));
        return;
      }
    }
    else
    {
      paramHashtable = (Hashtable)localObject1;
      if ((localObject4 instanceof String)) {
        paramHashtable = "\"" + (String)localObject1 + "\"";
      }
    }
    localObject4 = "0";
    localObject1 = localObject4;
    if (this.Og.length() > 0)
    {
      localObject1 = new StringBuffer();
      ((StringBuffer)localObject1).append(this.Oe).append('/').append(this.Of).append('/').append(this.Og).append('/').append((String)localObject5).append('/').append(paramHashtable);
      try
      {
        localObject1 = new String(le.ˈ(le.ι(((StringBuffer)localObject1).toString())), "UTF-8");
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        localki.ˊ((String)localObject5, lg.ˊ(lg.OL, 6, paramHashtable + " : " + localUnsupportedEncodingException.toString()));
        Object localObject2 = localObject4;
      }
      catch (lh locallh)
      {
        localki.ˊ((String)localObject5, ˊ(locallh, lg.OL, 5, paramHashtable + " : " + locallh.toString()));
        localObject3 = localObject4;
      }
    }
    localObject4 = az();
    Object localObject6 = this.Oe;
    String str1 = this.Of;
    Object localObject3 = li.৲((String)localObject3);
    String str2 = li.৲((String)localObject5);
    paramHashtable = li.৲(paramHashtable);
    localObject5 = new la(this, localki, (String)localObject5);
    ˊ(new kn(new String[] { localObject4, "publish", localObject6, str1, localObject3, str2, "0", paramHashtable }, localHashtable, (ll)localObject5), this.Oq);
  }
  
  public void ˋ(String[] paramArrayOfString)
  {
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      String str = paramArrayOfString[i];
      this.On.ᐢ(str);
      this.On.PH.ۦ(str);
      ˁ(str);
      i += 1;
    }
    aC();
  }
  
  protected void ᐝ(Hashtable paramHashtable)
  {
    ˎ(paramHashtable);
    if (!ˏ(paramHashtable)) {
      return;
    }
    ʻ(paramHashtable);
  }
  
  public void ṛ(int paramInt)
  {
    ˊ(paramInt, null);
  }
  
  class if
    extends lq
  {
    private ki OE;
    
    if(int paramInt, ki paramki)
    {
      super();
      this.OE = paramki;
    }
    
    public void run()
    {
      Object localObject = ku.this.ax();
      if (localObject == null) {
        return;
      }
      Hashtable localHashtable = li.ʽ(ku.this.NW);
      if (localHashtable.get("uuid") == null) {
        localHashtable.put("uuid", ku.this.UUID);
      }
      String str = ku.ˊ(ku.this);
      if (str != null) {
        localHashtable.put("state", str);
      }
      if ((ku.ˋ(ku.this) > 0) && (ku.ˋ(ku.this) < 320)) {
        localHashtable.put("heartbeat", String.valueOf(ku.ˋ(ku.this)));
      }
      localObject = new kn((String[])localObject, localHashtable, new lc(this));
      ku.this.ˊ((kn)localObject, ku.this.Oq);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ku
 * JD-Core Version:    0.7.0.1
 */