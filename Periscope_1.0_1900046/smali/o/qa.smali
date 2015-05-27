.class Lo/qa;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final dV:Landroid/content/Context;

.field private final pr:Lo/sx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/qa;->dV:Landroid/content/Context;

    .line 20
    new-instance v0, Lo/sy;

    const-string v1, "TwitterAdvertisingInfoPreferences"

    invoke-direct {v0, p1, v1}, Lo/sy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lo/qa;->pr:Lo/sx;

    .line 21
    return-void
.end method

.method private cp()Lo/pz;
    .locals 5

    .line 100
    invoke-virtual {p0}, Lo/qa;->cn()Lo/qe;

    move-result-object v4

    .line 101
    invoke-interface {v4}, Lo/qe;->cl()Lo/pz;

    move-result-object v3

    .line 103
    invoke-direct {p0, v3}, Lo/qa;->ˎ(Lo/pz;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lo/qa;->co()Lo/qe;

    move-result-object v4

    .line 105
    invoke-interface {v4}, Lo/qe;->cl()Lo/pz;

    move-result-object v3

    .line 107
    invoke-direct {p0, v3}, Lo/qa;->ˎ(Lo/pz;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "AdvertisingInfo not present"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Using AdvertisingInfo from Service Provider"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Using AdvertisingInfo from Reflection Provider"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_0
    return-object v3
.end method

.method static synthetic ˊ(Lo/qa;)Lo/pz;
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/qa;->cp()Lo/pz;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Lo/pz;)V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo/qb;

    invoke-direct {v1, p0, p1}, Lo/qb;-><init>(Lo/qa;Lo/pz;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method

.method static synthetic ˊ(Lo/qa;Lo/pz;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lo/qa;->ˋ(Lo/pz;)V

    return-void
.end method

.method private ˋ(Lo/pz;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lo/qa;->ˎ(Lo/pz;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lo/qa;->pr:Lo/sx;

    iget-object v1, p0, Lo/qa;->pr:Lo/sx;

    invoke-interface {v1}, Lo/sx;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "advertising_id"

    iget-object v3, p1, Lo/pz;->pX:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "limit_ad_tracking_enabled"

    iget-boolean v3, p1, Lo/pz;->Vq:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/sx;->ˊ(Landroid/content/SharedPreferences$Editor;)Z

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lo/qa;->pr:Lo/sx;

    iget-object v1, p0, Lo/qa;->pr:Lo/sx;

    invoke-interface {v1}, Lo/sx;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "advertising_id"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "limit_ad_tracking_enabled"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/sx;->ˊ(Landroid/content/SharedPreferences$Editor;)Z

    .line 77
    :goto_0
    return-void
.end method

.method private ˎ(Lo/pz;)Z
    .locals 1

    .line 94
    if-eqz p1, :cond_0

    iget-object v0, p1, Lo/pz;->pX:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cl()Lo/pz;
    .locals 4

    .line 33
    invoke-virtual {p0}, Lo/qa;->cm()Lo/pz;

    move-result-object v3

    .line 34
    invoke-direct {p0, v3}, Lo/qa;->ˎ(Lo/pz;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Using AdvertisingInfo from Preference Store"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, v3}, Lo/qa;->ˊ(Lo/pz;)V

    .line 37
    return-object v3

    .line 40
    :cond_0
    invoke-direct {p0}, Lo/qa;->cp()Lo/pz;

    move-result-object v3

    .line 41
    invoke-direct {p0, v3}, Lo/qa;->ˋ(Lo/pz;)V

    .line 42
    return-object v3
.end method

.method protected cm()Lo/pz;
    .locals 5

    .line 80
    iget-object v0, p0, Lo/qa;->pr:Lo/sx;

    invoke-interface {v0}, Lo/sx;->dG()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "advertising_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    iget-object v0, p0, Lo/qa;->pr:Lo/sx;

    invoke-interface {v0}, Lo/sx;->dG()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "limit_ad_tracking_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 82
    new-instance v0, Lo/pz;

    invoke-direct {v0, v3, v4}, Lo/pz;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public cn()Lo/qe;
    .locals 2

    .line 86
    new-instance v0, Lo/qc;

    iget-object v1, p0, Lo/qa;->dV:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/qc;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public co()Lo/qe;
    .locals 2

    .line 90
    new-instance v0, Lo/qd;

    iget-object v1, p0, Lo/qa;->dV:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/qd;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
