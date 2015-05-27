.class public Lo/mj;
.super Lo/mo;
.source ""


# instance fields
.field private final Qi:Lretrofit/RetrofitError;

.field private final Qj:Lo/mq;

.field private final Qk:Lo/of;


# direct methods
.method constructor <init>(Lretrofit/RetrofitError;)V
    .locals 1

    .line 36
    invoke-static {p1}, Lo/mj;->ˊ(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/mo;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/mj;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 39
    iput-object p1, p0, Lo/mj;->Qi:Lretrofit/RetrofitError;

    .line 40
    invoke-static {p1}, Lo/mj;->ˋ(Lretrofit/RetrofitError;)Lo/mq;

    move-result-object v0

    iput-object v0, p0, Lo/mj;->Qj:Lo/mq;

    .line 41
    invoke-static {p1}, Lo/mj;->ˏ(Lretrofit/RetrofitError;)Lo/of;

    move-result-object v0

    iput-object v0, p0, Lo/mj;->Qk:Lo/of;

    .line 42
    return-void
.end method

.method private static ˊ(Lretrofit/RetrofitError;)Ljava/lang/String;
    .locals 2

    .line 45
    invoke-virtual {p0}, Lretrofit/RetrofitError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lretrofit/RetrofitError;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit/client/Response;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_1
    const-string v0, "unknown error"

    return-object v0
.end method

.method private static ˋ(Lretrofit/RetrofitError;)Lo/mq;
    .locals 2

    .line 55
    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lo/mq;

    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/mq;-><init>(Ljava/util/List;)V

    return-object v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final ˎ(Lretrofit/RetrofitError;)Lo/mj;
    .locals 1

    .line 93
    new-instance v0, Lo/mj;

    invoke-direct {v0, p0}, Lo/mj;-><init>(Lretrofit/RetrofitError;)V

    return-object v0
.end method

.method public static ˏ(Lretrofit/RetrofitError;)Lo/of;
    .locals 6

    .line 97
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_1
    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    check-cast v0, Lretrofit/mime/TypedByteArray;

    invoke-virtual {v0}, Lretrofit/mime/TypedByteArray;->getBytes()[B

    move-result-object v3

    .line 104
    if-nez v3, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_2
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {v4, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 108
    invoke-static {v4}, Lo/mj;->ᕽ(Ljava/lang/String;)Lo/of;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 109
    :catch_0
    move-exception v5

    .line 110
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Failed to convert to string"

    invoke-interface {v0, v1, v2, v5}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method static ᕽ(Ljava/lang/String;)Lo/of;
    .locals 7

    .line 116
    new-instance v4, Lo/fl;

    invoke-direct {v4}, Lo/fl;-><init>()V

    .line 119
    :try_start_0
    new-instance v0, Lo/gb;

    invoke-direct {v0}, Lo/gb;-><init>()V

    invoke-virtual {v0, p0}, Lo/gb;->ᐤ(Ljava/lang/String;)Lo/fw;

    move-result-object v0

    invoke-virtual {v0}, Lo/fw;->r()Lo/fz;

    move-result-object v5

    .line 120
    const-string v0, "errors"

    invoke-virtual {v5, v0}, Lo/fz;->เ(Ljava/lang/String;)Lo/fw;

    move-result-object v0

    const-class v1, [Lo/of;

    invoke-virtual {v4, v0, v1}, Lo/fl;->ˊ(Lo/fw;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/of;

    move-object v6, v0

    .line 122
    array-length v0, v6
    :try_end_0
    .catch Lo/gf; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, v6, v0
    :try_end_1
    .catch Lo/gf; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 128
    :catch_0
    move-exception v5

    .line 129
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v5}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    goto :goto_0

    .line 130
    :catch_1
    move-exception v5

    .line 131
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v5}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
