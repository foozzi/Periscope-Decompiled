.class abstract Lo/ᵂ;
.super Lo/pq;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/pq<Ljava/lang/Boolean;>;"
    }
.end annotation


# instance fields
.field private nG:Ljava/lang/String;

.field private pr:Lo/sx;

.field private ps:J

.field pt:Lo/冖;

.field private versionName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/pq;-><init>()V

    return-void
.end method

.method private ﹳ(Landroid/content/Context;)V
    .locals 29
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 128
    :try_start_0
    new-instance v12, Lo/ﺓ;

    invoke-direct {v12}, Lo/ﺓ;-><init>()V

    .line 129
    new-instance v13, Lo/qx;

    invoke-direct {v13}, Lo/qx;-><init>()V

    .line 130
    new-instance v14, Lo/sh;

    invoke-virtual/range {p0 .. p0}, Lo/ᵂ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lo/ᵂ;->Τ()Ljava/io/File;

    move-result-object v1

    const-string v2, "session_analytics.tap"

    const-string v3, "session_analytics_to_send"

    invoke-direct {v14, v0, v1, v2, v3}, Lo/sh;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v15, Lo/ⅈ;

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v12, v13, v14}, Lo/ⅈ;-><init>(Landroid/content/Context;Lo/ﺓ;Lo/qk;Lo/sc;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lo/ᵂ;->cg()Lo/qr;

    move-result-object v16

    .line 138
    invoke-virtual/range {v16 .. v16}, Lo/qr;->Ἲ()Ljava/util/Map;

    move-result-object v17

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 142
    invoke-virtual/range {v16 .. v16}, Lo/qr;->cA()Ljava/lang/String;

    move-result-object v19

    .line 143
    sget-object v0, Lo/qr$if;->Wi:Lo/qr$if;

    move-object/from16 v1, v17

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v20, v0

    .line 145
    sget-object v0, Lo/qr$if;->Wl:Lo/qr$if;

    move-object/from16 v1, v17

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v21, v0

    .line 147
    sget-object v0, Lo/qr$if;->Wh:Lo/qr$if;

    move-object/from16 v1, v17

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v22, v0

    .line 149
    invoke-static/range {p1 .. p1}, Lo/qh;->ᴶ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 150
    invoke-virtual/range {v16 .. v16}, Lo/qr;->cC()Ljava/lang/String;

    move-result-object v24

    .line 151
    invoke-virtual/range {v16 .. v16}, Lo/qr;->cD()Ljava/lang/String;

    move-result-object v25

    .line 152
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v26

    .line 154
    new-instance v0, Lo/ﮈ;

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v10, p0

    iget-object v10, v10, Lo/ᵂ;->nG:Ljava/lang/String;

    move-object/from16 v11, p0

    iget-object v11, v11, Lo/ᵂ;->versionName:Ljava/lang/String;

    invoke-direct/range {v0 .. v11}, Lo/ﮈ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v27, v0

    .line 161
    invoke-virtual/range {p0 .. p0}, Lo/ᵂ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    move-object/from16 v28, v0

    .line 162
    if-eqz v28, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 164
    new-instance v0, Lo/sl;

    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/sl;-><init>(Lo/ps;)V

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-static {v1, v2, v15, v0}, Lo/Ḭ;->ˊ(Landroid/app/Application;Lo/ﮈ;Lo/ⅈ;Lo/sq;)Lo/Ḭ;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ᵂ;->pt:Lo/冖;

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Lo/sl;

    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/sl;-><init>(Lo/ps;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-static {v1, v2, v15, v0}, Lo/冖;->ˊ(Landroid/content/Context;Lo/ﮈ;Lo/ⅈ;Lo/sq;)Lo/冖;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ᵂ;->pt:Lo/冖;

    .line 173
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lo/ᵂ;->ps:J

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Lo/ᵂ;->ʿ(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "First launch"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵂ;->pt:Lo/冖;

    invoke-virtual {v0}, Lo/冖;->Ẏ()V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᵂ;->pr:Lo/sx;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/ᵂ;->pr:Lo/sx;

    invoke-interface {v1}, Lo/sx;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "analytics_launched"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/sx;->ˊ(Landroid/content/SharedPreferences$Editor;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_1
    goto :goto_1

    .line 179
    :catch_0
    move-exception v12

    .line 180
    const-string v0, "Crashlytics failed to initialize session analytics."

    move-object/from16 v1, p1

    invoke-static {v1, v0, v12}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    :goto_1
    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 121
    const-string v0, "1.1.2.37"

    return-object v0
.end method

.method Ĩ()Ljava/lang/String;
    .locals 2

    .line 188
    invoke-virtual {p0}, Lo/ᵂ;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lo/qh;->ʻ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ʿ(J)Z
    .locals 1

    .line 229
    invoke-virtual {p0}, Lo/ᵂ;->ᵂ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lo/ᵂ;->ˈ(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method ˈ(J)Z
    .locals 4

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p1

    .line 240
    const-wide/32 v0, 0x36ee80

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ˊ(Lo/qj$if;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lo/ᵂ;->pt:Lo/冖;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lo/ᵂ;->pt:Lo/冖;

    invoke-virtual {p1}, Lo/qj$if;->cx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/冖;->ٴ(Ljava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method

.method public ˊ(Lo/qj$ˊ;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lo/ᵂ;->pt:Lo/冖;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lo/ᵂ;->pt:Lo/冖;

    invoke-virtual {p1}, Lo/qj$ˊ;->cx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/冖;->onError(Ljava/lang/String;)V

    .line 195
    :cond_0
    return-void
.end method

.method Τ()Ljava/io/File;
    .locals 1

    .line 244
    new-instance v0, Lo/sw;

    invoke-direct {v0, p0}, Lo/sw;-><init>(Lo/pq;)V

    invoke-virtual {v0}, Lo/sw;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic э()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lo/ᵂ;->ᴣ()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected ᴣ()Ljava/lang/Boolean;
    .locals 5

    .line 87
    invoke-virtual {p0}, Lo/ᵂ;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 89
    invoke-direct {p0, v3}, Lo/ᵂ;->ﹳ(Landroid/content/Context;)V

    .line 92
    :try_start_0
    invoke-static {}, Lo/tr;->dN()Lo/tr;

    move-result-object v0

    invoke-virtual {v0}, Lo/tr;->dO()Lo/tu;

    move-result-object v4

    .line 93
    if-nez v4, :cond_0

    .line 94
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    :try_start_1
    iget-object v0, v4, Lo/tu;->Zs:Lo/tn;

    iget-boolean v0, v0, Lo/tn;->YU:Z

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lo/ᵂ;->pt:Lo/冖;

    iget-object v1, v4, Lo/tu;->py:Lo/tc;

    invoke-virtual {p0}, Lo/ᵂ;->Ĩ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/冖;->ˊ(Lo/tc;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    .line 103
    :cond_1
    const-string v0, "Disabling analytics collection based on settings flag value."

    :try_start_2
    invoke-static {v3, v0}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lo/ᵂ;->pt:Lo/冖;

    invoke-virtual {v0}, Lo/冖;->disable()V

    .line 106
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    return-object v0

    .line 108
    :catch_0
    move-exception v4

    .line 109
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Error dealing with settings"

    invoke-interface {v0, v1, v2, v4}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method ᵂ()Z
    .locals 3

    .line 216
    iget-object v0, p0, Lo/ᵂ;->pr:Lo/sx;

    invoke-interface {v0}, Lo/sx;->dG()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "analytics_launched"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected ﺰ()Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 59
    :try_start_0
    new-instance v0, Lo/sy;

    invoke-direct {v0, p0}, Lo/sy;-><init>(Lo/pq;)V

    iput-object v0, p0, Lo/ᵂ;->pr:Lo/sx;

    .line 61
    invoke-virtual {p0}, Lo/ᵂ;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 62
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 63
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 65
    const/4 v0, 0x0

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 67
    iget v0, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ᵂ;->nG:Ljava/lang/String;

    .line 68
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "0.0"

    goto :goto_0

    :cond_0
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lo/ᵂ;->versionName:Ljava/lang/String;

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 72
    iget-wide v0, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v0, p0, Lo/ᵂ;->ps:J

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 76
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lo/ᵂ;->ps:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 79
    :catch_0
    move-exception v3

    .line 80
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Error setting up app properties"

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public ｯ()Ljava/lang/String;
    .locals 1

    .line 116
    const-string v0, "com.crashlytics.sdk.android:answers"

    return-object v0
.end method
