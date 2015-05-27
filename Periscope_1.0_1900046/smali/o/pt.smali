.class Lo/pt;
.super Lo/pq;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/pq<Ljava/lang/Boolean;>;"
    }
.end annotation


# instance fields
.field private final Vh:Lo/sq;

.field private Vi:Landroid/content/pm/PackageManager;

.field private Vj:Landroid/content/pm/PackageInfo;

.field private Vk:Ljava/lang/String;

.field private Vl:Ljava/lang/String;

.field private installerPackageName:Ljava/lang/String;

.field private nG:Ljava/lang/String;

.field private final nz:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<Lo/pq;>;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Collection<Lo/pq;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lo/pq;-><init>()V

    .line 41
    iput-object p1, p0, Lo/pt;->nz:Ljava/util/Collection;

    .line 42
    new-instance v0, Lo/sl;

    invoke-direct {v0}, Lo/sl;-><init>()V

    iput-object v0, p0, Lo/pt;->Vh:Lo/sq;

    .line 43
    return-void
.end method

.method private ˊ(Lo/to;Ljava/util/Collection;)Lo/te;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/to;Ljava/util/Collection<Lo/pq;>;)Lo/te;"
        }
    .end annotation

    .line 163
    invoke-virtual/range {p0 .. p0}, Lo/pt;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 164
    new-instance v0, Lo/qf;

    invoke-direct {v0}, Lo/qf;-><init>()V

    invoke-virtual {v0, v12}, Lo/qf;->ᐠ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 165
    invoke-static {v12}, Lo/qh;->ᴶ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 167
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v14, v0, v1

    invoke-static {v0}, Lo/qh;->ˏ([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/pt;->installerPackageName:Ljava/lang/String;

    invoke-static {v0}, Lo/ql;->ї(Ljava/lang/String;)Lo/ql;

    move-result-object v0

    invoke-virtual {v0}, Lo/ql;->getId()I

    move-result v16

    .line 169
    invoke-virtual/range {p0 .. p0}, Lo/pt;->cg()Lo/qr;

    move-result-object v0

    invoke-virtual {v0}, Lo/qr;->cB()Ljava/lang/String;

    move-result-object v17

    .line 171
    new-instance v0, Lo/te;

    move-object/from16 v1, p0

    iget-object v3, v1, Lo/pt;->versionName:Ljava/lang/String;

    move-object/from16 v1, p0

    iget-object v4, v1, Lo/pt;->nG:Ljava/lang/String;

    move-object/from16 v1, p0

    iget-object v6, v1, Lo/pt;->Vk:Ljava/lang/String;

    move-object/from16 v1, p0

    iget-object v8, v1, Lo/pt;->Vl:Ljava/lang/String;

    const-string v9, "0"

    move-object v1, v13

    move-object/from16 v2, v17

    move-object v5, v15

    move/from16 v7, v16

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-direct/range {v0 .. v11}, Lo/te;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lo/to;Ljava/util/Collection;)V

    return-object v0
.end method

.method private ˊ(Ljava/lang/String;Lo/tf;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Lo/tf;Ljava/util/Collection<Lo/pq;>;)Z"
        }
    .end annotation

    .line 107
    const/4 v4, 0x1

    .line 109
    const-string v0, "new"

    iget-object v1, p2, Lo/tf;->YH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lo/pt;->ˋ(Ljava/lang/String;Lo/tf;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lo/tr;->dN()Lo/tr;

    move-result-object v0

    invoke-virtual {v0}, Lo/tr;->dQ()Z

    move-result v4

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Failed to create app with Crashlytics service."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    const/4 v4, 0x0

    goto :goto_0

    .line 121
    :cond_1
    const-string v0, "configured"

    iget-object v1, p2, Lo/tf;->YH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-static {}, Lo/tr;->dN()Lo/tr;

    move-result-object v0

    invoke-virtual {v0}, Lo/tr;->dQ()Z

    move-result v4

    goto :goto_0

    .line 124
    :cond_2
    iget-boolean v0, p2, Lo/tf;->YJ:Z

    if-eqz v0, :cond_3

    .line 127
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Server says an update is required - forcing a full App update."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lo/pt;->ˎ(Ljava/lang/String;Lo/tf;Ljava/util/Collection;)Z

    .line 132
    :cond_3
    :goto_0
    return v4
.end method

.method private ˊ(Lo/tf;Lo/to;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/tf;Lo/to;Ljava/util/Collection<Lo/pq;>;)Z"
        }
    .end annotation

    .line 157
    invoke-direct {p0, p2, p3}, Lo/pt;->ˊ(Lo/to;Ljava/util/Collection;)Lo/te;

    move-result-object v4

    .line 158
    new-instance v0, Lo/tz;

    invoke-virtual {p0}, Lo/pt;->Ĩ()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lo/tf;->url:Ljava/lang/String;

    iget-object v3, p0, Lo/pt;->Vh:Lo/sq;

    invoke-direct {v0, p0, v1, v2, v3}, Lo/tz;-><init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;)V

    invoke-virtual {v0, v4}, Lo/tz;->ˊ(Lo/te;)Z

    move-result v0

    return v0
