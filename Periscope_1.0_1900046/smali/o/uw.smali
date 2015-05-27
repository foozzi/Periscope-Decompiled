.class Lo/uw;
.super Ljava/io/InputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZX:Lo/uv;


# direct methods
.method constructor <init>(Lo/uv;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lo/uw;->ZX:Lo/uv;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    .line 346
    iget-object v0, p0, Lo/uw;->ZX:Lo/uv;

    invoke-static {v0}, Lo/uv;->ˊ(Lo/uv;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    iget-object v0, p0, Lo/uw;->ZX:Lo/uv;

    iget-object v0, v0, Lo/uv;->ZT:Lo/ue;

    iget-wide v0, v0, Lo/ue;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 351
    iget-object v0, p0, Lo/uw;->ZX:Lo/uv;

    invoke-virtual {v0}, Lo/uv;->close()V

    .line 352
    return-void
.end method

.method public read()I
    .locals 6

    .line 325
    iget-object v0, p0, Lo/uw;->ZX:Lo/uv;

    invoke-static {v0}, Lo/uv;->ˊ(Lo/uv;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    iget-object v0, p0, Lo/uw;->ZX:Lo/uv;

    iget-object v0, v0, Lo/uv;->ZT:Lo/ue;

    iget-wide v0, v0, Lo/ue;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 327
    iget-object v0, p0, Lo/uw;->ZX:Lo/uv;

    iget-object v0, v0, Lo/uv;->ZW:Lo/va;

    iget-object v1, p0, Lo/uw;->ZX:Lo/uv;

    iget-object v1, v1, Lo/uv;->ZT:Lo/ue;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lo/va;->read(Lo/ue;J)J

    move-result-wide v4

    .line 328
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 330
    :cond_1
    iget-object v0, p0, Lo/uw;->ZX:Lo/uv;

    iget-object v0, v0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 8

    .line 334
    iget-object v0, p0, Lo/uw;->ZX:Lo/uv;

    invoke-static {v0}, Lo/uv;->ˊ(Lo/uv;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lo/vd;->checkOffsetAndCount(JJJ)V

    .line 337
    iget-object v0, p0, Lo/uw;->ZX:Lo/uv;

    iget-object v0, v0, Lo/uv;->ZT:Lo/ue;

    iget-wide v0, v0, Lo/ue;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lo/uw;->ZX:Lo/uv;

    iget-object v0, v0, Lo/uv;->ZW:Lo/va;

    iget-object v1, p0, Lo/uw;->ZX:Lo/uv;

    iget-object v1, v1, Lo/uv;->ZT:Lo/ue;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lo/va;->read(Lo/ue;J)J

    move-result-wide v6

    .line 339
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 342
    :cond_1
    iget-object v0, p0, Lo/uw;->ZX:Lo/uv;

    iget-object v0, v0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0, p1, p2, p3}, Lo/ue;->read([BII)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/uw;->ZX:Lo/uv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
