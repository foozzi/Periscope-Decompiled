.class public Lo/Ξ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﭥ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\ufb65<Ljava/io/InputStream;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, ""

    return-object v0
.end method

.method public ˊ(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 6

    .line 20
    invoke-static {}, Lo/ﮣ;->ῖ()Lo/ﮣ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﮣ;->getBytes()[B

    move-result-object v2

    .line 23
    :goto_0
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    move v3, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p2, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 26
    :cond_0
    const/4 v4, 0x1

    .line 33
    invoke-static {}, Lo/ﮣ;->ῖ()Lo/ﮣ;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/ﮣ;->ˏ([B)Z

    return v4

    .line 27
    :catch_0
    move-exception v3

    .line 28
    const-string v0, "StreamEncoder"

    const/4 v1, 0x3

    :try_start_1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    const-string v0, "StreamEncoder"

    const-string v1, "Failed to encode data onto the OutputStream"

    invoke-static {v0, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :cond_1
    const/4 v4, 0x0

    .line 33
    invoke-static {}, Lo/ﮣ;->ῖ()Lo/ﮣ;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/ﮣ;->ˏ([B)Z

    return v4

    :catchall_0
    move-exception v5

    invoke-static {}, Lo/ﮣ;->ῖ()Lo/ﮣ;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/ﮣ;->ˏ([B)Z

    throw v5
.end method

.method public bridge synthetic ˊ(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1

    .line 15
    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p0, v0, p2}, Lo/Ξ;->ˊ(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method
