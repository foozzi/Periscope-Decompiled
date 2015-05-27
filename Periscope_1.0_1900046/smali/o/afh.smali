.class Lo/afh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bBZ:Lo/aet$ˋ;


# direct methods
.method constructor <init>(Lo/aet$ˋ;)V
    .locals 0

    .line 1299
    iput-object p1, p0, Lo/afh;->bBZ:Lo/aet$ˋ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1302
    new-instance v0, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    const-string v1, "PUT"

    const-string v2, "image/jpeg"

    invoke-static {v2}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v2

    iget-object v3, p0, Lo/afh;->bBZ:Lo/aet$ˋ;

    iget-object v3, v3, Lo/aet$ˋ;->bBY:[B

    invoke-static {v2, v3}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lo/afh;->bBZ:Lo/aet$ˋ;

    iget-object v1, v1, Lo/aet$ˋ;->boi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v4

    .line 1306
    new-instance v5, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v5}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 1308
    :try_start_0
    invoke-virtual {v5, v4}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v6

    .line 1309
    invoke-virtual {v6}, Lcom/squareup/okhttp/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1310
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thumb upload failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/squareup/okhttp/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐨ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1314
    :cond_0
    goto :goto_0

    .line 1312
    :catch_0
    move-exception v6

    .line 1313
    const-string v0, "RTMP"

    const-string v1, "thumbnail upload"

    invoke-static {v0, v1, v6}, Lo/akk;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1315
    :goto_0
    iget-object v0, p0, Lo/afh;->bBZ:Lo/aet$ˋ;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/aet$ˋ;->boi:Ljava/lang/String;

    .line 1316
    iget-object v0, p0, Lo/afh;->bBZ:Lo/aet$ˋ;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/aet$ˋ;->bBY:[B

    .line 1317
    return-void
.end method
