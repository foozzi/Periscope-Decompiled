.class final Lo/iw;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<Ljava/lang/String;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 346
    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public ˉ(Lo/jz;)Ljava/lang/String;
    .locals 2

    .line 349
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v1

    .line 350
    sget-object v0, Lo/kb;->NB:Lo/kb;

    if-ne v1, v0, :cond_0

    .line 351
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 352
    const/4 v0, 0x0

    return-object v0

    .line 355
    :cond_0
    sget-object v0, Lo/kb;->NA:Lo/kb;

    if-ne v1, v0, :cond_1

    .line 356
    invoke-virtual {p1}, Lo/jz;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 358
    :cond_1
    invoke-virtual {p1}, Lo/jz;->nextString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 346
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lo/iw;->ˊ(Lo/kc;Ljava/lang/String;)V

    return-void
.end method

.method public ˊ(Lo/kc;Ljava/lang/String;)V
    .locals 1

    .line 362
    invoke-virtual {p1, p2}, Lo/kc;->ᖮ(Ljava/lang/String;)Lo/kc;

    .line 363
    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 346
    invoke-virtual {p0, p1}, Lo/iw;->ˉ(Lo/jz;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
