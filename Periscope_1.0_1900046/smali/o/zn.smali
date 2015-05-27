.class public Lo/zn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/zn$1;
    }
.end annotation


# instance fields
.field private final brN:Lo/vn;

.field private final brQ:Lo/zl;

.field private brS:Z


# direct methods
.method public constructor <init>(Lo/zl;Lo/vn;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lo/zn;->brQ:Lo/zl;

    .line 13
    iput-object p2, p0, Lo/zn;->brN:Lo/vn;

    .line 14
    return-void
.end method


# virtual methods
.method public onEventMainThread(Lo/aak;)V
    .locals 2

    .line 18
    sget-object v0, Lo/zn$1;->brV:[I

    invoke-virtual {p1}, Lo/aak;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 20
    :pswitch_0
    iget-boolean v0, p0, Lo/zn;->brS:Z

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lo/zn;->brQ:Lo/zl;

    invoke-interface {v0}, Lo/zl;->uU()V

    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lo/zn;->brQ:Lo/zl;

    invoke-interface {v0}, Lo/zl;->uV()V

    .line 25
    :goto_0
    iget-object v0, p0, Lo/zn;->brQ:Lo/zl;

    invoke-interface {v0}, Lo/zl;->uT()V

    .line 26
    goto :goto_1

    .line 29
    :pswitch_1
    iget-object v0, p0, Lo/zn;->brQ:Lo/zl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/zl;->ｃ(I)V

    .line 30
    goto :goto_1

    .line 35
    :pswitch_2
    iget-object v0, p0, Lo/zn;->brQ:Lo/zl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/zl;->ｩ(I)V

    .line 40
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public refresh()V
    .locals 1

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/zn;->brS:Z

    .line 48
    iget-object v0, p0, Lo/zn;->brN:Lo/vn;

    invoke-virtual {v0}, Lo/vn;->tW()Ljava/lang/String;

    .line 49
    return-void
.end method

.method public uR()V
    .locals 1

    .line 43
    iget-object v0, p0, Lo/zn;->brN:Lo/vn;

    invoke-virtual {v0}, Lo/vn;->tW()Ljava/lang/String;

    .line 44
    return-void
.end method
