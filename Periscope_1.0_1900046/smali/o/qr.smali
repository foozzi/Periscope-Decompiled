.class public Lo/qr;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/qr$if;
    }
.end annotation


# static fields
.field private static final VZ:Ljava/util/regex/Pattern;

.field private static final Wa:Ljava/lang/String;


# instance fields
.field private final Va:Ljava/lang/String;

.field private final Vb:Ljava/lang/String;

.field private final Wb:Ljava/util/concurrent/locks/ReentrantLock;

.field private final Wc:Lo/qs;

.field private final Wd:Z

.field private final We:Z

.field private final appContext:Landroid/content/Context;

.field private final nz:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<Lo/pq;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-string v0, "[^\\p{Alnum}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/qr;->VZ:Ljava/util/regex/Pattern;

    .line 71
    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/qr;->Wa:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection<Lo/pq;>;)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lo/qr;->Wb:Ljava/util/concurrent/locks/ReentrantLock;

    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appContext must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    if-nez p2, :cond_1

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appIdentifier must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    if-nez p4, :cond_2

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "kits must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_2
    iput-object p1, p0, Lo/qr;->appContext:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lo/qr;->Vb:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lo/qr;->Va:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lo/qr;->nz:Ljava/util/Collection;

    .line 127
    new-instance v0, Lo/qs;

    invoke-direct {v0}, Lo/qs;-><init>()V

    iput-object v0, p0, Lo/qr;->Wc:Lo/qs;

    .line 129
    const-string v0, "com.crashlytics.CollectDeviceIdentifiers"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/qr;->Wd:Z

    .line 131
    iget-boolean v0, p0, Lo/qr;->Wd:Z

    if-nez v0, :cond_3

    .line 132
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device ID collection disabled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_3
    const-string v0, "com.crashlytics.CollectUserIdentifiers"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/qr;->We:Z

    .line 138
    iget-boolean v0, p0, Lo/qr;->We:Z

    if-nez v0, :cond_4

    .line 139
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User information collection disabled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_4
    return-void
.end method

.method private ˊ(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 5

    .line 331
    iget-object v0, p0, Lo/qr;->Wb:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 333
    const-string v0, "crashlytics.installation.id"

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    if-nez v2, :cond_0

    .line 336
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/qr;->ᑦ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "crashlytics.installation.id"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :cond_0
    move-object v3, v2

    .line 342
    iget-object v0, p0, Lo/qr;->Wb:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3

    :catchall_0
    move-exception v4

    iget-object v0, p0, Lo/qr;->Wb:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method private ˊ(Ljava/util/Map;Lo/qr$if;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Lo/qr$if;Ljava/lang/String;>;Lo/qr$if;Ljava/lang/String;)V"
        }
    .end annotation

    .line 403
    if-eqz p3, :cond_0

    .line 404
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_0
    return-void
.end method

.method private ˋ(Lorg/json/JSONObject;)V
    .locals 4

    .line 191
    const-string v0, "APPLICATION_INSTALLATION_UUID"

    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lo/qr;->cA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    goto :goto_0

    .line 192
    :catch_0
    move-exception v3

    .line 193
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Could not write application id to JSON"

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    :goto_0
    return-void
.end method

.method private ˎ(Lorg/json/JSONObject;)V
    .locals 7

    .line 199
    invoke-virtual {p0}, Lo/qr;->Ἲ()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 201
    :try_start_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/qr$if;

    invoke-virtual {v0}, Lo/qr$if;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_1

    .line 202
    :catch_0
    move-exception v6

    .line 203
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write value to JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/qr$if;

    invoke-virtual {v3}, Lo/qr$if;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v6}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    :goto_1
    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method

.method private ˏ(Lorg/json/JSONObject;)V
    .locals 4

    .line 212
    const-string v0, "os_version"

    :try_start_0
    invoke-virtual {p0}, Lo/qr;->cC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_0

    .line 213
    :catch_0
    move-exception v3

    .line 214
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Could not write OS version to JSON"

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    :goto_0
    return-void
.end method

.method private ᐝ(Lorg/json/JSONObject;)V
    .locals 4

    .line 221
    const-string v0, "model"

    :try_start_0
    invoke-virtual {p0}, Lo/qr;->cD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_0

    .line 222
    :catch_0
    move-exception v3

    .line 223
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Could not write model to JSON"

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    :goto_0
    return-void
.end method

