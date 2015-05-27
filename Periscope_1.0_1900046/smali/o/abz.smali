.class final Lo/abz;
.super Lretrofit/ResponseCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic OC:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lo/abz;->OC:Ljava/lang/String;

    invoke-direct {p0}, Lretrofit/ResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 2

    .line 174
    const-string v0, "PsPubnub"

    const-string v1, "failure"

    invoke-static {v0, v1, p1}, Lo/akk;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    return-void
.end method

.method public success(Lretrofit/client/Response;)V
    .locals 7

    .line 151
    const/4 v2, 0x0

    .line 153
    :try_start_0
    invoke-virtual {p1}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    invoke-interface {v0}, Lretrofit/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v0

    .line 154
    new-instance v0, Lo/gb;

    invoke-direct {v0}, Lo/gb;-><init>()V

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lo/gb;->ˊ(Ljava/io/Reader;)Lo/fw;

    move-result-object v3

    .line 155
    invoke-virtual {v3}, Lo/fw;->o()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 158
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lo/fw;->r()Lo/fz;

    move-result-object v4

    .line 159
    const-string v0, "message"

    invoke-virtual {v4, v0}, Lo/fz;->เ(Ljava/lang/String;)Lo/fw;

    move-result-object v5

    .line 160
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lo/fw;->o()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    :cond_1
    const-string v0, "PsPubnub"

    const-string v1, "SIGNER: No message"

    invoke-static {v0, v1}, Lo/akk;->ᐨ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 164
    :cond_2
    :try_start_2
    iget-object v0, p0, Lo/abz;->OC:Ljava/lang/String;

    invoke-virtual {v5}, Lo/fw;->r()Lo/fz;

    move-result-object v1

    invoke-static {v0, v1}, Lo/abx;->ˋ(Ljava/lang/String;Lo/fz;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 169
    goto :goto_0

    .line 165
    :catch_0
    move-exception v3

    .line 166
    const-string v0, "PsPubnub"

    const-string v1, "SIGNER"

    :try_start_3
    invoke-static {v0, v1, v3}, Lo/akk;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 169
    goto :goto_0

    .line 168
    :catchall_0
    move-exception v6

    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .line 170
    :goto_0
    return-void
.end method
