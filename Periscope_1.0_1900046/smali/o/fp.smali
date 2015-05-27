.class Lo/fp;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<Ljava/lang/Number;>;"
    }
.end annotation


# instance fields
.field final synthetic Kg:Lo/fl;


# direct methods
.method constructor <init>(Lo/fl;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lo/fp;->Kg:Lo/fl;

    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/kc;Ljava/lang/Number;)V
    .locals 4

    .line 286
    if-nez p2, :cond_0

    .line 287
    invoke-virtual {p1}, Lo/kc;->T()Lo/kc;

    .line 288
    return-void

    .line 290
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 291
    iget-object v0, p0, Lo/fp;->Kg:Lo/fl;

    float-to-double v1, v3

    invoke-static {v0, v1, v2}, Lo/fl;->ˊ(Lo/fl;D)V

    .line 292
    invoke-virtual {p1, p2}, Lo/kc;->ˊ(Ljava/lang/Number;)Lo/kc;

    .line 293
    return-void
.end method

.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 277
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {p0, p1, v0}, Lo/fp;->ˊ(Lo/kc;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 277
    invoke-virtual {p0, p1}, Lo/fp;->ˎ(Lo/jz;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public ˎ(Lo/jz;)Ljava/lang/Float;
    .locals 2

    .line 279
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NB:Lo/kb;

    if-ne v0, v1, :cond_0

    .line 280
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 281
    const/4 v0, 0x0

    return-object v0

    .line 283
    :cond_0
    invoke-virtual {p1}, Lo/jz;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
