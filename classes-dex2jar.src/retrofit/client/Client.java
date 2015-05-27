package retrofit.client;

public abstract interface Client
{
  public abstract Response execute(Request paramRequest);
  
  public static abstract interface Provider
  {
    public abstract Client get();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.client.Client
 * JD-Core Version:    0.7.0.1
 */