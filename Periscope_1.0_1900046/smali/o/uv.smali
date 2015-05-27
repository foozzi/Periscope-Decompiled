.class final Lo/uv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ui;


# instance fields
.field public final ZT:Lo/ue;

.field public final ZW:Lo/va;

.field private closed:Z


# direct methods
.method public constructor <init>(Lo/va;)V
    .locals 1

    .line 37
    new-instance v0, Lo/ue;

    invoke-direct {v0}, Lo/ue;-><init>()V

    invoke-direct {p0, p1, v0}, Lo/uv;-><init>(Lo/va;Lo/ue;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lo/va;Lo/ue;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p2, p0, Lo/uv;->ZT:Lo/ue;

    .line 33
    iput-object p1, p0, Lo/uv;->ZW:Lo/va;

    .line 34
    return-void
.end method

.method static synthetic ˊ(Lo/uv;)Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lo/uv;->closed:Z

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 361
    iget-boolean v0, p0, Lo/uv;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 362
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/uv;->closed:Z

    .line 363
    iget-object v0, p0, Lo/uv;->ZW:Lo/va;

    invoke-interface {v0}, Lo/va;->close()V

    .line 364
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->clear()V

    .line 365
    return-void
.end method

.method public dS()Lo/ue;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    return-object v0
.end method

.method public dW()Z
    .locals 4

    .line 59
    iget-boolean v0, p0, Lo/uv;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->dW()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/uv;->ZW:Lo/va;

    iget-object v1, p0, Lo/uv;->ZT:Lo/ue;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lo/va;->read(Lo/ue;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dX()Ljava/io/InputStream;
    .locals 1

    .line 323
    new-instance v0, Lo/uw;

    invoke-direct {v0, p0}, Lo/uw;-><init>(Lo/uv;)V

    return-object v0
.end method

.method public dZ()S
    .locals 2

    .line 212
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lo/uv;->ᔇ(J)V

    .line 213
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->dZ()S

    move-result v0

    return v0
.end method

.method public ea()I
    .locals 2

    .line 222
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lo/uv;->ᔇ(J)V

    .line 223
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->ea()I

    move-result v0

    return v0
.end method

.method public eb()J
    .locals 7

    .line 237
    const/4 v5, 0x0

    .line 239
    :goto_0
    add-int/lit8 v0, v5, 0x1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lo/uv;->ˣ(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    goto :goto_1

    .line 242
    :cond_0
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    int-to-long v1, v5

    invoke-virtual {v0, v1, v2}, Lo/ue;->ᔈ(J)B

    move-result v6

    .line 243
    const/16 v0, 0x30

    if-lt v6, v0, :cond_1

    const/16 v0, 0x39

    if-le v6, v0, :cond_2

    :cond_1
    if-nez v5, :cond_3

    const/16 v0, 0x2d

    if-eq v6, v0, :cond_2

    .line 244
    goto :goto_1

    .line 246
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 247
    goto :goto_0

    .line 248
    :cond_3
    :goto_1
    if-nez v5, :cond_4

    .line 249
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/uv;->ZT:Lo/ue;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lo/ue;->ᔈ(J)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_4
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->eb()J

    move-result-wide v0

    return-wide v0
.end method

.method public ec()J
    .locals 7

    .line 257
    const/4 v5, 0x0

    .line 259
    :goto_0
    add-int/lit8 v0, v5, 0x1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lo/uv;->ˣ(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    goto :goto_1

    .line 262
    :cond_0
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    int-to-long v1, v5

    invoke-virtual {v0, v1, v2}, Lo/ue;->ᔈ(J)B

    move-result v6

    .line 263
    const/16 v0, 0x30

    if-lt v6, v0, :cond_1

    const/16 v0, 0x39

    if-le v6, v0, :cond_3

    :cond_1
    const/16 v0, 0x61

    if-lt v6, v0, :cond_2

    const/16 v0, 0x66

    if-le v6, v0, :cond_3

    :cond_2
    const/16 v0, 0x41

    if-lt v6, v0, :cond_4

    const/16 v0, 0x46

    if-le v6, v0, :cond_3

    .line 264
    goto :goto_1

    .line 266
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 267
    goto :goto_0

    .line 268
    :cond_4
    :goto_1
    if-nez v5, :cond_5

    .line 269
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/uv;->ZT:Lo/ue;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lo/ue;->ᔈ(J)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_5
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->ec()J

    move-result-wide v0

    return-wide v0
.end method

.method public ed()Ljava/lang/String;
    .locals 2

    .line 163
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    iget-object v1, p0, Lo/uv;->ZW:Lo/va;

    invoke-virtual {v0, v1}, Lo/ue;->ˊ(Lo/va;)J

    .line 164
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->ed()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ee()Ljava/lang/String;
    .locals 9

    .line 196
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lo/uv;->ʼ(B)J

    move-result-wide v6

    .line 197
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    .line 198
    new-instance v8, Lo/ue;

    invoke-direct {v8}, Lo/ue;-><init>()V

    .line 199
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    move-object v1, v8

    iget-object v2, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v2}, Lo/ue;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/ue;->ˊ(Lo/ue;JJ)Lo/ue;

    .line 200
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v2}, Lo/ue;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lo/ue;->readByteString()Lo/uj;

    move-result-object v2

    invoke-virtual {v2}, Lo/uj;->el()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0, v6, v7}, Lo/ue;->ᴸ(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ef()[B
    .locals 2

    .line 92
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    iget-object v1, p0, Lo/uv;->ZW:Lo/va;

    invoke-virtual {v0, v1}, Lo/ue;->ˊ(Lo/va;)J

    .line 93
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->ef()[B

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 8

    .line 122
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lo/vd;->checkOffsetAndCount(JJJ)V

    .line 124
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    iget-wide v0, v0, Lo/ue;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lo/uv;->ZW:Lo/va;

    iget-object v1, p0, Lo/uv;->ZT:Lo/ue;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lo/va;->read(Lo/ue;J)J

    move-result-wide v6

    .line 126
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 129
    :cond_0
    int-to-long v0, p3

    iget-object v2, p0, Lo/uv;->ZT:Lo/ue;

    iget-wide v2, v2, Lo/ue;->size:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v6, v0

    .line 130
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0, p1, p2, v6}, Lo/ue;->read([BII)I

    move-result v0

    return v0
.end method

.method public read(Lo/ue;J)J
    .locals 6

    .line 45
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iget-boolean v0, p0, Lo/uv;->closed:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    iget-wide v0, v0, Lo/ue;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 50
    iget-object v0, p0, Lo/uv;->ZW:Lo/va;

    iget-object v1, p0, Lo/uv;->ZT:Lo/ue;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lo/va;->read(Lo/ue;J)J

    move-result-wide v4

    .line 51
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    return-wide v0

    .line 54
    :cond_3
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    iget-wide v0, v0, Lo/ue;->size:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 55
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0, p1, v4, v5}, Lo/ue;->read(Lo/ue;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readByte()B
    .locals 2

    .line 77
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lo/uv;->ᔇ(J)V

    .line 78
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->readByte()B

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 7

    .line 107
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lo/uv;->ᔇ(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_1

    .line 108
    :catch_0
    move-exception v4

    .line 110
    const/4 v5, 0x0

    .line 111
    :goto_0
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    iget-wide v0, v0, Lo/ue;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 112
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    iget-object v1, p0, Lo/uv;->ZT:Lo/ue;

    iget-wide v1, v1, Lo/ue;->size:J

    long-to-int v1, v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, p1, v5, v1}, Lo/ue;->read([BII)I

    move-result v6

    .line 113
    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 114
    :cond_0
    add-int/2addr v5, v6

    .line 115
    goto :goto_0

    .line 116
    :cond_1
    throw v4

    .line 118
    :goto_1
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0, p1}, Lo/ue;->readFully([B)V

    .line 119
    return-void
.end method

.method public readInt()I
    .locals 2

    .line 217
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lo/uv;->ᔇ(J)V

    .line 218
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    .line 227
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lo/uv;->ᔇ(J)V

    .line 228
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 2

    .line 207
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lo/uv;->ᔇ(J)V

    .line 208
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->readShort()S

    move-result v0

    return v0
.end method

.method public timeout()Lo/vb;
    .locals 1

    .line 368
    iget-object v0, p0, Lo/uv;->ZW:Lo/va;

    invoke-interface {v0}, Lo/va;->timeout()Lo/vb;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/uv;->ZW:Lo/va;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ʼ(B)J
    .locals 2

    .line 289
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lo/uv;->ˊ(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public ˊ(BJ)J
    .locals 6

    .line 293
    iget-boolean v0, p0, Lo/uv;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    iget-wide v0, v0, Lo/ue;->size:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    .line 295
    iget-object v0, p0, Lo/uv;->ZW:Lo/va;

    iget-object v1, p0, Lo/uv;->ZT:Lo/ue;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lo/va;->read(Lo/ue;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 298
    :cond_1
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0, p1, p2, p3}, Lo/ue;->ˊ(BJ)J

    move-result-wide v0

    move-wide v4, v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 299
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    iget-wide p2, v0, Lo/ue;->size:J

    .line 300
    iget-object v0, p0, Lo/uv;->ZW:Lo/va;

    iget-object v1, p0, Lo/uv;->ZT:Lo/ue;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lo/va;->read(Lo/ue;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    .line 302
    :cond_2
    return-wide v4
.end method

.method public ˊ(Lo/ue;J)V
    .locals 3

    .line 135
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lo/uv;->ᔇ(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 136
    :catch_0
    move-exception v2

    .line 138
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {p1, v0}, Lo/ue;->ˊ(Lo/va;)J

    .line 139
    throw v2

    .line 141
    :goto_0
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0, p1, p2, p3}, Lo/ue;->ˊ(Lo/ue;J)V

    .line 142
    return-void
.end method

.method public ˣ(J)Z
    .locals 4

    .line 68
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-boolean v0, p0, Lo/uv;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    iget-wide v0, v0, Lo/ue;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    .line 71
    iget-object v0, p0, Lo/uv;->ZW:Lo/va;

    iget-object v1, p0, Lo/uv;->ZT:Lo/ue;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lo/va;->read(Lo/ue;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 73
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public ᔇ(J)V
    .locals 1

    .line 64
    invoke-virtual {p0, p1, p2}, Lo/uv;->ˣ(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 65
    :cond_0
    return-void
.end method

.method public ᗮ(J)Lo/uj;
    .locals 1

    .line 87
    invoke-virtual {p0, p1, p2}, Lo/uv;->ᔇ(J)V

    .line 88
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0, p1, p2}, Lo/ue;->ᗮ(J)Lo/uj;

    move-result-object v0

    return-object v0
.end method

.method public ᵀ(J)[B
    .locals 1

    .line 97
    invoke-virtual {p0, p1, p2}, Lo/uv;->ᔇ(J)V

    .line 98
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0, p1, p2}, Lo/ue;->ᵀ(J)[B

    move-result-object v0

    return-object v0
.end method

.method public ᵋ(J)V
    .locals 6

    .line 277
    iget-boolean v0, p0, Lo/uv;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 279
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    iget-wide v0, v0, Lo/ue;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/uv;->ZW:Lo/va;

    iget-object v1, p0, Lo/uv;->ZT:Lo/ue;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lo/va;->read(Lo/ue;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 280
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 282
    :cond_1
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->size()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 283
    iget-object v0, p0, Lo/uv;->ZT:Lo/ue;

    invoke-virtual {v0, v4, v5}, Lo/ue;->ᵋ(J)V

    .line 284
    sub-long/2addr p1, v4

    .line 285
    goto :goto_0

    .line 286
    :cond_2
    return-void
.end method
