.class Lo/ⅈ;
.super Lo/ru;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ru<Lo/\ufb4d;>;"
    }
.end annotation


# instance fields
.field private py:Lo/tc;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/ﺓ;Lo/qk;Lo/sc;)V
    .locals 6

    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    const/16 v5, 0x64

    invoke-direct/range {v0 .. v5}, Lo/ru;-><init>(Landroid/content/Context;Lo/rt;Lo/qk;Lo/sc;I)V

    .line 33
    return-void
.end method


# virtual methods
.method ˊ(Lo/tc;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lo/ⅈ;->py:Lo/tc;

    .line 65
    return-void
.end method

.method protected ḭ()Ljava/lang/String;
    .locals 4

    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ⅈ;->ql:Lo/qk;

    invoke-interface {v1}, Lo/qk;->cy()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected ṫ()I
    .locals 1

    .line 51
    iget-object v0, p0, Lo/ⅈ;->py:Lo/tc;

    if-nez v0, :cond_0

    invoke-super {p0}, Lo/ru;->ṫ()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ⅈ;->py:Lo/tc;

    iget v0, v0, Lo/tc;->Yy:I

    :goto_0
    return v0
.end method

.method protected ṭ()I
    .locals 1

    .line 58
    iget-object v0, p0, Lo/ⅈ;->py:Lo/tc;

    if-nez v0, :cond_0

    invoke-super {p0}, Lo/ru;->ṭ()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ⅈ;->py:Lo/tc;

    iget v0, v0, Lo/tc;->Yw:I

    :goto_0
    return v0
.end method
