package o;

public class lg
{
  static final lg OJ = new lg(100, "Timeout Occurred");
  static final lg OK = new lg(125, "Internal Error");
  static final lg OL = new lg(115, "Error while encrypting message to be published to Pubnub Cloud .Please contact support with error details.");
  static final lg OM = new lg(116, "Decryption Error. Please contact support with error details.");
  static final lg ON = new lg(117, "Invalid Json. Please contact support with error details.");
  static final lg OO = new lg(121, "JSON Error while processing API response. Please contact support with error details.");
  static final lg OP = new lg(119, "Malformed URL .Please contact support with error details.");
  static final lg OQ = new lg(101, "Pubnub Error");
  static final lg OR = new lg(120, "Error opening url. Please contact support with error details.");
  static final lg OS = new lg(122, "Protocol Exception. Please contact support with error details.");
  static final lg OT = new lg(102, "Connect Exception. Please verify if network is reachable. ");
  static final lg OU = new lg(128, "Unable to get Response Code. Please contact support with error details.");
  static final lg OV = new lg(118, "Unable to get Input Stream. Please contact support with error details.");
  static final lg OW = new lg(123, "Unable to read Input Stream. Please contact support with error details.");
  static final lg OX = new lg(127, "Bad request. Please contact support with error details.");
  static final lg OY = new lg(103, "HTTP Error. Please check network connectivity. Please contact support with error details if issue persists.");
  static final lg OZ = new lg(124, "Bad Gateway. Please contact support with error details.");
  static final lg Pa = new lg(104, "Client Timeout");
  static final lg Pb = new lg(111, "Gateway Timeout");
  static final lg Pc = new lg(125, "Internal Server Error. Please contact support with error details.");
  static final lg Pd = new lg(126, "Parsing Error");
  static final lg Pe = new lg(108, "Pubnub Exception");
  static final lg Pf = new lg(109, "Disconnect");
  static final lg Pg = new lg(110, "Disconnect and Resubscribe");
  static final lg Ph = new lg(112, "Authentication Failure. Incorrect Authentication Key");
  static final lg Pi = new lg(113, "Authentication Failure. Authentication Key is missing");
  static final lg Pj = new lg(114, "ULS configuration failed. Secret Key not configured. ");
  static final lg Pk = new lg(105, "Invalid Signature . Please contact support with error details.");
  static final lg Pl = new lg(106, "Network Error. Please verify if network is reachable.");
  static final lg Pm = new lg(129, "Page Not FoundPlease verify if network is reachable.Please contact support with error details.");
  static final lg Pn = new lg(130, "Subscribe Timeout.");
  static final lg Po = new lg(131, "INVALID ARGUMENTS.");
  static final lg Pp = new lg(132, "Channel Missing.");
  static final lg Pq = new lg(133, "Pubnub Connection not set");
  static final lg Pr = new lg(134, "Channel group name is invalid");
  static final lg Ps = new lg(135, "Error while encrypting/decrypting message.Please contact support with error details.");
  public final int Pt;
  public final fz Pu;
  private final String Pv;
  private String message;
  public final int tB;
  
  private lg(int paramInt1, int paramInt2, String paramString)
  {
    this(paramInt1, paramInt2, paramString, null, null);
  }
  
  private lg(int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    this(paramInt1, paramInt2, paramString1, null, paramString2);
  }
  
  private lg(int paramInt1, int paramInt2, String paramString1, fz paramfz, String paramString2)
  {
    this.Pt = paramInt2;
    this.tB = paramInt1;
    this.Pv = paramString1;
    this.Pu = paramfz;
    this.message = paramString2;
  }
  
  private lg(int paramInt, String paramString)
  {
    this(paramInt, 0, paramString, null, null);
  }
  
  static lg ˊ(lg paramlg, int paramInt)
  {
    return new lg(paramlg.tB, paramInt, paramlg.Pv);
  }
  
  static lg ˊ(lg paramlg, int paramInt, String paramString)
  {
    return new lg(paramlg.tB, paramInt, paramlg.Pv, paramString);
  }
  
  static lg ˊ(lg paramlg, String paramString)
  {
    return new lg(paramlg.tB, paramlg.Pt, paramlg.Pv, paramString);
  }
  
  static lg ˊ(lg paramlg, String paramString, fz paramfz)
  {
    return new lg(paramlg.tB, paramlg.Pt, paramlg.Pv, paramfz, paramString);
  }
  
  public String toString()
  {
    Object localObject2 = "[Error: " + this.tB + "-" + this.Pt + "] : " + this.Pv;
    Object localObject1 = localObject2;
    if (this.Pu != null) {
      localObject1 = (String)localObject2 + " : " + this.Pu;
    }
    localObject2 = localObject1;
    if (this.message != null)
    {
      localObject2 = localObject1;
      if (this.message.length() > 0) {
        localObject2 = (String)localObject1 + " : " + this.message;
      }
    }
    return localObject2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.lg
 * JD-Core Version:    0.7.0.1
 */