.class Lo/uu;
.super Ljava/io/OutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZV:Lo/ut;


# direct methods
.method constructor <init>(Lo/ut;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lo/uu;->ZV:Lo/ut;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 189
    iget-object v0, p0, Lo/uu;->ZV:Lo/ut;

    invoke-virtual {v0}, Lo/ut;->close()V

    .line 190
    return-void
.end method

.method public flush()V
    .locals 1

    .line 183
    iget-object v0, p0, Lo/uu;->ZV:Lo/ut;

    invoke-static {v0}, Lo/ut;->ˊ(Lo/ut;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lo/uu;->ZV:Lo/ut;

    invoke-virtual {v0}, Lo/ut;->flush()V

    .line 186
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/uu;->ZV:Lo/ut;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2

    .line 170
    iget-object v0, p0, Lo/uu;->ZV:Lo/ut;

    invoke-static {v0}, Lo/ut;->ˊ(Lo/ut;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lo/uu;->ZV:Lo/ut;

    iget-object v0, v0, Lo/ut;->ZT:Lo/ue;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 172
    iget-object v0, p0, Lo/uu;->ZV:Lo/ut;

    invoke-virtual {v0}, Lo/ut;->eh()Lo/uh;

    .line 173
    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 176
    iget-object v0, p0, Lo/uu;->ZV:Lo/ut;

    invoke-static {v0}, Lo/ut;->ˊ(Lo/ut;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iget-object v0, p0, Lo/uu;->ZV:Lo/ut;

    iget-object v0, v0, Lo/ut;->ZT:Lo/ue;

    invoke-virtual {v0, p1, p2, p3}, Lo/ue;->ˉ([BII)Lo/ue;

    .line 178
    iget-object v0, p0, Lo/uu;->ZV:Lo/ut;

    invoke-virtual {v0}, Lo/ut;->eh()Lo/uh;

    .line 179
    return-void
.end method
