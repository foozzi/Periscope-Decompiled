.class final Lo/iu;
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

    .line 302
    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/kc;Ljava/lang/Number;)V
    .locals 1

    .line 318
    invoke-virtual {p1, p2}, Lo/kc;->ˊ(Ljava/lang/Number;)Lo/kc;

    .line 319
    return-void
.end method

.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 302
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {p0, p1, v0}, Lo/iu;->ˊ(Lo/kc;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 302
    invoke-virtual {p0, p1}, Lo/iu;->ˏ(Lo/jz;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public ˏ(Lo/jz;)Ljava/lang/Number;
    .locals 4

    .line 305
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v3

    .line 306
    sget-object v0, Lo/ir$1;->LP:[I

    invoke-virtual {v3}, Lo/kb;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 308
    :sswitch_0
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 309
    const/4 v0, 0x0

    return-object v0

    .line 311
    :sswitch_1
    new-instance v0, Lo/hj;

    invoke-virtual {p1}, Lo/jz;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/hj;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 313
    :goto_0
    new-instance v0, Lo/gf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting number, got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/gf;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method
