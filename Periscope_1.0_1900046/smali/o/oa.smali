.class Lo/oa;
.super Lo/ru;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ru<Lo/nz;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/rt;Lo/qk;Lo/si;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Lo/rt<Lo/nz;>;Lo/qk;Lo/si;I)V"
        }
    .end annotation

    .line 21
    invoke-direct/range {p0 .. p5}, Lo/ru;-><init>(Landroid/content/Context;Lo/rt;Lo/qk;Lo/sc;I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected ḭ()Ljava/lang/String;
    .locals 4

    .line 26
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "se"

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

    iget-object v1, p0, Lo/oa;->ql:Lo/qk;

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
