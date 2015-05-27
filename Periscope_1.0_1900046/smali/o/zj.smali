.class public Lo/zj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/zj$1;
    }
.end annotation


# instance fields
.field private final brN:Lo/vn;

.field protected brO:Lo/zp;

.field protected brP:Lo/zw;

.field private brQ:Lo/zl;

.field private brR:Ljava/lang/Runnable;

.field private brS:Z


# direct methods
.method public constructor <init>(Lo/vn;Lo/zp;Lo/zw;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lo/zj;->brN:Lo/vn;

    .line 35
    iput-object p2, p0, Lo/zj;->brO:Lo/zp;

    .line 36
    iput-object p3, p0, Lo/zj;->brP:Lo/zw;

    .line 37
    return-void
.end method

.method static synthetic ˊ(Lo/zj;)Lo/vn;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/zj;->brN:Lo/vn;

    return-object v0
.end method

.method static synthetic ˋ(Lo/zj;)Ljava/lang/Runnable;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/zj;->brR:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public onEventMainThread(Lo/aak;)V
    .locals 2

    .line 45
    sget-object v0, Lo/zj$1;->brV:[I

    invoke-virtual {p1}, Lo/aak;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 48
    :sswitch_0
    iget-object v0, p0, Lo/zj;->brQ:Lo/zl;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lo/zj;->brQ:Lo/zl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/zl;->ｩ(I)V

    goto :goto_1

    .line 54
    :goto_0
    iget-boolean v0, p0, Lo/zj;->brS:Z

    invoke-virtual {p0, v0, p1}, Lo/zj;->ˊ(ZLo/aak;)V

    .line 58
    :cond_0
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public refresh()V
    .locals 1

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/zj;->brS:Z

    .line 125
    invoke-virtual {p0}, Lo/zj;->uR()V

    .line 126
    return-void
.end method

.method uP()V
    .locals 1

    .line 74
    iget-object v0, p0, Lo/zj;->brQ:Lo/zl;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lo/zj;->brQ:Lo/zl;

    invoke-interface {v0}, Lo/zl;->uV()V

    .line 77
    :cond_0
    return-void
.end method

.method uQ()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/zj;->brS:Z

    .line 81
    iget-object v0, p0, Lo/zj;->brQ:Lo/zl;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lo/zj;->brQ:Lo/zl;

    invoke-interface {v0}, Lo/zl;->uU()V

    .line 84
    :cond_0
    return-void
.end method

.method public uR()V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/zj;->brN:Lo/vn;

    invoke-virtual {v0}, Lo/vn;->tX()Ljava/lang/String;

    .line 88
    return-void
.end method

.method public uS()V
    .locals 1

    .line 91
    iget-object v0, p0, Lo/zj;->brP:Lo/zw;

    invoke-virtual {v0}, Lo/zw;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/akn;->ᖦ(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public ˊ(Lo/zl;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lo/zj;->brQ:Lo/zl;

    .line 41
    return-void
.end method

.method protected ˊ(ZLo/aak;)V
    .locals 2

    .line 61
    sget-object v0, Lo/zj$1;->brV:[I

    invoke-virtual {p2}, Lo/aak;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 63
    :sswitch_0
    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0}, Lo/zj;->uQ()V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lo/zj;->uP()V

    .line 71
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method public ﹾ(J)V
    .locals 2

    .line 95
    iget-object v0, p0, Lo/zj;->brR:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lo/zk;

    invoke-direct {v0, p0, p1, p2}, Lo/zk;-><init>(Lo/zj;J)V

    iput-object v0, p0, Lo/zj;->brR:Ljava/lang/Runnable;

    .line 117
    :cond_0
    iget-object v0, p0, Lo/zj;->brP:Lo/zw;

    invoke-virtual {v0}, Lo/zw;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/zj;->brR:Ljava/lang/Runnable;

    invoke-static {v0, v1, p1, p2}, Lo/akn;->ˊ(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 118
    return-void
.end method
