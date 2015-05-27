.class Lo/uc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/va;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZB:Lo/ua;

.field final synthetic ZC:Lo/va;


# direct methods
.method constructor <init>(Lo/ua;Lo/va;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lo/uc;->ZB:Lo/ua;

    iput-object p2, p0, Lo/uc;->ZC:Lo/va;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 222
    const/4 v1, 0x0

    .line 224
    :try_start_0
    iget-object v0, p0, Lo/uc;->ZC:Lo/va;

    invoke-interface {v0}, Lo/va;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    const/4 v1, 0x1

    .line 229
    iget-object v0, p0, Lo/uc;->ZB:Lo/ua;

    invoke-virtual {v0, v1}, Lo/ua;->exit(Z)V

    .line 230
    goto :goto_0

    .line 226
    :catch_0
    move-exception v2

    .line 227
    :try_start_1
    iget-object v0, p0, Lo/uc;->ZB:Lo/ua;

    invoke-virtual {v0, v2}, Lo/ua;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :catchall_0
    move-exception v3

    iget-object v0, p0, Lo/uc;->ZB:Lo/ua;

    invoke-virtual {v0, v1}, Lo/ua;->exit(Z)V

    throw v3

    .line 231
    :goto_0
    return-void
.end method

.method public read(Lo/ue;J)J
    .locals 7

    .line 208
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lo/uc;->ZB:Lo/ua;

    invoke-virtual {v0}, Lo/ua;->enter()V

    .line 211
    :try_start_0
    iget-object v0, p0, Lo/uc;->ZC:Lo/va;

    invoke-interface {v0, p1, p2, p3}, Lo/va;->read(Lo/ue;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 212
    const/4 v1, 0x1

    .line 213
    move-wide v4, v2

    .line 217
    iget-object v0, p0, Lo/uc;->ZB:Lo/ua;

    invoke-virtual {v0, v1}, Lo/ua;->exit(Z)V

    return-wide v4

    .line 214
    :catch_0
    move-exception v2

    .line 215
    :try_start_1
    iget-object v0, p0, Lo/uc;->ZB:Lo/ua;

    invoke-virtual {v0, v2}, Lo/ua;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :catchall_0
    move-exception v6

    iget-object v0, p0, Lo/uc;->ZB:Lo/ua;

    invoke-virtual {v0, v1}, Lo/ua;->exit(Z)V

    throw v6
.end method

.method public timeout()Lo/vb;
    .locals 1

    .line 234
    iget-object v0, p0, Lo/uc;->ZB:Lo/ua;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/uc;->ZC:Lo/va;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
