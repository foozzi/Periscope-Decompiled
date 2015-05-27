.class final Lo/js;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<Ljava/lang/Boolean;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/kc;Ljava/lang/Boolean;)V
    .locals 1

    .line 179
    if-nez p2, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lo/kc;->ᖮ(Ljava/lang/String;)Lo/kc;

    .line 180
    return-void
.end method

.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 169
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lo/js;->ˊ(Lo/kc;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 169
    invoke-virtual {p0, p1}, Lo/js;->ᵎ(Lo/jz;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public ᵎ(Lo/jz;)Ljava/lang/Boolean;
    .locals 2

    .line 171
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NB:Lo/kb;

    if-ne v0, v1, :cond_0

    .line 172
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 173
    const/4 v0, 0x0

    return-object v0

    .line 175
    :cond_0
    invoke-virtual {p1}, Lo/jz;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
