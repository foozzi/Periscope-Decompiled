.class Lo/fq;
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

    .line 309
    iput-object p1, p0, Lo/fq;->Kg:Lo/fl;

    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/kc;Ljava/lang/Number;)V
    .locals 1

    .line 318
    if-nez p2, :cond_0

    .line 319
    invoke-virtual {p1}, Lo/kc;->T()Lo/kc;

    .line 320
    return-void

    .line 322
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/kc;->ᖮ(Ljava/lang/String;)Lo/kc;

    .line 323
    return-void
.end method

.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 309
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {p0, p1, v0}, Lo/fq;->ˊ(Lo/kc;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 309
    invoke-virtual {p0, p1}, Lo/fq;->ˏ(Lo/jz;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public ˏ(Lo/jz;)Ljava/lang/Number;
    .locals 2

    .line 311
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NB:Lo/kb;

    if-ne v0, v1, :cond_0

    .line 312
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 313
    const/4 v0, 0x0

    return-object v0

    .line 315
    :cond_0
    invoke-virtual {p1}, Lo/jz;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
