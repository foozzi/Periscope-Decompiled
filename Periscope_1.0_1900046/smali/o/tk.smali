.class Lo/tk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/tt;


# instance fields
.field private final Rw:Lo/pq;

.field private final YN:Lo/tx;

.field private final YO:Lo/tw;

.field private final YP:Lo/th;

.field private final YQ:Lo/ty;

.field private final pr:Lo/sx;

.field private final ql:Lo/qk;


# direct methods
.method public constructor <init>(Lo/pq;Lo/tx;Lo/qk;Lo/tw;Lo/th;Lo/ty;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lo/tk;->Rw:Lo/pq;

    .line 38
    iput-object p2, p0, Lo/tk;->YN:Lo/tx;

    .line 39
    iput-object p3, p0, Lo/tk;->ql:Lo/qk;

    .line 40
    iput-object p4, p0, Lo/tk;->YO:Lo/tw;

    .line 41
    iput-object p5, p0, Lo/tk;->YP:Lo/th;

    .line 42
    iput-object p6, p0, Lo/tk;->YQ:Lo/ty;

    .line 43
    new-instance v0, Lo/sy;

    iget-object v1, p0, Lo/tk;->Rw:Lo/pq;

    invoke-direct {v0, v1}, Lo/sy;-><init>(Lo/pq;)V

    iput-object v0, p0, Lo/tk;->pr:Lo/sx;

    .line 44
    return-void
.end method

.method private ˊ(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4

    .line 126
    iget-object v0, p0, Lo/tk;->Rw:Lo/pq;

    invoke-virtual {v0}, Lo/pq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/qh;->יּ(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lo/tk;->YO:Lo/tw;

    invoke-interface {v0, p1}, Lo/tw;->ʻ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 130
    :cond_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method private ˋ(Lo/ts;)Lo/tu;
    .locals 9

    .line 88
    const/4 v4, 0x0

    .line 91
    :try_start_0
    sget-object v0, Lo/ts;->Zn:Lo/ts;

    invoke-virtual {v0, p1}, Lo/ts;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 92
    iget-object v0, p0, Lo/tk;->YP:Lo/th;

    invoke-interface {v0}, Lo/th;->dI()Lorg/json/JSONObject;

    move-result-object v5

    .line 94
    if-eqz v5, :cond_3

    .line 95
    iget-object v0, p0, Lo/tk;->YO:Lo/tw;

    iget-object v1, p0, Lo/tk;->ql:Lo/qk;

    invoke-interface {v0, v1, v5}, Lo/tw;->ˊ(Lo/qk;Lorg/json/JSONObject;)Lo/tu;

    move-result-object v6

    .line 98
    if-eqz v6, :cond_2

    .line 99
    const-string v0, "Loaded cached settings: "

    invoke-direct {p0, v5, v0}, Lo/tk;->ˊ(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lo/tk;->ql:Lo/qk;

    invoke-interface {v0}, Lo/qk;->cy()J

    move-result-wide v7

    .line 103
    sget-object v0, Lo/ts;->Zo:Lo/ts;

    invoke-virtual {v0, p1}, Lo/ts;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6, v7, v8}, Lo/tu;->ᒽ(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    move-object v4, v6

    .line 106
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Returning cached settings."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Cached settings have expired."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_0
    goto :goto_1

    .line 111
    :cond_2
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Failed to transform cached settings data."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    :goto_1
    goto :goto_2

    .line 115
    :cond_3
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "No cached settings data found."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_4
    :goto_2
    goto :goto_3

    .line 118
    :catch_0
    move-exception v5

    .line 119
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Failed to get cached settings"

    invoke-interface {v0, v1, v2, v5}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    :goto_3
    return-object v4
.end method


# virtual methods
.method public dJ()Lo/tu;
    .locals 1

    .line 47
    sget-object v0, Lo/ts;->Zm:Lo/ts;

    invoke-virtual {p0, v0}, Lo/tk;->ˊ(Lo/ts;)Lo/tu;

    move-result-object v0

    return-object v0
.end method

.method dK()Ljava/lang/String;
    .locals 3

    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lo/tk;->Rw:Lo/pq;

    invoke-virtual {v1}, Lo/pq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/qh;->ᴶ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/qh;->ˏ([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method dL()Ljava/lang/String;
    .locals 3

    .line 138
    iget-object v0, p0, Lo/tk;->pr:Lo/sx;

    invoke-interface {v0}, Lo/sx;->dG()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 139
    const-string v0, "existing_instance_identifier"

    const-string v1, ""

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method dM()Z
    .locals 3

    .line 150
    invoke-virtual {p0}, Lo/tk;->dL()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {p0}, Lo/tk;->dK()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ˊ(Lo/ts;)Lo/tu;
    .locals 5

    .line 51
    const/4 v3, 0x0

    .line 58
    :try_start_0
    invoke-static {}, Lo/pj;->ce()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/tk;->dM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0, p1}, Lo/tk;->ˋ(Lo/ts;)Lo/tu;

    move-result-object v0

    move-object v3, v0

    .line 62
    :cond_0
    if-nez v3, :cond_1

    .line 63
    iget-object v0, p0, Lo/tk;->YQ:Lo/ty;

    iget-object v1, p0, Lo/tk;->YN:Lo/tx;

    invoke-interface {v0, v1}, Lo/ty;->ˊ(Lo/tx;)Lorg/json/JSONObject;

    move-result-object v4

    .line 65
    if-eqz v4, :cond_1

    .line 66
    iget-object v0, p0, Lo/tk;->YO:Lo/tw;

    iget-object v1, p0, Lo/tk;->ql:Lo/qk;

    invoke-interface {v0, v1, v4}, Lo/tw;->ˊ(Lo/qk;Lorg/json/JSONObject;)Lo/tu;

    move-result-object v0

    move-object v3, v0

    .line 68
    iget-object v0, p0, Lo/tk;->YP:Lo/th;

    iget-wide v1, v3, Lo/tu;->Zu:J

    invoke-interface {v0, v1, v2, v4}, Lo/th;->ˊ(JLorg/json/JSONObject;)V

    .line 69
    const-string v0, "Loaded settings: "

    invoke-direct {p0, v4, v0}, Lo/tk;->ˊ(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lo/tk;->dK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/tk;->ﯦ(Ljava/lang/String;)Z

    .line 77
    :cond_1
    if-nez v3, :cond_2

    .line 78
    sget-object v0, Lo/ts;->Zo:Lo/ts;

    invoke-direct {p0, v0}, Lo/tk;->ˋ(Lo/ts;)Lo/tu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 83
    :cond_2
    goto :goto_0

    .line 81
    :catch_0
    move-exception v4

    .line 82
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

    invoke-interface {v0, v1, v2, v4}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :goto_0
    return-object v3
.end method

.method ﯦ(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lo/tk;->pr:Lo/sx;

    invoke-interface {v0}, Lo/sx;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 145
    const-string v0, "existing_instance_identifier"

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    iget-object v0, p0, Lo/tk;->pr:Lo/sx;

    invoke-interface {v0, v1}, Lo/sx;->ˊ(Landroid/content/SharedPreferences$Editor;)Z

    move-result v0

    return v0
.end method
