package o;

import android.text.TextUtils;

public class xh
{
  @go("country")
  public String Sg;
  @go("created_at")
  public String Sp;
  @go("profile_image_url")
  public String Tk;
  @go("status")
  public String YW;
  @go("updated_at")
  public String boD;
  @go("user_display_name")
  public String boE;
  @go("state")
  public String boF;
  @go("is_locked")
  public boolean boG;
  @go("start")
  public String boH;
  @go("end")
  public String boI;
  @go("ping")
  public String boJ;
  @go("timedout")
  public String boK;
  @go("has_location")
  public boolean boL;
  @go("city")
  public String boM;
  @go("country_state")
  public String boN;
  @go("ip_lat")
  public double boO;
  @go("ip_lng")
  public double boP;
  @go("image_url")
  public String boQ;
  @go("n_watching")
  public int boR;
  @go("n_web_watching")
  public int boS;
  @go("available_for_replay")
  public boolean boT;
  @go("featured")
  public boolean boU;
  @go("is_trusted")
  public boolean boV;
  @go("sort_score")
  public long boW;
  public transient boolean boX;
  private transient long boY;
  private transient if boZ;
  @go("class_name")
  public String className;
  @go("height")
  public int height;
  @go("id")
  public String id;
  private transient String mLocation;
  @go("user_id")
  public String nD;
  @go("width")
  public int width;
  
  public String getLocation()
  {
    if (this.mLocation == null) {
      if ((!TextUtils.isEmpty(this.boM)) && (!TextUtils.isEmpty(this.boN)) && (TextUtils.isEmpty(this.Sg))) {
        this.mLocation = (this.boM + ", " + this.boN + " " + this.Sg);
      } else if ((!TextUtils.isEmpty(this.boM)) && (!TextUtils.isEmpty(this.Sg))) {
        this.mLocation = (this.boM + ", " + this.Sg);
      } else if (!TextUtils.isEmpty(this.Sg)) {
        this.mLocation = this.Sg;
      } else {
        this.mLocation = "";
      }
    }
    return this.mLocation;
  }
  
  public String getTitle()
  {
    if (this.YW != null) {
      return this.YW.trim();
    }
    return null;
  }
  
  public long ud()
  {
    if (this.boY == 0L) {
      this.boY = akn.ᔥ(this.Sp);
    }
    return this.boY;
  }
  
  public long ue()
  {
    return akn.ᔥ(this.boH);
  }
  
  public long uf()
  {
    if (anw.ᐨ(this.boI)) {
      return akn.ᔥ(this.boI);
    }
    return System.currentTimeMillis();
  }
  
  public if ug()
  {
    if (this.boZ != null) {
      return this.boZ;
    }
    String str = this.boF;
    int i = -1;
    switch (str.hashCode())
    {
    default: 
      break;
    case -1391247659: 
      if (str.equals("NOT_STARTED")) {
        i = 0;
      }
      break;
    case -60968498: 
      if (str.equals("PUBLISHED")) {
        i = 1;
      }
      break;
    case -2026200673: 
      if (str.equals("RUNNING")) {
        i = 2;
      }
      break;
    case -1466757626: 
      if (str.equals("TIMED_OUT")) {
        i = 3;
      }
      break;
    case 66114202: 
      if (str.equals("ENDED")) {
        i = 4;
      }
      break;
    }
    switch (i)
    {
    default: 
      break;
    case 0: 
      this.boZ = if.bpa;
      break;
    case 1: 
      this.boZ = if.bpb;
      break;
    case 2: 
      this.boZ = if.bpc;
      break;
    case 3: 
      this.boZ = if.bpd;
      break;
    case 4: 
      this.boZ = if.bpe;
    }
    return this.boZ;
  }
  
  public boolean uh()
  {
    return ug() == if.bpc;
  }
  
  public int ui()
  {
    return this.boR + this.boS;
  }
  
  public boolean ﮈ()
  {
    if localif = ug();
    return (localif == if.bpe) || (localif == if.bpd);
  }
  
  public static enum if
  {
    private if() {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.xh
 * JD-Core Version:    0.7.0.1
 */