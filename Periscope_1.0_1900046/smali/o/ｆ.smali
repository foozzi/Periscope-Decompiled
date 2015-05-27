.class public Lo/ｆ;
.super Lo/pq;
.source ""

# interfaces
.implements Lo/qm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/pq<Ljava/lang/Boolean;>;Lo/qm;"
    }
.end annotation


# instance fields
.field private final qg:Lo/pv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/pv<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final qh:Lo/ｺ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lo/pq;-><init>()V

    .line 37
    new-instance v0, Lo/pv;

    invoke-direct {v0}, Lo/pv;-><init>()V

    iput-object v0, p0, Lo/ｆ;->qg:Lo/pv;

    .line 38
    new-instance v0, Lo/ｺ;

    invoke-direct {v0}, Lo/ｺ;-><init>()V

    iput-object v0, p0, Lo/ｆ;->qh:Lo/ｺ;

    return-void
.end method

.method private ˊ(Landroid/content/Context;Lo/qr;Lo/tg;Lo/ｉ;)V
    .locals 9

    .line 104
    new-instance v0, Lo/ｔ;

    new-instance v6, Lo/sy;

    const-class v1, Lo/ｆ;

    invoke-static {v1}, Lo/pj;->ـ(Ljava/lang/Class;)Lo/pq;

    move-result-object v1

    invoke-direct {v6, v1}, Lo/sy;-><init>(Lo/pq;)V

    new-instance v7, Lo/qx;

    invoke-direct {v7}, Lo/qx;-><init>()V

    new-instance v8, Lo/sl;

    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v1

    invoke-direct {v8, v1}, Lo/sl;-><init>(Lo/ps;)V

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lo/ｔ;-><init>(Landroid/content/Context;Lo/ｆ;Lo/qr;Lo/tg;Lo/ｉ;Lo/sx;Lo/qk;Lo/sq;)V

    invoke-virtual {v0}, Lo/ｔ;->Ἴ()V

    .line 114
    return-void
.end method

.method private ˎ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 136
    const/4 v3, 0x0

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p2, v0}, Lo/ｆ;->ˋ(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "App was installed by Beta. Getting device token"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :try_start_0
    iget-object v0, p0, Lo/ｆ;->qg:Lo/pv;

    iget-object v1, p0, Lo/ｆ;->qh:Lo/ｺ;

    invoke-virtual {v0, p1, v1}, Lo/pv;->ˊ(Landroid/content/Context;Lo/px;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 142
    const-string v0, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    move-object v3, v0

    .line 145
    goto :goto_1

    .line 143
    :catch_0
    move-exception v4

    .line 144
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Failed to load the Beta device token"

    invoke-interface {v0, v1, v2, v4}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    goto :goto_1

    .line 147
    :cond_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "App was not installed by Beta. Skipping device token"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_1
    return-object v3
.end method

.method private Ἳ()Lo/tg;
    .locals 2

    .line 154
    invoke-static {}, Lo/tr;->dN()Lo/tr;

    move-result-object v0

    invoke-virtual {v0}, Lo/tr;->dO()Lo/tu;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_0

    .line 157
    iget-object v0, v1, Lo/tu;->Zt:Lo/tg;

    return-object v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private ﾞ(Landroid/content/Context;)Lo/ｉ;
    .locals 9

    .line 164
    const/4 v4, 0x0

    .line 165
    const/4 v5, 0x0

    .line 168
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "crashlytics-build.properties"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move-object v4, v0

    .line 170
    if-eqz v4, :cond_0

    .line 171
    invoke-static {v4}, Lo/ｉ;->ʻ(Ljava/io/InputStream;)Lo/ｉ;

    move-result-object v0

    move-object v5, v0

    .line 173
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Beta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lo/ｉ;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " build properties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lo/ｉ;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lo/ｉ;->nG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lo/ｉ;->nn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_0
    if-eqz v4, :cond_2

    .line 182
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    goto :goto_1

    .line 183
    :catch_0
    move-exception v6

    .line 184
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Error closing Beta build properties asset"

    invoke-interface {v0, v1, v2, v6}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    goto :goto_1

    .line 177
    :catch_1
    move-exception v6

    .line 178
    :try_start_2
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Error reading Beta build properties"

    invoke-interface {v0, v1, v2, v6}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    if-eqz v4, :cond_2

    .line 182
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 185
    goto :goto_1

    .line 183
    :catch_2
    move-exception v6

    .line 184
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Error closing Beta build properties asset"

    invoke-interface {v0, v1, v2, v6}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    goto :goto_1

    .line 180
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_1

    .line 182
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 185
    goto :goto_0

    .line 183
    :catch_3
    move-exception v8

    .line 184
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Error closing Beta build properties asset"

    invoke-interface {v0, v1, v2, v8}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    :cond_1
    :goto_0
    throw v7

    .line 189
    :cond_2
    :goto_1
    return-object v5
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "1.1.2.37"

    return-object v0
.end method

.method Ĩ()Ljava/lang/String;
    .locals 2

    .line 193
    invoke-virtual {p0}, Lo/ｆ;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lo/qh;->ʻ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ˊ(Lo/tg;Lo/ｉ;)Z
    .locals 1

    .line 130
    if-eqz p1, :cond_0

    iget-object v0, p1, Lo/tg;->YL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method ˋ(Ljava/lang/String;I)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 118
    const/16 v0, 0xb

    if-ge p2, v0, :cond_1

    .line 122
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 125
    :cond_1
    const-string v0, "io.crash.air"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected synthetic э()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lo/ｆ;->ᴣ()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected ᴣ()Ljava/lang/Boolean;
    .locals 9

    .line 49
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Beta kit initializing..."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lo/ｆ;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 52
    invoke-virtual {p0}, Lo/ｆ;->cg()Lo/qr;

    move-result-object v4

    .line 53
    invoke-virtual {v4}, Lo/qr;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-direct {p0, v3, v5}, Lo/ｆ;->ˎ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "A Beta device token was not found for this app"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Beta device token is present, checking for app updates."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lo/ｆ;->Ἳ()Lo/tg;

    move-result-object v7

    .line 64
    invoke-direct {p0, v3}, Lo/ｆ;->ﾞ(Landroid/content/Context;)Lo/ｉ;

    move-result-object v8

    .line 66
    invoke-virtual {p0, v7, v8}, Lo/ｆ;->ˊ(Lo/tg;Lo/ｉ;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-direct {p0, v3, v4, v7, v8}, Lo/ｆ;->ˊ(Landroid/content/Context;Lo/qr;Lo/tg;Lo/ｉ;)V

    .line 70
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public Ἲ()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Map<Lo/qr$if;Ljava/lang/String;>;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lo/ｆ;->cg()Lo/qr;

    move-result-object v0

    invoke-virtual {v0}, Lo/qr;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p0}, Lo/ｆ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lo/ｆ;->ˎ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lo/qr$if;->Wh:Lo/qr$if;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    return-object v3
.end method

.method public ｯ()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "com.crashlytics.sdk.android:beta"

    return-object v0
.end method
