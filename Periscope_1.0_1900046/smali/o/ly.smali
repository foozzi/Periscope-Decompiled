.class public Lo/ly;
.super Lo/ma;
.source ""


# instance fields
.field private final PT:Lo/mg;

.field private final PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/mg;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 36
    invoke-direct {p0, p3}, Lo/ma;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 37
    iput-object p1, p0, Lo/ly;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 38
    iput-object p2, p0, Lo/ly;->PT:Lo/mg;

    .line 39
    return-void
.end method


# virtual methods
.method public execute(Lretrofit/client/Request;)Lretrofit/client/Response;
    .locals 6

    .line 43
    new-instance v0, Lretrofit/client/Request;

    invoke-virtual {p1}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lo/ly;->ˊ(Lretrofit/client/Request;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lretrofit/client/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lretrofit/mime/TypedOutput;)V

    move-object p1, v0

    .line 47
    iget-object v0, p0, Lo/ly;->PV:Lretrofit/client/Client;

    invoke-interface {v0, p1}, Lretrofit/client/Client;->execute(Lretrofit/client/Request;)Lretrofit/client/Response;

    move-result-object v5

    .line 49
    return-object v5
.end method

.method protected ˊ(Lretrofit/client/Request;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lretrofit/client/Request;)Ljava/util/List<Lretrofit/client/Header;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lo/nm;

    invoke-virtual {p1}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/ly;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v4, p0, Lo/ly;->PT:Lo/mg;

    invoke-virtual {p0, p1}, Lo/ly;->ˋ(Lretrofit/client/Request;)Ljava/util/Map;

    move-result-object v6

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lo/nm;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/mg;Ljava/lang/String;Ljava/util/Map;)V

    move-object v7, v0

    .line 57
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lretrofit/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    invoke-virtual {v7}, Lo/nm;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v10, v0

    .line 59
    new-instance v0, Lretrofit/client/Header;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return-object v8
.end method

.method protected ˋ(Lretrofit/client/Request;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lretrofit/client/Request;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation

    .line 69
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 70
    const-string v0, "POST"

    invoke-virtual {p1}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v4

    .line 72
    instance-of v0, v4, Lretrofit/mime/FormUrlEncodedTypedOutput;

    if-eqz v0, :cond_0

    .line 73
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    invoke-interface {v4, v5}, Lretrofit/mime/TypedOutput;->writeTo(Ljava/io/OutputStream;)V

    .line 75
    const-string v0, "UTF-8"

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://twitter.com/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    .line 78
    const-string v0, "UTF-8"

    invoke-static {v7, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    move-object v9, v0

    .line 79
    invoke-interface {v9}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    goto :goto_0

    .line 84
    :cond_0
    return-object v3
.end method
