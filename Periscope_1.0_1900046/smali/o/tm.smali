.class Lo/tm;
.super Lo/py;
.source ""

# interfaces
.implements Lo/ty;


# direct methods
.method public constructor <init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;)V
    .locals 6

    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    sget-object v5, Lo/sm;->XO:Lo/sm;

    invoke-direct/range {v0 .. v5}, Lo/tm;-><init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;Lo/sm;)V

    .line 43
    return-void
.end method

.method constructor <init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;Lo/sm;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p5}, Lo/py;-><init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;Lo/sm;)V

    .line 51
    return-void
.end method

.method private ˊ(Lo/sn;Lo/tx;)Lo/sn;
    .locals 3

    .line 133
    const-string v0, "X-CRASHLYTICS-API-KEY"

    iget-object v1, p2, Lo/tx;->apiKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lo/sn;->ՙ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lo/sn;->ՙ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-D"

    iget-object v2, p2, Lo/tx;->Zy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/sn;->ՙ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v2, p0, Lo/tm;->Rw:Lo/pq;

    invoke-virtual {v2}, Lo/pq;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/sn;->ՙ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lo/sn;->ՙ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    return-object v0
.end method

.method private ˋ(Lo/tx;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/tx;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation

    .line 115
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 116
    const-string v0, "build_version"

    iget-object v1, p1, Lo/tx;->qp:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "display_version"

    iget-object v1, p1, Lo/tx;->qo:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v0, "source"

    iget v1, p1, Lo/tx;->YC:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p1, Lo/tx;->Zz:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "icon_hash"

    iget-object v1, p1, Lo/tx;->Zz:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    iget-object v3, p1, Lo/tx;->qq:Ljava/lang/String;

    .line 125
    invoke-static {v3}, Lo/qh;->ՙ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    const-string v0, "instance"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_1
    return-object v2
.end method

.method private ﯩ(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 106
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 107
    :catch_0
    move-exception v4

    .line 108
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse settings JSON from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lo/tm;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4}, Lo/ps;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ˊ(Lo/tx;)Lorg/json/JSONObject;
    .locals 8

    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x0

    .line 59
    :try_start_0
    invoke-direct {p0, p1}, Lo/tm;->ˋ(Lo/tx;)Ljava/util/Map;

    move-result-object v6

    .line 60
    invoke-virtual {p0, v6}, Lo/tm;->ˊ(Ljava/util/Map;)Lo/sn;

    move-result-object v0

    move-object v5, v0

    .line 61
    invoke-direct {p0, v5, p1}, Lo/tm;->ˊ(Lo/sn;Lo/tx;)Lo/sn;

    move-result-object v0

    move-object v5, v0

    .line 63
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting settings from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lo/tm;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings query params were: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v5}, Lo/tm;->ˋ(Lo/sn;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 68
    if-eqz v5, :cond_1

    .line 69
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings request ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X-REQUEST-ID"

    invoke-virtual {v5, v3}, Lo/sn;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_0

    .line 69
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings request ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X-REQUEST-ID"

    invoke-virtual {v5, v3}, Lo/sn;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    throw v7

    .line 74
    :cond_1
    :goto_0
    return-object v4
.end method

.method ˋ(Lo/sn;)Lorg/json/JSONObject;
    .locals 6

    .line 79
    invoke-virtual {p1}, Lo/sn;->code()I

    move-result v4

    .line 80
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings result was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v4}, Lo/tm;->ﺋ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Lo/sn;->du()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/tm;->ﯩ(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to retrieve settings from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lo/tm;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ᐨ(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v5, 0x0

    .line 89
    :goto_0
    return-object v5
.end method

.method ﺋ(I)Z
    .locals 1

    .line 98
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xca

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcb

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
