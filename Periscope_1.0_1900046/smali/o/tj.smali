.class Lo/tj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/th;


# instance fields
.field private final Rw:Lo/pq;


# direct methods
.method public constructor <init>(Lo/pq;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lo/tj;->Rw:Lo/pq;

    .line 25
    return-void
.end method


# virtual methods
.method public dI()Lorg/json/JSONObject;
    .locals 8

    .line 29
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Reading cached settings..."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 35
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v0, Lo/sw;

    iget-object v1, p0, Lo/tj;->Rw:Lo/pq;

    invoke-direct {v0, v1}, Lo/sw;-><init>(Lo/pq;)V

    invoke-virtual {v0}, Lo/sw;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "com.crashlytics.settings.json"

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .line 40
    invoke-static {v3}, Lo/qh;->ʽ(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "No cached settings found."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :goto_0
    const-string v0, "Error while closing settings cache file."

    invoke-static {v3, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 50
    goto :goto_1

    .line 46
    :catch_0
    move-exception v5

    .line 47
    :try_start_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Failed to fetch cached settings"

    invoke-interface {v0, v1, v2, v5}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    const-string v0, "Error while closing settings cache file."

    invoke-static {v3, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 50
    goto :goto_1

    .line 49
    :catchall_0
    move-exception v7

    const-string v0, "Error while closing settings cache file."

    invoke-static {v3, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v7

    .line 52
    :goto_1
    return-object v4
.end method

.method public ˊ(JLorg/json/JSONObject;)V
    .locals 7

    .line 57
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Writing settings to cache file..."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    if-eqz p3, :cond_0

    .line 60
    const/4 v4, 0x0

    .line 63
    const-string v0, "expires_at"

    :try_start_0
    invoke-virtual {p3, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 65
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    new-instance v2, Lo/sw;

    iget-object v3, p0, Lo/tj;->Rw:Lo/pq;

    invoke-direct {v2, v3}, Lo/sw;-><init>(Lo/pq;)V

    invoke-virtual {v2}, Lo/sw;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.crashlytics.settings.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v4, v0

    .line 67
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    const-string v0, "Failed to close settings writer."

    invoke-static {v4, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 73
    goto :goto_0

    .line 69
    :catch_0
    move-exception v5

    .line 70
    :try_start_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Failed to cache settings"

    invoke-interface {v0, v1, v2, v5}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    const-string v0, "Failed to close settings writer."

    invoke-static {v4, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 73
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v6

    const-string v0, "Failed to close settings writer."

    invoke-static {v4, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v6

    .line 75
    :cond_0
    :goto_0
    return-void
.end method