.method private ᑋ(Ljava/lang/String;)Z
    .locals 3

    .line 234
    iget-object v0, p0, Lo/qr;->appContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 238
    :goto_0
    return v2
.end method

.method private ᑦ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 246
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lo/qr;->VZ:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private ᒾ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 297
    sget-object v0, Lo/qr;->Wa:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cA()Ljava/lang/String;
    .locals 4

    .line 258
    iget-object v2, p0, Lo/qr;->Va:Ljava/lang/String;

    .line 260
    if-nez v2, :cond_0

    .line 261
    iget-object v0, p0, Lo/qr;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lo/qh;->ᕀ(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 262
    const-string v0, "crashlytics.installation.id"

    const/4 v1, 0x0

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    if-nez v2, :cond_0

    .line 265
    invoke-direct {p0, v3}, Lo/qr;->ˊ(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    .line 269
    :cond_0
    return-object v2
.end method

.method public cB()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lo/qr;->Vb:Ljava/lang/String;

    return-object v0
.end method

.method public cC()Ljava/lang/String;
    .locals 5

    .line 284
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v3}, Lo/qr;->ᒾ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-direct {p0, v3}, Lo/qr;->ᒾ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cD()Ljava/lang/String;
    .locals 5

    .line 292
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {p0, v3}, Lo/qr;->ᒾ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v3}, Lo/qr;->ᒾ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cE()Ljava/lang/String;
    .locals 4

    .line 307
    const-string v2, ""

    .line 309
    iget-boolean v0, p0, Lo/qr;->Wd:Z

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lo/qr;->cF()Ljava/lang/String;

    move-result-object v2

    .line 312
    if-nez v2, :cond_0

    .line 313
    iget-object v0, p0, Lo/qr;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lo/qh;->ᕀ(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 314
    const-string v0, "crashlytics.installation.id"

    const/4 v1, 0x0

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    if-nez v2, :cond_0

    .line 317
    invoke-direct {p0, v3}, Lo/qr;->ˊ(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    .line 322
    :cond_0
    return-object v2
.end method

.method public cF()Ljava/lang/String;
    .locals 4

    .line 409
    const/4 v2, 0x0

    .line 411
    iget-boolean v0, p0, Lo/qr;->Wd:Z

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lo/qr;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 415
    const-string v0, "9774d56d682e549c"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    invoke-direct {p0, v3}, Lo/qr;->ᑦ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 420
    :cond_0
    return-object v2
.end method

.method public cG()Ljava/lang/String;
    .locals 3

    .line 437
    iget-boolean v0, p0, Lo/qr;->Wd:Z

    if-eqz v0, :cond_0

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v0}, Lo/qr;->ᑋ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lo/qr;->appContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v2, v0

    .line 441
    if-eqz v2, :cond_0

    .line 442
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/qr;->ᑦ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 445
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public cH()Ljava/lang/String;
    .locals 4

    .line 450
    iget-boolean v0, p0, Lo/qr;->Wd:Z

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-direct {p0, v0}, Lo/qr;->ᑋ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lo/qr;->appContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    move-object v2, v0

    .line 454
    if-eqz v2, :cond_0

    .line 455
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 457
    if-eqz v3, :cond_0

    .line 458
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/qr;->ᑦ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 462
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public cI()Ljava/lang/String;
    .locals 4

    .line 475
    iget-boolean v0, p0, Lo/qr;->Wd:Z

    if-eqz v0, :cond_1

    const-string v0, "android.permission.BLUETOOTH"

    invoke-direct {p0, v0}, Lo/qr;->ᑋ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 478
    if-eqz v3, :cond_0

    .line 479
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/qr;->ᑦ(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :cond_0
    goto :goto_0

    .line 481
    :catch_0
    move-exception v3

    .line 482
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Utils#getBluetoothMacAddress failed, returning null. Requires prior call to BluetoothAdatpter.getDefaultAdapter() on thread that has called Looper.prepare()"

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 485
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public cq()Ljava/lang/String;
    .locals 4

    .line 388
    const/4 v2, 0x0

    .line 390
    iget-boolean v0, p0, Lo/qr;->Wd:Z

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Lo/qa;

    iget-object v1, p0, Lo/qr;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/qa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lo/qa;->cl()Lo/pz;

    move-result-object v3

    .line 393
    if-eqz v3, :cond_0

    .line 394
    iget-object v2, v3, Lo/pz;->pX:Ljava/lang/String;

    .line 398
    :cond_0
    return-object v2
.end method

.method public cz()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lo/qr;->We:Z

    return v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 2

    .line 384
    iget-object v0, p0, Lo/qr;->Wc:Lo/qs;

    iget-object v1, p0, Lo/qr;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/qs;->ᵀ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 4

    .line 490
    iget-boolean v0, p0, Lo/qr;->Wd:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 492
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string v1, "SERIAL"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 493
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/qr;->ᑦ(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 494
    :catch_0
    move-exception v3

    .line 495
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Could not retrieve android.os.Build.SERIAL value"

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 499
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ʹ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 154
    const/4 v3, 0x0

    .line 159
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    const-string v0, "\\."

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/qh;->І(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 163
    const/4 v0, 0x1

    invoke-static {v0, v7}, Lo/qh;->ᐝ(ILjava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 168
    goto :goto_0

    .line 164
    :catch_0
    move-exception v4

    .line 166
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Could not create cipher to encrypt headers."

    invoke-interface {v0, v1, v2, v4}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    const-string v0, ""

    return-object v0

    .line 169
    :goto_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 171
    invoke-direct {p0, v4}, Lo/qr;->ˋ(Lorg/json/JSONObject;)V

    .line 172
    invoke-direct {p0, v4}, Lo/qr;->ˎ(Lorg/json/JSONObject;)V

    .line 173
    invoke-direct {p0, v4}, Lo/qr;->ˏ(Lorg/json/JSONObject;)V

    .line 174
    invoke-direct {p0, v4}, Lo/qr;->ᐝ(Lorg/json/JSONObject;)V

    .line 177
    const-string v5, ""

    .line 178
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lo/qh;->ˌ([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v5, v0

    .line 183
    goto :goto_1

    .line 181
    :catch_1
    move-exception v6

    .line 182
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Could not encrypt IDs"

    invoke-interface {v0, v1, v2, v6}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    :cond_0
    :goto_1
    return-object v5

    nop

    :array_0
    .array-data 2
        0x73s
        0x6cs
        0x63s
    .end array-data
.end method

.method public Ἲ()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Map<Lo/qr$if;Ljava/lang/String;>;"
        }
    .end annotation

    .line 357
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 362
    iget-object v0, p0, Lo/qr;->nz:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/pq;

    move-object v4, v0

    .line 363
    instance-of v0, v4, Lo/qm;

    if-eqz v0, :cond_0

    .line 364
    move-object v0, v4

    check-cast v0, Lo/qm;

    move-object v5, v0

    .line 365
    invoke-interface {v5}, Lo/qm;->Ἲ()Ljava/util/Map;

    move-result-object v6

    .line 367
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v8, v0

    .line 368
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/qr$if;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lo/qr;->ˊ(Ljava/util/Map;Lo/qr$if;Ljava/lang/String;)V

    .line 369
    goto :goto_1

    .line 371
    :cond_0
    goto :goto_0

    .line 373
    :cond_1
    sget-object v0, Lo/qr$if;->Wi:Lo/qr$if;

    invoke-virtual {p0}, Lo/qr;->cF()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lo/qr;->ˊ(Ljava/util/Map;Lo/qr$if;Ljava/lang/String;)V

    .line 374
    sget-object v0, Lo/qr$if;->Wj:Lo/qr$if;

    invoke-virtual {p0}, Lo/qr;->cG()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lo/qr;->ˊ(Ljava/util/Map;Lo/qr$if;Ljava/lang/String;)V

    .line 375
    sget-object v0, Lo/qr$if;->Wk:Lo/qr$if;

    invoke-virtual {p0}, Lo/qr;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lo/qr;->ˊ(Ljava/util/Map;Lo/qr$if;Ljava/lang/String;)V

    .line 376
    sget-object v0, Lo/qr$if;->Wf:Lo/qr$if;

    invoke-virtual {p0}, Lo/qr;->cH()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lo/qr;->ˊ(Ljava/util/Map;Lo/qr$if;Ljava/lang/String;)V

    .line 377
    sget-object v0, Lo/qr$if;->Wg:Lo/qr$if;

    invoke-virtual {p0}, Lo/qr;->cI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lo/qr;->ˊ(Ljava/util/Map;Lo/qr$if;Ljava/lang/String;)V

    .line 378
    sget-object v0, Lo/qr$if;->Wl:Lo/qr$if;

    invoke-virtual {p0}, Lo/qr;->cq()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lo/qr;->ˊ(Ljava/util/Map;Lo/qr$if;Ljava/lang/String;)V

    .line 380
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
