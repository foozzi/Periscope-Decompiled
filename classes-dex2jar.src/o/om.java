package o;

import java.util.List;

public class om
{
  @go("in_reply_to_user_id_str")
  public final String SA;
  @go("lang")
  public final String SB;
  @go("place")
  public final oh SC;
  @go("possibly_sensitive")
  public final boolean SD;
  @go("scopes")
  public final Object SE;
  @go("retweet_count")
  public final int SF;
  @go("retweeted")
  public final boolean SG;
  @go("retweeted_status")
  public final om SH;
  @go("source")
  public final String SI;
  @go("truncated")
  public final boolean SJ;
  @go("user")
  public final oo SK;
  @go("withheld_copyright")
  public final boolean SL;
  @go("withheld_in_countries")
  public final List<String> SM;
  @go("withheld_scope")
  public final String SN;
  @go("coordinates")
  public final og So;
  @go("created_at")
  public final String Sp;
  @go("current_user_retweet")
  public final Object Sq;
  @go("entities")
  public final on Sr;
  @go("favorite_count")
  public final Integer Ss;
  @go("favorited")
  public final boolean St;
  @go("filter_level")
  public final String Su;
  @go("id_str")
  public final String Sv;
  @go("in_reply_to_screen_name")
  public final String Sw;
  @go("in_reply_to_status_id")
  public final long Sx;
  @go("in_reply_to_status_id_str")
  public final String Sy;
  @go("in_reply_to_user_id")
  public final long Sz;
  @go("id")
  public final long id;
  @go("text")
  public final String zy;
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    if (!(paramObject instanceof om)) {
      return false;
    }
    paramObject = (om)paramObject;
    return this.id == paramObject.id;
  }
  
  public int hashCode()
  {
    return (int)this.id;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.om
 * JD-Core Version:    0.7.0.1
 */