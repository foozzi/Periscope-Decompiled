package tv.periscope.android.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import o.go;
import o.xn;

public class PsUser
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new xn();
  @go("created_at")
  public String Sp;
  @go("participant_index")
  private int bnl;
  @go("updated_at")
  public String boD;
  @go("n_hearts")
  public int bon;
  @go("profile_image_urls")
  public ArrayList<PsProfileImageUrls> bpA;
  @go("n_followers")
  public int bpB;
  @go("n_following")
  public int bpC;
  @go("n_blocked")
  public int bpD;
  @go("is_following")
  public boolean bpE;
  @go("is_blocked")
  public boolean bpF;
  @go("is_employee")
  public boolean bpG;
  @go("n_hearts_given")
  private int bpH;
  @go("is_twitter_verified")
  public boolean bpI;
  public String bpJ;
  @go("username")
  public String bpx;
  @go("display_name")
  public String bpy;
  @go("initials")
  public String bpz;
  @go("class_name")
  public String className;
  @go("description")
  public String description;
  @go("id")
  public String id;
  
  public PsUser() {}
  
  public PsUser(Parcel paramParcel)
  {
    this.className = paramParcel.readString();
    this.id = paramParcel.readString();
    this.Sp = paramParcel.readString();
    this.boD = paramParcel.readString();
    this.bpx = paramParcel.readString();
    this.bpy = paramParcel.readString();
    this.bpz = paramParcel.readString();
    this.description = paramParcel.readString();
    this.bpA = paramParcel.readArrayList(getClass().getClassLoader());
    this.bpB = paramParcel.readInt();
    this.bpC = paramParcel.readInt();
    boolean bool;
    if (paramParcel.readInt() == 1) {
      bool = true;
    } else {
      bool = false;
    }
    this.bpE = bool;
    if (paramParcel.readInt() == 1) {
      bool = true;
    } else {
      bool = false;
    }
    this.bpF = bool;
    this.bon = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String uj()
  {
    if (this.bpA == null) {
      return this.bpJ;
    }
    if ((this.bpJ == null) && (!this.bpA.isEmpty())) {
      this.bpJ = ((PsProfileImageUrls)this.bpA.get(this.bpA.size() - 1)).url;
    }
    return this.bpJ;
  }
  
  public int uk()
  {
    if (this.bon == 0) {
      return 1;
    }
    return this.bon;
  }
  
  public int ul()
  {
    return this.bnl;
  }
  
  public int um()
  {
    return this.bpH;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.className);
    paramParcel.writeString(this.id);
    paramParcel.writeString(this.Sp);
    paramParcel.writeString(this.boD);
    paramParcel.writeString(this.bpx);
    paramParcel.writeString(this.bpy);
    paramParcel.writeString(this.bpz);
    paramParcel.writeString(this.description);
    paramParcel.writeList(this.bpA);
    paramParcel.writeInt(this.bpB);
    paramParcel.writeInt(this.bpC);
    if (this.bpE) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    paramParcel.writeInt(paramInt);
    if (this.bpF) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    paramParcel.writeInt(paramInt);
    paramParcel.writeInt(this.bon);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     tv.periscope.android.api.PsUser
 * JD-Core Version:    0.7.0.1
 */