.end method

.method private ˋ(Ljava/lang/String;Lo/tf;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Lo/tf;Ljava/util/Collection<Lo/pq;>;)Z"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lo/pt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/to;->ʽ(Landroid/content/Context;Ljava/lang/String;)Lo/to;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lo/pt;->ˊ(Lo/to;Ljava/util/Collection;)Lo/te;

    move-result-object v4

    .line 140
    new-instance v0, Lo/ti;

    invoke-virtual {p0}, Lo/pt;->Ĩ()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lo/tf;->url:Ljava/lang/String;

    iget-object v3, p0, Lo/pt;->Vh:Lo/sq;

    invoke-direct {v0, p0, v1, v2, v3}, Lo/ti;-><init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;)V

    invoke-virtual {v0, v4}, Lo/ti;->ˊ(Lo/te;)Z

    move-result v0

    return v0
.end method

.method private ˎ(Ljava/lang/String;Lo/tf;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Lo/tf;Ljava/util/Collection<Lo/pq;>;)Z"
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lo/pt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/to;->ʽ(Landroid/content/Context;Ljava/lang/String;)Lo/to;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Lo/pt;->ˊ(Lo/tf;Lo/to;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "1.3.0.41"

    return-object v0
.end method

.method Ĩ()Ljava/lang/String;
    .locals 2

    .line 176
    invoke-virtual {p0}, Lo/pt;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lo/qh;->ʻ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic э()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lo/pt;->ᴣ()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected ᴣ()Ljava/lang/Boolean;
    .locals 11

    .line 75
    invoke-virtual {p0}, Lo/pt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/qh;->ᔈ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v9, 0x0

    .line 80
    :try_start_0
    invoke-static {}, Lo/tr;->dN()Lo/tr;

    move-result-object v0

    move-object v1, p0

    iget-object v2, p0, Lo/pt;->ok:Lo/qr;

    iget-object v3, p0, Lo/pt;->Vh:Lo/sq;

    iget-object v4, p0, Lo/pt;->nG:Ljava/lang/String;

    iget-object v5, p0, Lo/pt;->versionName:Ljava/lang/String;

    invoke-virtual {p0}, Lo/pt;->Ĩ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lo/tr;->ˊ(Lo/pq;Lo/qr;Lo/sq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/tr;

    move-result-object v0

    invoke-virtual {v0}, Lo/tr;->dP()Z

    .line 85
    invoke-static {}, Lo/tr;->dN()Lo/tr;

    move-result-object v0

    invoke-virtual {v0}, Lo/tr;->dO()Lo/tu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v9, v0

    .line 88
    goto :goto_0

    .line 86
    :catch_0
    move-exception v10

    .line 87
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Error dealing with settings"

    invoke-interface {v0, v1, v2, v10}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :goto_0
    if-eqz v9, :cond_0

    .line 92
    :try_start_1
    iget-object v0, v9, Lo/tu;->Zq:Lo/tf;

    iget-object v1, p0, Lo/pt;->nz:Ljava/util/Collection;

    invoke-direct {p0, v7, v0, v1}, Lo/pt;->ˊ(Ljava/lang/String;Lo/tf;Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v8, v0

    .line 95
    goto :goto_1

    .line 93
    :catch_1
    move-exception v10

    .line 94
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Error performing auto configuration."

    invoke-interface {v0, v1, v2, v10}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    :cond_0
    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected ﺰ()Z
    .locals 4

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lo/pt;->cg()Lo/qr;

    move-result-object v0

    invoke-virtual {v0}, Lo/qr;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/pt;->installerPackageName:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lo/pt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lo/pt;->Vi:Landroid/content/pm/PackageManager;

    .line 55
    invoke-virtual {p0}, Lo/pt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/pt;->packageName:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lo/pt;->Vi:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lo/pt;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lo/pt;->Vj:Landroid/content/pm/PackageInfo;

    .line 57
    iget-object v0, p0, Lo/pt;->Vj:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/pt;->nG:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lo/pt;->Vj:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "0.0"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/pt;->Vj:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lo/pt;->versionName:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lo/pt;->Vi:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lo/pt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/pt;->Vk:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lo/pt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/pt;->Vl:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const/4 v0, 0x1

    return v0

    .line 67
    :catch_0
    move-exception v3

    .line 68
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Failed init"

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public ｯ()Ljava/lang/String;
    .locals 1

    .line 102
    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method
