.class Lo/ub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/uz;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZA:Lo/uz;

.field final synthetic ZB:Lo/ua;


# direct methods
.method constructor <init>(Lo/ua;Lo/uz;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lo/ub;->ZB:Lo/ua;

    iput-object p2, p0, Lo/ub;->ZA:Lo/uz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 178
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lo/ub;->ZB:Lo/ua;

    invoke-virtual {v0}, Lo/ua;->enter()V

    .line 181
    :try_start_0
    iget-object v0, p0, Lo/ub;->ZA:Lo/uz;

    invoke-interface {v0}, Lo/uz;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    const/4 v1, 0x1

    .line 186
    iget-object v0, p0, Lo/ub;->ZB:Lo/ua;

    invoke-virtual {v0, v1}, Lo/ua;->exit(Z)V

    .line 187
    goto :goto_0

    .line 183
    :catch_0
    move-exception v2

    .line 184
    :try_start_1
    iget-object v0, p0, Lo/ub;->ZB:Lo/ua;

    invoke-virtual {v0, v2}, Lo/ua;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :catchall_0
    move-exception v3

    iget-object v0, p0, Lo/ub;->ZB:Lo/ua;

    invoke-virtual {v0, v1}, Lo/ua;->exit(Z)V

    throw v3

    .line 188
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 4

    .line 165
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lo/ub;->ZB:Lo/ua;

    invoke-virtual {v0}, Lo/ua;->enter()V

    .line 168
    :try_start_0
    iget-object v0, p0, Lo/ub;->ZA:Lo/uz;

    invoke-interface {v0}, Lo/uz;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    const/4 v1, 0x1

    .line 173
    iget-object v0, p0, Lo/ub;->ZB:Lo/ua;

    invoke-virtual {v0, v1}, Lo/ua;->exit(Z)V

    .line 174
    goto :goto_0

    .line 170
    :catch_0
    move-exception v2

    .line 171
    :try_start_1
    iget-object v0, p0, Lo/ub;->ZB:Lo/ua;

    invoke-virtual {v0, v2}, Lo/ua;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :catchall_0
    move-exception v3

    iget-object v0, p0, Lo/ub;->ZB:Lo/ua;

    invoke-virtual {v0, v1}, Lo/ua;->exit(Z)V

    throw v3

    .line 175
    :goto_0
    return-void
.end method

.method public timeout()Lo/vb;
    .locals 1

    .line 191
    iget-object v0, p0, Lo/ub;->ZB:Lo/ua;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ub;->ZA:Lo/uz;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lo/ue;J)V
    .locals 4

    .line 152
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lo/ub;->ZB:Lo/ua;

    invoke-virtual {v0}, Lo/ua;->enter()V

    .line 155
    :try_start_0
    iget-object v0, p0, Lo/ub;->ZA:Lo/uz;

    invoke-interface {v0, p1, p2, p3}, Lo/uz;->write(Lo/ue;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    const/4 v1, 0x1

    .line 160
    iget-object v0, p0, Lo/ub;->ZB:Lo/ua;

    invoke-virtual {v0, v1}, Lo/ua;->exit(Z)V

    .line 161
    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    .line 158
    :try_start_1
    iget-object v0, p0, Lo/ub;->ZB:Lo/ua;

    invoke-virtual {v0, v2}, Lo/ua;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :catchall_0
    move-exception v3

    iget-object v0, p0, Lo/ub;->ZB:Lo/ua;

    invoke-virtual {v0, v1}, Lo/ua;->exit(Z)V

    throw v3

    .line 162
    :goto_0
    return-void
.end method
