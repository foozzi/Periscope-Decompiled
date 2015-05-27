.class final Lo/iz;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<Ljava/lang/StringBuilder;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 404
    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 404
    move-object v0, p2

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v0}, Lo/iz;->ˊ(Lo/kc;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public ˊ(Lo/kc;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 415
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lo/kc;->ᖮ(Ljava/lang/String;)Lo/kc;

    .line 416
    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 404
    invoke-virtual {p0, p1}, Lo/iz;->ˑ(Lo/jz;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public ˑ(Lo/jz;)Ljava/lang/StringBuilder;
    .locals 2

    .line 407
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NB:Lo/kb;

    if-ne v0, v1, :cond_0

    .line 408
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 409
    const/4 v0, 0x0

    return-object v0

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/jz;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
