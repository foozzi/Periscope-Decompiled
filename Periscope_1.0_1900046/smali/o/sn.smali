.class public Lo/sn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sn$aux;,
        Lo/sn$ˊ;,
        Lo/sn$ˏ;,
        Lo/sn$ˎ;,
        Lo/sn$if;,
        Lo/sn$ˋ;
    }
.end annotation


# static fields
.field private static final XT:[Ljava/lang/String;

.field private static XU:Lo/sn$ˋ;


# instance fields
.field private Av:Ljava/net/HttpURLConnection;

.field private XV:Lo/sn$aux;

.field private XW:Z

.field private XX:Z

.field private XY:Z

.field private XZ:Ljava/lang/String;

.field private Ya:I

.field private final requestMethod:Ljava/lang/String;

.field private sX:I

.field public final url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 253
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lo/sn;->XT:[Ljava/lang/String;

    .line 361
    sget-object v0, Lo/sn$ˋ;->Yg:Lo/sn$ˋ;

    sput-object v0, Lo/sn;->XU:Lo/sn$ˋ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3

    .line 1304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1275
    const/4 v0, 0x0

    iput-object v0, p0, Lo/sn;->Av:Ljava/net/HttpURLConnection;

    .line 1287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/sn;->XX:Z

    .line 1289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/sn;->XY:Z

    .line 1291
    const/16 v0, 0x2000

    iput v0, p0, Lo/sn;->sX:I

    .line 1306
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/sn;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    goto :goto_0

    .line 1307
    :catch_0
    move-exception v2

    .line 1308
    new-instance v0, Lo/sn$ˎ;

    invoke-direct {v0, v2}, Lo/sn$ˎ;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 1310
    :goto_0
    iput-object p2, p0, Lo/sn;->requestMethod:Ljava/lang/String;

    .line 1311
    return-void
.end method

.method private dp()Ljava/net/Proxy;
    .locals 5

    .line 1326
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lo/sn;->XZ:Ljava/lang/String;

    iget v4, p0, Lo/sn;->Ya:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method private dq()Ljava/net/HttpURLConnection;
    .locals 4

    .line 1332
    :try_start_0
    iget-object v0, p0, Lo/sn;->XZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1333
    sget-object v0, Lo/sn;->XU:Lo/sn$ˋ;

    iget-object v1, p0, Lo/sn;->url:Ljava/net/URL;

    invoke-direct {p0}, Lo/sn;->dp()Ljava/net/Proxy;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/sn$ˋ;->ˊ(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v3

    goto :goto_0

    .line 1335
    :cond_0
    sget-object v0, Lo/sn;->XU:Lo/sn$ˋ;

    iget-object v1, p0, Lo/sn;->url:Ljava/net/URL;

    invoke-interface {v0, v1}, Lo/sn$ˋ;->ˋ(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 1336
    :goto_0
    iget-object v0, p0, Lo/sn;->requestMethod:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1337
    return-object v3

    .line 1338
    :catch_0
    move-exception v3

    .line 1339
    new-instance v0, Lo/sn$ˎ;

    invoke-direct {v0, v3}, Lo/sn$ˎ;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public static ˉ(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 11

    .line 757
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    goto :goto_0

    .line 758
    :catch_0
    move-exception v7

    .line 759
    new-instance v0, Lo/sn$ˎ;

    invoke-direct {v0, v7}, Lo/sn$ˎ;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 762
    :goto_0
    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 763
    invoke-virtual {v6}, Ljava/net/URL;->getPort()I

    move-result v8

    .line 764
    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 768
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    move-object v2, v7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v9

    .line 769
    const/16 v0, 0x3f

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 770
    if-lez v10, :cond_1

    add-int/lit8 v0, v10, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v10, 0x1

    const/4 v2, 0x0

    invoke-virtual {v9, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v10, 0x1

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, "%2B"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 773
    :cond_1
    return-object v9

    .line 774
    :catch_1
    move-exception v9

    .line 775
    new-instance v10, Ljava/io/IOException;

    const-string v0, "Parsing URI failed"

    invoke-direct {v10, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v10, v9}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 777
    new-instance v0, Lo/sn$ˎ;

    invoke-direct {v0, v10}, Lo/sn$ˎ;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method static synthetic ˊ(Lo/sn;)I
    .locals 1

    .line 95
    iget v0, p0, Lo/sn;->sX:I

    return v0
.end method

.method public static ˊ(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/CharSequence;Ljava/util/Map<**>;)Ljava/lang/String;"
        }
    .end annotation

    .line 792
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 793
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    :cond_0
    return-object v1

    .line 796
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 798
    invoke-static {v1, v2}, Lo/sn;->ˊ(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 799
    invoke-static {v1, v2}, Lo/sn;->ˋ(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 803
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 804
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 805
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    const/16 v0, 0x3d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 807
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 808
    if-eqz v4, :cond_2

    .line 809
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 811
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 812
    const/16 v0, 0x26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 813
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 814
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    const/16 v0, 0x3d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 816
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 817
    if-eqz v4, :cond_2

    .line 818
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 821
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ˊ(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 313
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 314
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    :cond_0
    return-object p1
.end method

.method public static ˊ(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lo/sn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/CharSequence;Ljava/util/Map<**>;Z)Lo/sn;"
        }
    .end annotation

    .line 901
    invoke-static {p0, p1}, Lo/sn;->ˊ(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 902
    if-eqz p2, :cond_0

    invoke-static {v1}, Lo/sn;->ˉ(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lo/sn;->ˌ(Ljava/lang/CharSequence;)Lo/sn;

    move-result-object v0

    return-object v0
.end method

.method private static ˋ(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4

    .line 320
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 321
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 322
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 323
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 324
    :cond_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1

    .line 325
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    :cond_1
    :goto_0
    return-object p1
.end method

.method public static ˋ(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lo/sn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/CharSequence;Ljava/util/Map<**>;Z)Lo/sn;"
        }
    .end annotation

    .line 957
    invoke-static {p0, p1}, Lo/sn;->ˊ(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 958
    if-eqz p2, :cond_0

    invoke-static {v1}, Lo/sn;->ˉ(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lo/sn;->ˍ(Ljava/lang/CharSequence;)Lo/sn;

    move-result-object v0

    return-object v0
.end method

.method public static ˌ(Ljava/lang/CharSequence;)Lo/sn;
    .locals 2

    .line 874
    new-instance v0, Lo/sn;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lo/sn;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ˍ(Ljava/lang/CharSequence;)Lo/sn;
    .locals 2

    .line 930
    new-instance v0, Lo/sn;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lo/sn;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ˑ(Ljava/lang/CharSequence;)Lo/sn;
    .locals 2

    .line 986
    new-instance v0, Lo/sn;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lo/sn;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ـ(Ljava/lang/CharSequence;)Lo/sn;
    .locals 2

    .line 1042
    new-instance v0, Lo/sn;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lo/sn;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method private static ᵒ(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 260
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 261
    return-object p0

    .line 263
    :cond_0
    const-string v0, "UTF-8"

    return-object v0
.end method

.method static synthetic Ⅰ(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 95
    invoke-static {p0}, Lo/sn;->ᵒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public code()I
    .locals 2

    .line 1389
    :try_start_0
    invoke-virtual {p0}, Lo/sn;->dA()Lo/sn;

    .line 1390
    invoke-virtual {p0}, Lo/sn;->dr()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1391
    :catch_0
    move-exception v1

    .line 1392
    new-instance v0, Lo/sn$ˎ;

    invoke-direct {v0, v1}, Lo/sn$ˎ;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method protected dA()Lo/sn;
    .locals 3

    .line 2445
    iget-object v0, p0, Lo/sn;->XV:Lo/sn$aux;

    if-nez v0, :cond_0

    .line 2446
    return-object p0

    .line 2447
    :cond_0
    iget-boolean v0, p0, Lo/sn;->XW:Z

    if-eqz v0, :cond_1

    .line 2448
    iget-object v0, p0, Lo/sn;->XV:Lo/sn$aux;

    const-string v1, "\r\n--00content0boundary00--\r\n"

    invoke-virtual {v0, v1}, Lo/sn$aux;->ⅰ(Ljava/lang/String;)Lo/sn$aux;

    .line 2449
    :cond_1
    iget-boolean v0, p0, Lo/sn;->XX:Z

    if-eqz v0, :cond_2

    .line 2451
    :try_start_0
    iget-object v0, p0, Lo/sn;->XV:Lo/sn$aux;

    invoke-virtual {v0}, Lo/sn$aux;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2454
    goto :goto_0

    .line 2452
    :catch_0
    move-exception v2

    .line 2454
    goto :goto_0

    .line 2456
    :cond_2
    iget-object v0, p0, Lo/sn;->XV:Lo/sn$aux;

    invoke-virtual {v0}, Lo/sn$aux;->close()V

    .line 2457
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo/sn;->XV:Lo/sn$aux;

    .line 2458
    return-object p0
.end method

.method protected dB()Lo/sn;
    .locals 2

    .line 2470
    :try_start_0
    invoke-virtual {p0}, Lo/sn;->dA()Lo/sn;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 2471
    :catch_0
    move-exception v1

    .line 2472
    new-instance v0, Lo/sn$ˎ;

    invoke-direct {v0, v1}, Lo/sn$ˎ;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method protected dC()Lo/sn;
    .locals 4

    .line 2483
    iget-object v0, p0, Lo/sn;->XV:Lo/sn$aux;

    if-eqz v0, :cond_0

    .line 2484
    return-object p0

    .line 2485
    :cond_0
    invoke-virtual {p0}, Lo/sn;->dr()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2486
    invoke-virtual {p0}, Lo/sn;->dr()Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset"

    invoke-virtual {p0, v0, v1}, Lo/sn;->ٴ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2487
    new-instance v0, Lo/sn$aux;

    invoke-virtual {p0}, Lo/sn;->dr()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget v2, p0, Lo/sn;->sX:I

    invoke-direct {v0, v1, v3, v2}, Lo/sn$aux;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    iput-object v0, p0, Lo/sn;->XV:Lo/sn$aux;

    .line 2488
    return-object p0
.end method

.method protected dD()Lo/sn;
    .locals 2

    .line 2498
    iget-boolean v0, p0, Lo/sn;->XW:Z

    if-nez v0, :cond_0

    .line 2499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/sn;->XW:Z

    .line 2500
    const-string v0, "multipart/form-data; boundary=00content0boundary00"

    invoke-virtual {p0, v0}, Lo/sn;->ⁿ(Ljava/lang/String;)Lo/sn;

    move-result-object v0

    invoke-virtual {v0}, Lo/sn;->dC()Lo/sn;

    .line 2501
    iget-object v0, p0, Lo/sn;->XV:Lo/sn$aux;

    const-string v1, "--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lo/sn$aux;->ⅰ(Ljava/lang/String;)Lo/sn$aux;

    goto :goto_0

    .line 2503
    :cond_0
    iget-object v0, p0, Lo/sn;->XV:Lo/sn$aux;

    const-string v1, "\r\n--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lo/sn$aux;->ⅰ(Ljava/lang/String;)Lo/sn$aux;

    .line 2504
    :goto_0
    return-object p0
.end method

.method public dr()Ljava/net/HttpURLConnection;
    .locals 1

    .line 1354
    iget-object v0, p0, Lo/sn;->Av:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 1355
    invoke-direct {p0}, Lo/sn;->dq()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lo/sn;->Av:Ljava/net/HttpURLConnection;

    .line 1356
    :cond_0
    iget-object v0, p0, Lo/sn;->Av:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public ds()Z
    .locals 2

    .line 1415
    invoke-virtual {p0}, Lo/sn;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected dt()Ljava/io/ByteArrayOutputStream;
    .locals 2

    .line 1558
    invoke-virtual {p0}, Lo/sn;->dz()I

    move-result v1

    .line 1559
    if-lez v1, :cond_0

    .line 1560
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-object v0

    .line 1562
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-object v0
.end method

.method public du()Ljava/lang/String;
    .locals 1

    .line 1591
    invoke-virtual {p0}, Lo/sn;->dx()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/sn;->ᵘ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dv()Ljava/io/BufferedInputStream;
    .locals 3

    .line 1654
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lo/sn;->dw()Ljava/io/InputStream;

    move-result-object v1

    iget v2, p0, Lo/sn;->sX:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public dw()Ljava/io/InputStream;
    .locals 4

    .line 1665
    invoke-virtual {p0}, Lo/sn;->code()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 1667
    :try_start_0
    invoke-virtual {p0}, Lo/sn;->dr()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1670
    goto :goto_0

    .line 1668
    :catch_0
    move-exception v3

    .line 1669
    new-instance v0, Lo/sn$ˎ;

    invoke-direct {v0, v3}, Lo/sn$ˎ;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 1672
    :cond_0
    invoke-virtual {p0}, Lo/sn;->dr()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1673
    if-nez v2, :cond_1

    .line 1675
    :try_start_1
    invoke-virtual {p0}, Lo/sn;->dr()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1678
    goto :goto_0

    .line 1676
    :catch_1
    move-exception v3

    .line 1677
    new-instance v0, Lo/sn$ˎ;

    invoke-direct {v0, v3}, Lo/sn$ˎ;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 1681
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lo/sn;->XY:Z

    if-eqz v0, :cond_2

    const-string v0, "gzip"

    invoke-virtual {p0}, Lo/sn;->dy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1682
    :cond_2
    return-object v2

    .line 1685
    :cond_3
    :try_start_2
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 1686
    :catch_2
    move-exception v3

    .line 1687
    new-instance v0, Lo/sn$ˎ;

    invoke-direct {v0, v3}, Lo/sn$ˎ;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public dx()Ljava/lang/String;
    .locals 2

    .line 2111
    const-string v0, "Content-Type"

    const-string v1, "charset"

    invoke-virtual {p0, v0, v1}, Lo/sn;->י(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dy()Ljava/lang/String;
    .locals 1

    .line 2181
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Lo/sn;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dz()I
    .locals 1

    .line 2350
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lo/sn;->ᵤ(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1912
    invoke-virtual {p0}, Lo/sn;->dB()Lo/sn;

    .line 1913
    invoke-virtual {p0}, Lo/sn;->dr()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .line 2971
    invoke-virtual {p0}, Lo/sn;->dr()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/sn;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/sn;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url()Ljava/net/URL;
    .locals 1

    .line 2962
    invoke-virtual {p0}, Lo/sn;->dr()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lo/sn;
    .locals 1

    .line 2611
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lo/sn;->ˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lo/sn;
    .locals 7

    .line 2651
    const/4 v2, 0x0

    .line 2653
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v0

    .line 2654
    invoke-virtual {p0, p1, p2, p3, v2}, Lo/sn;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lo/sn;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2658
    if-eqz v2, :cond_0

    .line 2660
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2662
    goto :goto_0

    .line 2661
    :catch_0
    move-exception v4

    .line 2662
    :cond_0
    :goto_0
    return-object v3

    .line 2655
    :catch_1
    move-exception v3

    .line 2656
    :try_start_2
    new-instance v0, Lo/sn$ˎ;

    invoke-direct {v0, v3}, Lo/sn$ˎ;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2658
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_1

    .line 2660
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2662
    goto :goto_1

    .line 2661
    :catch_2
    move-exception v6

    .line 2662
    :cond_1
    :goto_1
    throw v5
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lo/sn;
    .locals 2

    .line 2692
    :try_start_0
    invoke-virtual {p0}, Lo/sn;->dD()Lo/sn;

    .line 2693
    invoke-virtual {p0, p1, p2, p3}, Lo/sn;->ˋ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    .line 2694
    iget-object v0, p0, Lo/sn;->XV:Lo/sn$aux;

    invoke-virtual {p0, p4, v0}, Lo/sn;->ˋ(Ljava/io/InputStream;Ljava/io/OutputStream;)Lo/sn;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2697
    goto :goto_0

    .line 2695
    :catch_0
    move-exception v1

    .line 2696
    new-instance v0, Lo/sn$ˎ;

    invoke-direct {v0, v1}, Lo/sn$ˎ;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 2698
    :goto_0
    return-object p0
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/sn;
    .locals 2

    .line 2579
    :try_start_0
    invoke-virtual {p0}, Lo/sn;->dD()Lo/sn;

    .line 2580
    invoke-virtual {p0, p1, p2, p3}, Lo/sn;->ˋ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    .line 2581
    iget-object v0, p0, Lo/sn;->XV:Lo/sn$aux;

    invoke-virtual {v0, p4}, Lo/sn$aux;->ⅰ(Ljava/lang/String;)Lo/sn$aux;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2584
    goto :goto_0

    .line 2582
    :catch_0
    move-exception v1

    .line 2583
    new-instance v0, Lo/sn$ˎ;

    invoke-direct {v0, v1}, Lo/sn$ˎ;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 2585
    :goto_0
    return-object p0
.end method

.method protected ˋ(Ljava/io/InputStream;Ljava/io/OutputStream;)Lo/sn;
    .locals 6

    .line 2402
    new-instance v0, Lo/so;

    iget-boolean v3, p0, Lo/sn;->XX:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lo/so;-><init>(Lo/sn;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lo/so;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sn;

    return-object v0
.end method

.method public ˋ(Ljava/lang/String;Ljava/lang/Number;)Lo/sn;
    .locals 1

    .line 2597
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lo/sn;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lo/sn;

    move-result-object v0

    return-object v0
.end method

.method protected ˋ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/sn;
    .locals 3

    .line 2530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2531
    const-string v0, "form-data; name=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2532
    if-eqz p2, :cond_0

    .line 2533
    const-string v0, "\"; filename=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2534
    :cond_0
    const/16 v0, 0x22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2535
    const-string v0, "Content-Disposition"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/sn;->ᵔ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    .line 2536
    if-eqz p3, :cond_1

    .line 2537
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p3}, Lo/sn;->ᵔ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    .line 2538
    :cond_1
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Lo/sn;->ᐧ(Ljava/lang/CharSequence;)Lo/sn;

    move-result-object v0

    return-object v0
.end method

.method public ˎ(Ljava/lang/String;I)I
    .locals 1

    .line 1975
    invoke-virtual {p0}, Lo/sn;->dB()Lo/sn;

    .line 1976
    invoke-virtual {p0}, Lo/sn;->dr()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/sn;
    .locals 1

    .line 2563
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lo/sn;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    return-object v0
.end method

.method public ˎ(Ljava/util/Map$Entry;)Lo/sn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;)Lo/sn;"
        }
    .end annotation

    .line 1901
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lo/sn;->ՙ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    return-object v0
.end method

.method public ՙ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;
    .locals 1

    .line 1865
    invoke-virtual {p0}, Lo/sn;->dr()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    return-object p0
.end method

.method public י(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2005
    invoke-virtual {p0, p1}, Lo/sn;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lo/sn;->ٴ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected ٴ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 2072
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2073
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 2075
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2076
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 2077
    if-eqz v3, :cond_2

    if-ne v3, v2, :cond_3

    .line 2078
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 2080
    :cond_3
    const/16 v0, 0x3b

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2081
    const/4 v0, -0x1

    if-ne v4, v0, :cond_4

    .line 2082
    move v4, v2

    .line 2084
    :cond_4
    :goto_0
    if-ge v3, v4, :cond_8

    .line 2085
    const/16 v0, 0x3d

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 2086
    const/4 v0, -0x1

    if-eq v5, v0, :cond_6

    if-ge v5, v4, :cond_6

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2087
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2088
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 2089
    if-eqz v7, :cond_6

    .line 2090
    const/4 v0, 0x2

    if-le v7, v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v1, v0, :cond_5

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v1, v0, :cond_5

    .line 2091
    add-int/lit8 v0, v7, -0x1

    const/4 v1, 0x1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2093
    :cond_5
    return-object v6

    .line 2096
    :cond_6
    add-int/lit8 v3, v4, 0x1

    .line 2097
    const/16 v0, 0x3b

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2098
    const/4 v0, -0x1

    if-ne v4, v0, :cond_7

    .line 2099
    move v4, v2

    .line 2100
    :cond_7
    goto/16 :goto_0

    .line 2102
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public ᐧ(Ljava/lang/CharSequence;)Lo/sn;
    .locals 3

    .line 2797
    :try_start_0
    invoke-virtual {p0}, Lo/sn;->dC()Lo/sn;

    .line 2798
    iget-object v0, p0, Lo/sn;->XV:Lo/sn$aux;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/sn$aux;->ⅰ(Ljava/lang/String;)Lo/sn$aux;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2801
    goto :goto_0

    .line 2799
    :catch_0
    move-exception v2

    .line 2800
    new-instance v0, Lo/sn$ˎ;

    invoke-direct {v0, v2}, Lo/sn$ˎ;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 2802
    :goto_0
    return-object p0
.end method

.method public ᔋ(Z)Lo/sn;
    .locals 1

    .line 2141
    invoke-virtual {p0}, Lo/sn;->dr()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 2142
    return-object p0
.end method

.method public ᴵ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;
    .locals 4

    .line 2328
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2329
    const-string v3, "; charset="

    .line 2330
    const-string v0, "Content-Type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/sn;->ՙ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    return-object v0

    .line 2332
    :cond_0
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lo/sn;->ՙ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    return-object v0
.end method

.method public ᵎ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;
    .locals 1

    .line 2549
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lo/sn;->ˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    return-object v0
.end method

.method public ᵔ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;
    .locals 2

    .line 2710
    invoke-virtual {p0, p1}, Lo/sn;->ᐧ(Ljava/lang/CharSequence;)Lo/sn;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Lo/sn;->ᐧ(Ljava/lang/CharSequence;)Lo/sn;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/sn;->ᐧ(Ljava/lang/CharSequence;)Lo/sn;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Lo/sn;->ᐧ(Ljava/lang/CharSequence;)Lo/sn;

    move-result-object v0

    return-object v0
.end method

.method public ᵘ(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1575
    invoke-virtual {p0}, Lo/sn;->dt()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 1577
    :try_start_0
    invoke-virtual {p0}, Lo/sn;->dv()Ljava/io/BufferedInputStream;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lo/sn;->ˋ(Ljava/io/InputStream;Ljava/io/OutputStream;)Lo/sn;

    .line 1578
    invoke-static {p1}, Lo/sn;->ᵒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1579
    :catch_0
    move-exception v2

    .line 1580
    new-instance v0, Lo/sn$ˎ;

    invoke-direct {v0, v2}, Lo/sn$ˎ;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public ᵤ(Ljava/lang/String;)I
    .locals 1

    .line 1962
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lo/sn;->ˎ(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ⁿ(Ljava/lang/String;)Lo/sn;
    .locals 1

    .line 2317
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/sn;->ᴵ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    return-object v0
.end method

.method public ﹽ(I)Lo/sn;
    .locals 1

    .line 1853
    invoke-virtual {p0}, Lo/sn;->dr()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1854
    return-object p0
.end method
