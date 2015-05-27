.class final Lo/ut;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/uh;


# instance fields
.field public final ZT:Lo/ue;

.field public final ZU:Lo/uz;

.field private closed:Z


# direct methods
.method public constructor <init>(Lo/uz;)V
    .locals 1

    .line 35
    new-instance v0, Lo/ue;

    invoke-direct {v0}, Lo/ue;-><init>()V

    invoke-direct {p0, p1, v0}, Lo/ut;-><init>(Lo/uz;Lo/ue;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lo/uz;Lo/ue;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p2, p0, Lo/ut;->ZT:Lo/ue;

    .line 31
    iput-object p1, p0, Lo/ut;->ZU:Lo/uz;

    .line 32
    return-void
.end method

.method static synthetic ˊ(Lo/ut;)Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lo/ut;->closed:Z

    return v0
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 207
    iget-boolean v0, p0, Lo/ut;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 211
    :cond_0
    const/4 v4, 0x0

    .line 213
    :try_start_0
    iget-object v0, p0, Lo/ut;->ZT:Lo/ue;

    iget-wide v0, v0, Lo/ue;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 214
    iget-object v0, p0, Lo/ut;->ZU:Lo/uz;

    iget-object v1, p0, Lo/ut;->ZT:Lo/ue;

    iget-object v2, p0, Lo/ut;->ZT:Lo/ue;

    iget-wide v2, v2, Lo/ue;->size:J

    invoke-interface {v0, v1, v2, v3}, Lo/uz;->write(Lo/ue;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_1
    goto :goto_0

    .line 216
    :catch_0
    move-exception v5

    .line 217
    move-object v4, v5

    .line 221
    :goto_0
    :try_start_1
    iget-object v0, p0, Lo/ut;->ZU:Lo/uz;

    invoke-interface {v0}, Lo/uz;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    goto :goto_1

    .line 222
    :catch_1
    move-exception v5

    .line 223
    if-nez v4, :cond_2

    move-object v4, v5

    .line 225
    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ut;->closed:Z

    .line 227
    if-eqz v4, :cond_3

    invoke-static {v4}, Lo/vd;->ʻ(Ljava/lang/Throwable;)V

    .line 228
    :cond_3
    return-void
.end method

.method public dS()Lo/ue;
    .locals 1

    .line 39
    iget-object v0, p0, Lo/ut;->ZT:Lo/ue;

    return-object v0
.end method

.method public dT()Ljava/io/OutputStream;
    .locals 1

    .line 168
    new-instance v0, Lo/uu;

    invoke-direct {v0, p0}, Lo/uu;-><init>(Lo/ut;)V

    return-object v0
.end method

.method public dV()Lo/uh;
    .locals 4

    .line 161
    iget-boolean v0, p0, Lo/ut;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lo/ut;->ZT:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->size()J

    move-result-wide v2

    .line 163
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lo/ut;->ZU:Lo/uz;

    iget-object v1, p0, Lo/ut;->ZT:Lo/ue;

    invoke-interface {v0, v1, v2, v3}, Lo/uz;->write(Lo/ue;J)V

    .line 164
    :cond_1
    return-object p0
.end method

.method public eh()Lo/uh;
    .locals 4

    .line 154
    iget-boolean v0, p0, Lo/ut;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, Lo/ut;->ZT:Lo/ue;

    invoke-virtual {v0}, Lo/ue;->dY()J

    move-result-wide v2

    .line 156
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lo/ut;->ZU:Lo/uz;

    iget-object v1, p0, Lo/ut;->ZT:Lo/ue;

    invoke-interface {v0, v1, v2, v3}, Lo/uz;->write(Lo/ue;J)V

    .line 157
    :cond_1
    return-object p0
.end method

.method public flush()V
    .locals 4

    .line 199
    iget-boolean v0, p0, Lo/ut;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    iget-object v0, p0, Lo/ut;->ZT:Lo/ue;

    iget-wide v0, v0, Lo/ue;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 201
    iget-object v0, p0, Lo/ut;->ZU:Lo/uz;

    iget-object v1, p0, Lo/ut;->ZT:Lo/ue;

    iget-object v2, p0, Lo/ut;->ZT:Lo/ue;

    iget-wide v2, v2, Lo/ue;->size:J

    invoke-interface {v0, v1, v2, v3}, Lo/uz;->write(Lo/ue;J)V

    .line 203
    :cond_1
    iget-object v0, p0, Lo/ut;->ZU:Lo/uz;

    invoke-interface {v0}, Lo/uz;->flush()V

    .line 204
    return-void
.end method

.method public timeout()Lo/vb;
    .locals 1

    .line 231
    iget-object v0, p0, Lo/ut;->ZU:Lo/uz;

    invoke-interface {v0}, Lo/uz;->timeout()Lo/vb;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ut;->ZU:Lo/uz;

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
    .locals 2

    .line 44
    iget-boolean v0, p0, Lo/ut;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iget-object v0, p0, Lo/ut;->ZT:Lo/ue;

    invoke-virtual {v0, p1, p2, p3}, Lo/ue;->write(Lo/ue;J)V

    .line 46
    invoke-virtual {p0}, Lo/ut;->eh()Lo/uh;

    .line 47
    return-void
.end method

.method public ǀ(I)Lo/uh;
    .locals 2

    .line 118
    iget-boolean v0, p0, Lo/ut;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Lo/ut;->ZT:Lo/ue;

    invoke-virtual {v0, p1}, Lo/ue;->ﾉ(I)Lo/ue;

    .line 120
    invoke-virtual {p0}, Lo/ut;->eh()Lo/uh;

    move-result-object v0

    return-object v0
.end method

.method public ǃ(J)Lo/uh;
    .locals 2

    .line 148
    iget-boolean v0, p0, Lo/ut;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Lo/ut;->ZT:Lo/ue;

    invoke-virtual {v0, p1, p2}, Lo/ue;->ı(J)Lo/ue;

    .line 150
    invoke-virtual {p0}, Lo/ut;->eh()Lo/uh;

    move-result-object v0

    return-object v0
.end method

.method public ɔ(I)Lo/uh;
    .locals 2

    .line 106
    iget-boolean v0, p0, Lo/ut;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lo/ut;->ZT:Lo/ue;

    invoke-virtual {v0, p1}, Lo/ue;->ﻟ(I)Lo/ue;

    .line 108
    invoke-virtual {p0}, Lo/ut;->eh()Lo/uh;

    move-result-object v0

    return-object v0
.end method

.method public ɟ(I)Lo/uh;
    .locals 2

    .line 100
    iget-boolean v0, p0, Lo/ut;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lo/ut;->ZT:Lo/ue;

    invoke-virtual {v0, p1}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 102
    invoke-virtual {p0}, Lo/ut;->eh()Lo/uh;

    move-result-object v0

    return-object v0
.end method

.method public ʲ(J)Lo/uh;
    .locals 2

    .line 142
    iget-boolean v0, p0, Lo/ut;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iget-object v0, p0, Lo/ut;->ZT:Lo/ue;

    invoke-virtual {v0, p1, p2}, Lo/ue;->ﾟ(J)Lo/ue;

    .line 144
    invoke-virtual {p0}, Lo/ut;->eh()Lo/uh;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/va;)J
    .locals 8

    .line 80
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    const-wide/16 v4, 0x0

    .line 82
    :goto_0
    iget-object v0, p0, Lo/ut;->ZT:Lo/ue;

    const-wide/16 v1, 0x800

    invoke-interface {p1, v0, v1, v2}, Lo/va;->read(Lo/ue;J)J

    move-result-wide v0

    move-wide v6, v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 83
    add-long/2addr v4, v6

    .line 84
    invoke-virtual {p0}, Lo/ut;->eh()Lo/uh;

    goto :goto_0

    .line 86
    :cond_1
    return-wide v4
.end method

.method public ˋ(Lo/uj;)Lo/uh;
    .locals 2

    .line 50
    iget-boolean v0, p0, Lo/ut;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iget-object v0, p0, Lo/ut;->ZT:Lo/ue;

    invoke-virtual {v0, p1}, Lo/ue;->ˊ(Lo/uj;)Lo/ue;

    .line 52
    invoke-virtual {p0}, Lo/ut;->eh()Lo/uh;

    move-result-object v0

    return-object v0
.end method

.method public ˌ([BII)Lo/uh;
    .locals 2

    .line 74
    iget-boolean v0, p0, Lo/ut;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iget-object v0, p0, Lo/ut;->ZT:Lo/ue;

    invoke-virtual {v0, p1, p2, p3}, Lo/ue;->ˉ([BII)Lo/ue;

    .line 76
    invoke-virtual {p0}, Lo/ut;->eh()Lo/uh;

    move-result-object v0

    return-object v0
.end method

.method public ː(J)Lo/uh;
    .locals 2

    .line 130
    iget-boolean v0, p0, Lo/ut;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iget-object v0, p0, Lo/ut;->ZT:Lo/ue;

    invoke-virtual {v0, p1, p2}, Lo/ue;->ᵗ(J)Lo/ue;

    .line 132
    invoke-virtual {p0}, Lo/ut;->eh()Lo/uh;

    move-result-object v0

    return-object v0
.end method

.method public ᐧ([B)Lo/uh;
    .locals 2

    .line 68
    iget-boolean v0, p0, Lo/ut;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-object v0, p0, Lo/ut;->ZT:Lo/ue;

    invoke-virtual {v0, p1}, Lo/ue;->ـ([B)Lo/ue;

    .line 70
    invoke-virtual {p0}, Lo/ut;->eh()Lo/uh;

    move-result-object v0

    return-object v0
.end method

.method public ﹰ(Ljava/lang/String;)Lo/uh;
    .locals 2

    .line 56
    iget-boolean v0, p0, Lo/ut;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget-object v0, p0, Lo/ut;->ZT:Lo/ue;

    invoke-virtual {v0, p1}, Lo/ue;->ﯾ(Ljava/lang/String;)Lo/ue;

    .line 58
    invoke-virtual {p0}, Lo/ut;->eh()Lo/uh;

    move-result-object v0

    return-object v0
.end method
