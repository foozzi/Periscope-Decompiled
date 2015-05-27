.class public Lo/ɭ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Į;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ɭ$1;,
        Lo/ɭ$if;,
        Lo/ɭ$ˊ;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u012e<Ljava/io/InputStream;>;"
    }
.end annotation


# static fields
.field private static final gX:Lo/ɭ$ˊ;


# instance fields
.field private final gY:Lo/ﻣ;

.field private final gZ:Lo/ɭ$ˊ;

.field private ha:Ljava/net/HttpURLConnection;

.field private volatile hb:Z

.field private stream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lo/ɭ$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ɭ$if;-><init>(Lo/ɭ$1;)V

    sput-object v0, Lo/ɭ;->gX:Lo/ɭ$ˊ;

    return-void
.end method

.method public constructor <init>(Lo/ﻣ;)V
    .locals 1

    .line 35
    sget-object v0, Lo/ɭ;->gX:Lo/ɭ$ˊ;

    invoke-direct {p0, p1, v0}, Lo/ɭ;-><init>(Lo/ﻣ;Lo/ɭ$ˊ;)V

    .line 36
    return-void
.end method

.method constructor <init>(Lo/ﻣ;Lo/ɭ$ˊ;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lo/ɭ;->gY:Lo/ﻣ;

    .line 41
    iput-object p2, p0, Lo/ɭ;->gZ:Lo/ɭ$ˊ;

    .line 42
    return-void
.end method

.method private ˊ(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 4

    .line 103
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 105
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    int-to-long v1, v3

    invoke-static {v0, v1, v2}, Lo/ﺰ;->ˊ(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lo/ɭ;->stream:Ljava/io/InputStream;

    .line 106
    goto :goto_0

    .line 107
    :cond_0
    const-string v0, "HttpUrlFetcher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "HttpUrlFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got non empty content encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lo/ɭ;->stream:Ljava/io/InputStream;

    .line 112
    :goto_0
    iget-object v0, p0, Lo/ɭ;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method private ˊ(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/io/InputStream;"
        }
    .end annotation

    .line 51
    const/4 v0, 0x5

    if-lt p2, v0, :cond_0

    .line 52
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too many (> 5) redirects!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Ljava/io/IOException;

    const-string v1, "In re-direct loop"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_1
    goto :goto_0

    .line 60
    :catch_0
    move-exception v3

    .line 64
    :goto_0
    iget-object v0, p0, Lo/ɭ;->gZ:Lo/ɭ$ˊ;

    invoke-interface {v0, p1}, Lo/ɭ$ˊ;->ˊ(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lo/ɭ;->ha:Ljava/net/HttpURLConnection;

    .line 65
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v4, v0

    .line 66
    iget-object v0, p0, Lo/ɭ;->ha:Ljava/net/HttpURLConnection;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_2
    iget-object v0, p0, Lo/ɭ;->ha:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lo/ɭ;->ha:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_3
    iget-object v0, p0, Lo/ɭ;->ha:Ljava/net/HttpURLConnection;

    const/16 v1, 0x9c4

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 74
    iget-object v0, p0, Lo/ɭ;->ha:Ljava/net/HttpURLConnection;

    const/16 v1, 0x9c4

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 75
    iget-object v0, p0, Lo/ɭ;->ha:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 76
    iget-object v0, p0, Lo/ɭ;->ha:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 79
    iget-object v0, p0, Lo/ɭ;->ha:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 80
    iget-boolean v0, p0, Lo/ɭ;->hb:Z

    if-eqz v0, :cond_4

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_4
    iget-object v0, p0, Lo/ɭ;->ha:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 84
    div-int/lit8 v0, v3, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 85
    iget-object v0, p0, Lo/ɭ;->ha:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0}, Lo/ɭ;->ˊ(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 86
    :cond_5
    div-int/lit8 v0, v3, 0x64

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 87
    iget-object v0, p0, Lo/ɭ;->ha:Ljava/net/HttpURLConnection;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 89
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Received empty or null redirect url"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_6
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 92
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v5, v0, p1, p4}, Lo/ɭ;->ˊ(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 94
    :cond_7
    const/4 v0, -0x1

    if-ne v3, v0, :cond_8

    .line 95
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to retrieve response code from HttpUrlConnection."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ɭ;->ha:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ɭ;->hb:Z

    .line 139
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lo/ɭ;->gY:Lo/ﻣ;

    invoke-virtual {v0}, Lo/ﻣ;->亠()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ˊ(Lo/ᔿ;)Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0, p1}, Lo/ɭ;->ˋ(Lo/ᔿ;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(Lo/ᔿ;)Ljava/io/InputStream;
    .locals 4

    .line 46
    iget-object v0, p0, Lo/ɭ;->gY:Lo/ﻣ;

    invoke-virtual {v0}, Lo/ﻣ;->toURL()Ljava/net/URL;

    move-result-object v0

    iget-object v1, p0, Lo/ɭ;->gY:Lo/ﻣ;

    invoke-virtual {v1}, Lo/ﻣ;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lo/ɭ;->ˊ(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public ב()V
    .locals 2

    .line 117
    iget-object v0, p0, Lo/ɭ;->stream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    iget-object v0, p0, Lo/ɭ;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 124
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/ɭ;->ha:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lo/ɭ;->ha:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 127
    :cond_1
    return-void
.end method
