package tv.periscope.android.push;

import o.go;
import retrofit.RestAdapter;
import retrofit.http.Body;
import retrofit.http.POST;

public class PushClient
{
  private final RestAdapter bpQ;
  private PushService bxJ;
  
  public PushClient(RestAdapter paramRestAdapter)
  {
    this.bpQ = paramRestAdapter;
  }
  
  private PushService wM()
  {
    if (this.bxJ == null) {
      this.bxJ = ((PushService)this.bpQ.create(PushService.class));
    }
    return this.bxJ;
  }
  
  public PushClient.ˊ ˊ(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8)
  {
    if localif = new if();
    localif.bpu = paramString1;
    localif.bxK = paramString2;
    localif.boC = paramString3;
    localif.Qn = paramString4;
    localif.bqc = paramString5;
    localif.bxM = paramString6;
    localif.bxN = paramString7;
    localif.bxO = paramString8;
    return wM().registerToken(localif);
  }
  
  public PushClient.ˎ ᵣ(String paramString1, String paramString2)
  {
    PushClient.ˋ localˋ = new PushClient.ˋ(this);
    localˋ.bpu = paramString1;
    localˋ.bqc = paramString2;
    return wM().logout(localˋ);
  }
  
  static abstract interface PushService
  {
    @POST("/logout")
    public abstract PushClient.ˎ logout(@Body PushClient.ˋ paramˋ);
    
    @POST("/registerToken")
    public abstract PushClient.ˊ registerToken(@Body PushClient.if paramif);
  }
  
  public class if
  {
    @go("token")
    public String Qn;
    @go("vendor_id")
    public String boC;
    @go("cookie")
    public String bpu;
    @go("install_id")
    public String bqc;
    @go("bundle_id")
    public String bxK;
    @go("os")
    public String bxL;
    @go("build")
    public String bxM;
    @go("device_type")
    public String bxN;
    @go("model")
    public String bxO;
    
    public if() {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     tv.periscope.android.push.PushClient
 * JD-Core Version:    0.7.0.1
 */