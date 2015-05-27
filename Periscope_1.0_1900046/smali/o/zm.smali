.class public Lo/zm;
.super Lo/zj;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/zm$1;
    }
.end annotation


# instance fields
.field private final brN:Lo/vn;


# direct methods
.method public constructor <init>(Lo/vn;Lo/zp;Lo/zw;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lo/zj;-><init>(Lo/vn;Lo/zp;Lo/zw;)V

    .line 19
    iput-object p1, p0, Lo/zm;->brN:Lo/vn;

    .line 20
    return-void
.end method


# virtual methods
.method public uR()V
    .locals 1

    .line 37
    iget-object v0, p0, Lo/zm;->brN:Lo/vn;

    invoke-virtual {v0}, Lo/vn;->tY()Ljava/lang/String;

    .line 38
    return-void
.end method

.method public ˊ(ZLo/aak;)V
    .locals 2

    .line 23
    sget-object v0, Lo/zm$1;->brV:[I

    invoke-virtual {p2}, Lo/aak;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 25
    :sswitch_0
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lo/zm;->uQ()V

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lo/zm;->uP()V

    .line 33
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
    .end sparse-switch
.end method
