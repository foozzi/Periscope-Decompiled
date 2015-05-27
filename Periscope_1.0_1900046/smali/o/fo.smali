.class Lo/fo;
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

    .line 253
    iput-object p1, p0, Lo/fo;->Kg:Lo/fl;

    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/jz;)Ljava/lang/Double;
    .locals 2

    .line 255
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NB:Lo/kb;

    if-ne v0, v1, :cond_0

    .line 256
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 257
    const/4 v0, 0x0

    return-object v0

    .line 259
    :cond_0
    invoke-virtual {p1}, Lo/jz;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/kc;Ljava/lang/Number;)V
    .locals 3

    .line 262
    if-nez p2, :cond_0

    .line 263
    invoke-virtual {p1}, Lo/kc;->T()Lo/kc;

    .line 264
    return-void

    .line 266
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 267
    iget-object v0, p0, Lo/fo;->Kg:Lo/fl;

    invoke-static {v0, v1, v2}, Lo/fl;->ˊ(Lo/fl;D)V

    .line 268
    invoke-virtual {p1, p2}, Lo/kc;->ˊ(Ljava/lang/Number;)Lo/kc;

    .line 269
    return-void
.end method

.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 253
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {p0, p1, v0}, Lo/fo;->ˊ(Lo/kc;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 253
    invoke-virtual {p0, p1}, Lo/fo;->ˊ(Lo/jz;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
