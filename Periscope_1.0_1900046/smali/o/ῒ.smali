.class Lo/ῒ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final jh:Lo/ｼ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\uff7c<Lo/\ufb86;Ljava/lang/String;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lo/ｼ;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lo/ｼ;-><init>(I)V

    iput-object v0, p0, Lo/ῒ;->jh:Lo/ｼ;

    return-void
.end method


# virtual methods
.method public ι(Lo/ﮆ;)Ljava/lang/String;
    .locals 5

    .line 19
    iget-object v2, p0, Lo/ῒ;->jh:Lo/ｼ;

    monitor-enter v2

    .line 20
    :try_start_0
    iget-object v0, p0, Lo/ῒ;->jh:Lo/ｼ;

    invoke-virtual {v0, p1}, Lo/ｼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 21
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 22
    :goto_0
    if-nez v1, :cond_0

    .line 24
    const-string v0, "SHA-256"

    :try_start_1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 25
    invoke-interface {p1, v2}, Lo/ﮆ;->ˊ(Ljava/security/MessageDigest;)V

    .line 26
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lo/ﾕ;->ᐝ([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 31
    goto :goto_1

    .line 27
    :catch_0
    move-exception v2

    .line 28
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 31
    goto :goto_1

    .line 29
    :catch_1
    move-exception v2

    .line 30
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 32
    :goto_1
    iget-object v2, p0, Lo/ῒ;->jh:Lo/ｼ;

    monitor-enter v2

    .line 33
    :try_start_2
    iget-object v0, p0, Lo/ῒ;->jh:Lo/ｼ;

    invoke-virtual {v0, p1, v1}, Lo/ｼ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception v4

    monitor-exit v2

    throw v4

    .line 36
    :cond_0
    :goto_2
    return-object v1
.end method
