.class final Lo/jt;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<Ljava/lang/Number;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/kc;Ljava/lang/Number;)V
    .locals 1

    .line 202
    invoke-virtual {p1, p2}, Lo/kc;->ˊ(Ljava/lang/Number;)Lo/kc;

    .line 203
    return-void
.end method

.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 186
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {p0, p1, v0}, Lo/jt;->ˊ(Lo/kc;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 186
    invoke-virtual {p0, p1}, Lo/jt;->ˏ(Lo/jz;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public ˏ(Lo/jz;)Ljava/lang/Number;
    .locals 3

    .line 189
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NB:Lo/kb;

    if-ne v0, v1, :cond_0

    .line 190
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 191
    const/4 v0, 0x0

    return-object v0

    .line 194
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lo/jz;->nextInt()I

    move-result v2

    .line 195
    int-to-byte v0, v2

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 196
    :catch_0
    move-exception v2

    .line 197
    new-instance v0, Lo/gf;

    invoke-direct {v0, v2}, Lo/gf;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
