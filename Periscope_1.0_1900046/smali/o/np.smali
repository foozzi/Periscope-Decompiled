.class public Lo/np;
.super Lo/lz;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/lz<Lretrofit/client/Response;>;"
    }
.end annotation


# instance fields
.field final synthetic Rm:Lo/lz;

.field final synthetic Rn:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;Lo/lz;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lo/np;->Rn:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    iput-object p2, p0, Lo/np;->Rm:Lo/lz;

    invoke-direct {p0}, Lo/lz;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/mf;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/mf<Lretrofit/client/Response;>;)V"
        }
    .end annotation

    .line 184
    const/4 v4, 0x0

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p1, Lo/mf;->data:Ljava/lang/Object;

    check-cast v2, Lretrofit/client/Response;

    invoke-virtual {v2}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v2

    invoke-interface {v2}, Lretrofit/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v0

    .line 192
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 193
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 196
    :cond_0
    if-eqz v4, :cond_2

    .line 197
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 196
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_1

    .line 197
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_1
    throw v7

    .line 200
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 201
    invoke-static {v6}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->וּ(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    move-result-object v7

    .line 202
    if-nez v7, :cond_3

    .line 203
    iget-object v0, p0, Lo/np;->Rm:Lo/lz;

    new-instance v1, Lo/ml;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse auth response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ml;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/lz;->ˊ(Lo/mo;)V

    goto :goto_2

    .line 206
    :cond_3
    iget-object v0, p0, Lo/np;->Rm:Lo/lz;

    new-instance v1, Lo/mf;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Lo/mf;-><init>(Ljava/lang/Object;Lretrofit/client/Response;)V

    invoke-virtual {v0, v1}, Lo/lz;->ˊ(Lo/mf;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 210
    :goto_2
    goto :goto_3

    .line 208
    :catch_0
    move-exception v6

    .line 209
    iget-object v0, p0, Lo/np;->Rm:Lo/lz;

    new-instance v1, Lo/ml;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lo/ml;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lo/lz;->ˊ(Lo/mo;)V

    .line 211
    :goto_3
    return-void
.end method

.method public ˊ(Lo/mo;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lo/np;->Rm:Lo/lz;

    invoke-virtual {v0, p1}, Lo/lz;->ˊ(Lo/mo;)V

    .line 216
    return-void
.end method
