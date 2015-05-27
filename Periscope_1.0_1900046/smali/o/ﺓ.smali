.class Lo/ﺓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/rt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/rt<Lo/\ufb4d;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/כֿ;)[B
    .locals 2

    .line 32
    invoke-virtual {p0, p1}, Lo/ﺓ;->ˋ(Lo/כֿ;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public ˋ(Lo/כֿ;)Lorg/json/JSONObject;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 40
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 41
    iget-object v4, p1, Lo/כֿ;->pB:Lo/ﮈ;

    .line 42
    const-string v0, "appBundleId"

    iget-object v1, v4, Lo/ﮈ;->pT:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v0, "executionId"

    iget-object v1, v4, Lo/ﮈ;->pU:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v0, "installationId"

    iget-object v1, v4, Lo/ﮈ;->pV:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v0, "androidId"

    iget-object v1, v4, Lo/ﮈ;->pW:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v0, "advertisingId"

    iget-object v1, v4, Lo/ﮈ;->pX:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v0, "betaDeviceToken"

    iget-object v1, v4, Lo/ﮈ;->pY:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v0, "buildId"

    iget-object v1, v4, Lo/ﮈ;->nn:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v0, "osVersion"

    iget-object v1, v4, Lo/ﮈ;->pZ:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v0, "deviceModel"

    iget-object v1, v4, Lo/ﮈ;->qa:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v0, "appVersionCode"

    iget-object v1, v4, Lo/ﮈ;->qb:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v0, "appVersionName"

    iget-object v1, v4, Lo/ﮈ;->qc:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v0, "timestamp"

    iget-wide v1, p1, Lo/כֿ;->timestamp:J

    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 54
    const-string v0, "type"

    iget-object v1, p1, Lo/כֿ;->pC:Lo/כֿ$if;

    invoke-virtual {v1}, Lo/כֿ$if;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v0, "details"

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lo/כֿ;->pD:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v0, "customType"

    iget-object v1, p1, Lo/כֿ;->pE:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v0, "customAttributes"

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lo/כֿ;->pF:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-object v3

    .line 59
    :catch_0
    move-exception v3

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 61
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 63
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic ᑊ(Ljava/lang/Object;)[B
    .locals 1

    .line 11
    move-object v0, p1

    check-cast v0, Lo/כֿ;

    invoke-virtual {p0, v0}, Lo/ﺓ;->ˊ(Lo/כֿ;)[B

    move-result-object v0

    return-object v0
.end method
