.class abstract Lo/tb;
.super Lo/py;
.source ""


# direct methods
.method public constructor <init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;Lo/sm;)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p5}, Lo/py;-><init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;Lo/sm;)V

    .line 47
    return-void
.end method

.method private ˊ(Lo/sn;Lo/te;)Lo/sn;
    .locals 3

    .line 75
    const-string v0, "X-CRASHLYTICS-API-KEY"

    iget-object v1, p2, Lo/te;->apiKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lo/sn;->ՙ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lo/sn;->ՙ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v2, p0, Lo/tb;->Rw:Lo/pq;

    invoke-virtual {v2}, Lo/pq;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/sn;->ՙ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    return-object v0
.end method

.method private ˋ(Lo/sn;Lo/te;)Lo/sn;
    .locals 7

    .line 85
    const-string v0, "app[identifier]"

    iget-object v1, p2, Lo/te;->YA:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lo/sn;->ᵎ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    const-string v1, "app[name]"

    iget-object v2, p2, Lo/te;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/sn;->ᵎ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    const-string v1, "app[display_version]"

    iget-object v2, p2, Lo/te;->qo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/sn;->ᵎ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    const-string v1, "app[build_version]"

    iget-object v2, p2, Lo/te;->qp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/sn;->ᵎ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    const-string v1, "app[source]"

    iget v2, p2, Lo/te;->YC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/sn;->ˋ(Ljava/lang/String;Ljava/lang/Number;)Lo/sn;

    move-result-object v0

    const-string v1, "app[minimum_sdk_version]"

    iget-object v2, p2, Lo/te;->YD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/sn;->ᵎ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    const-string v1, "app[built_sdk_version]"

    iget-object v2, p2, Lo/te;->YE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/sn;->ᵎ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object p1

    .line 93
    iget-object v0, p2, Lo/te;->YB:Ljava/lang/String;

    invoke-static {v0}, Lo/qh;->ՙ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const-string v0, "app[instance_identifier]"

    iget-object v1, p2, Lo/te;->YB:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lo/sn;->ᵎ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    .line 97
    :cond_0
    iget-object v0, p2, Lo/te;->YF:Lo/to;

    if-eqz v0, :cond_1

    .line 98
    const/4 v4, 0x0

    .line 101
    :try_start_0
    iget-object v0, p0, Lo/tb;->Rw:Lo/pq;

    invoke-virtual {v0}, Lo/pq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p2, Lo/te;->YF:Lo/to;

    iget v1, v1, Lo/to;->YV:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    move-object v4, v0

    .line 104
    const-string v0, "app[icon][hash]"

    iget-object v1, p2, Lo/te;->YF:Lo/to;

    iget-object v1, v1, Lo/to;->Yz:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lo/sn;->ᵎ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    move-result-object v0

    const-string v1, "app[icon][data]"

    const-string v2, "icon.png"

    const-string v3, "application/octet-stream"

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/sn;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lo/sn;

    move-result-object v0

    const-string v1, "app[icon][width]"

    iget-object v2, p2, Lo/te;->YF:Lo/to;

    iget v2, v2, Lo/to;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/sn;->ˋ(Ljava/lang/String;Ljava/lang/Number;)Lo/sn;

    move-result-object v0

    const-string v1, "app[icon][height]"

    iget-object v2, p2, Lo/te;->YF:Lo/to;

    iget v2, v2, Lo/to;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/sn;->ˋ(Ljava/lang/String;Ljava/lang/Number;)Lo/sn;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    const-string v0, "Failed to close app icon InputStream."

    invoke-static {v4, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 114
    goto :goto_0

    .line 108
    :catch_0
    move-exception v5

    .line 109
    :try_start_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find app icon with resource ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lo/te;->YF:Lo/to;

    iget v3, v3, Lo/to;->YV:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v5}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    const-string v0, "Failed to close app icon InputStream."

    invoke-static {v4, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 114
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v6

    const-string v0, "Failed to close app icon InputStream."

    invoke-static {v4, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v6

    .line 117
    :cond_1
    :goto_0
    iget-object v0, p2, Lo/te;->YG:Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p2, Lo/te;->YG:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/pq;

    move-object v5, v0

    .line 119
    invoke-virtual {v5}, Lo/pq;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v6, ""

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Lo/pq;->getVersion()Ljava/lang/String;

    move-result-object v6

    .line 120
    :goto_2
    invoke-virtual {p0, v5}, Lo/tb;->ˎ(Lo/pq;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Lo/sn;->ᵎ(Ljava/lang/String;Ljava/lang/String;)Lo/sn;

    .line 121
    goto :goto_1

    .line 124
    :cond_3
    return-object p1
.end method


# virtual methods
.method public ˊ(Lo/te;)Z
    .locals 7

    .line 51
    invoke-virtual {p0}, Lo/tb;->ck()Lo/sn;

    move-result-object v4

    .line 52
    invoke-direct {p0, v4, p1}, Lo/tb;->ˊ(Lo/sn;Lo/te;)Lo/sn;

    move-result-object v4

    .line 53
    invoke-direct {p0, v4, p1}, Lo/tb;->ˋ(Lo/sn;Lo/te;)Lo/sn;

    move-result-object v4

    .line 55
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending app info to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lo/tb;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p1, Lo/te;->YF:Lo/to;

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App icon hash is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lo/te;->YF:Lo/to;

    iget-object v3, v3, Lo/to;->Yz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App icon size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lo/te;->YF:Lo/to;

    iget v3, v3, Lo/to;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lo/te;->YF:Lo/to;

    iget v3, v3, Lo/to;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-virtual {v4}, Lo/sn;->code()I

    move-result v5

    .line 64
    const-string v0, "POST"

    invoke-virtual {v4}, Lo/sn;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v6, "Create"

    goto :goto_0

    :cond_1
    const-string v6, "Update"

    .line 67
    :goto_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " app request ID: "

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

    .line 69
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {v5}, Lo/qw;->灬(I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method ˎ(Lo/pq;)Ljava/lang/String;
    .locals 3

    .line 128
    invoke-virtual {p1}, Lo/pq;->ｯ()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lo/pq;->ｯ()Ljava/lang/String;

    move-result-object v2

    .line 129
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app[build][libraries]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
