package o;

import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import retrofit.client.Response;

public class np
  extends lz<Response>
{
  public np(OAuth1aService paramOAuth1aService, lz paramlz) {}
  
  /* Error */
  public void ˊ(mf<Response> parammf)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 25	java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial 26	java/lang/StringBuilder:<init>	()V
    //   9: astore_3
    //   10: new 28	java/io/BufferedReader
    //   13: dup
    //   14: new 30	java/io/InputStreamReader
    //   17: dup
    //   18: aload_1
    //   19: getfield 36	o/mf:data	Ljava/lang/Object;
    //   22: checkcast 38	retrofit/client/Response
    //   25: invokevirtual 42	retrofit/client/Response:getBody	()Lretrofit/mime/TypedInput;
    //   28: invokeinterface 48 1 0
    //   33: invokespecial 51	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   36: invokespecial 54	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   39: astore_1
    //   40: aload_1
    //   41: astore_2
    //   42: aload_1
    //   43: invokevirtual 58	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   46: astore 4
    //   48: aload 4
    //   50: ifnull +15 -> 65
    //   53: aload_1
    //   54: astore_2
    //   55: aload_3
    //   56: aload 4
    //   58: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: pop
    //   62: goto -22 -> 40
    //   65: aload_1
    //   66: ifnull +21 -> 87
    //   69: aload_1
    //   70: invokevirtual 65	java/io/BufferedReader:close	()V
    //   73: goto +14 -> 87
    //   76: astore_1
    //   77: aload_2
    //   78: ifnull +7 -> 85
    //   81: aload_2
    //   82: invokevirtual 65	java/io/BufferedReader:close	()V
    //   85: aload_1
    //   86: athrow
    //   87: aload_3
    //   88: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   91: astore_1
    //   92: aload_1
    //   93: invokestatic 74	com/twitter/sdk/android/core/internal/oauth/OAuth1aService:וּ	(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;
    //   96: astore_2
    //   97: aload_2
    //   98: ifnonnull +39 -> 137
    //   101: aload_0
    //   102: getfield 15	o/np:Rm	Lo/lz;
    //   105: new 76	o/ml
    //   108: dup
    //   109: new 25	java/lang/StringBuilder
    //   112: dup
    //   113: invokespecial 26	java/lang/StringBuilder:<init>	()V
    //   116: ldc 78
    //   118: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: aload_1
    //   122: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   128: invokespecial 81	o/ml:<init>	(Ljava/lang/String;)V
    //   131: invokevirtual 84	o/lz:ˊ	(Lo/mo;)V
    //   134: goto +19 -> 153
    //   137: aload_0
    //   138: getfield 15	o/np:Rm	Lo/lz;
    //   141: new 32	o/mf
    //   144: dup
    //   145: aload_2
    //   146: aconst_null
    //   147: invokespecial 87	o/mf:<init>	(Ljava/lang/Object;Lretrofit/client/Response;)V
    //   150: invokevirtual 89	o/lz:ˊ	(Lo/mf;)V
    //   153: return
    //   154: astore_1
    //   155: aload_0
    //   156: getfield 15	o/np:Rm	Lo/lz;
    //   159: new 76	o/ml
    //   162: dup
    //   163: aload_1
    //   164: invokevirtual 92	java/io/IOException:getMessage	()Ljava/lang/String;
    //   167: aload_1
    //   168: invokespecial 95	o/ml:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   171: invokevirtual 84	o/lz:ˊ	(Lo/mo;)V
    //   174: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	175	0	this	np
    //   0	175	1	parammf	mf<Response>
    //   1	145	2	localObject	java.lang.Object
    //   9	79	3	localStringBuilder	java.lang.StringBuilder
    //   46	11	4	str	java.lang.String
    // Exception table:
    //   from	to	target	type
    //   10	40	76	finally
    //   42	48	76	finally
    //   55	62	76	finally
    //   69	73	154	java/io/IOException
    //   81	85	154	java/io/IOException
    //   85	87	154	java/io/IOException
    //   87	97	154	java/io/IOException
    //   101	134	154	java/io/IOException
    //   137	153	154	java/io/IOException
  }
  
  public void ˊ(mo parammo)
  {
    this.Rm.ˊ(parammo);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.np
 * JD-Core Version:    0.7.0.1
 */