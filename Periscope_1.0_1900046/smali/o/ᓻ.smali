.class Lo/ᓻ;
.super Lo/py;
.source ""

# interfaces
.implements Lo/ᓺ;


# direct methods
.method public constructor <init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;)V
    .locals 6

    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    sget-object v5, Lo/sm;->XP:Lo/sm;

    invoke-direct/range {v0 .. v5}, Lo/py;-><init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;Lo/sm;)V

    .line 38
    return-void
.end method

.method private ˊ(Lo/sn;Lo/ᓚ;)Lo/sn;
    .locals 6

    .line 74
    const-string v0, "X-CRASHLYTICS-API-KEY"

    iget-object v1, p2, Lo/ᓚ;->apiKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lo/sn;->ՙ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lo/sn;->ՙ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-static {}, Lo/ɬ;->ｿ()Lo/ɬ;

    move-result-object v2

    invoke-virtual {v2}, Lo/ɬ;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/sn;->ՙ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object p1

    .line 79
    iget-object v0, p2, Lo/ᓚ;->ox:Lo/ᔪ;

    invoke-interface {v0}, Lo/ᔪ;->ᔦ()Ljava/util/Map;

    move-result-object v3

    .line 81
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v5, v0

    .line 82
    invoke-virtual {p1, v5}, Lo/sn;->ˎ(Ljava/util/Map$Entry;)Lo/sn;

    move-result-object p1

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    return-object p1
.end method

.method private ˋ(Lo/sn;Lo/ᓚ;)Lo/sn;
    .locals 5

    .line 88
    iget-object v4, p2, Lo/ᓚ;->ox:Lo/ᔪ;

    .line 90
    const-string v0, "report[file]"

    invoke-interface {v4}, Lo/ᔪ;->getFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/octet-stream"

    invoke-interface {v4}, Lo/ᔪ;->ᔃ()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lo/sn;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lo/sn;

    move-result-object v0

    const-string v1, "report[identifier]"

    invoke-interface {v4}, Lo/ᔪ;->ｯ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/sn;->ᵎ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ˊ(Lo/ᓚ;)Z
    .locals 6

    .line 58
    invoke-virtual {p0}, Lo/ᓻ;->ck()Lo/sn;

    move-result-object v4

    .line 59
    invoke-direct {p0, v4, p1}, Lo/ᓻ;->ˊ(Lo/sn;Lo/ᓚ;)Lo/sn;

    move-result-object v4

    .line 60
    invoke-direct {p0, v4, p1}, Lo/ᓻ;->ˋ(Lo/sn;Lo/ᓚ;)Lo/sn;

    move-result-object v4

    .line 62
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending report to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lo/ᓻ;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v4}, Lo/sn;->code()I

    move-result v5

    .line 66
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create report request ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X-REQUEST-ID"

    invoke-virtual {v4, v3}, Lo/sn;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {v5}, Lo/qw;->灬(I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
