.class public Lo/ajv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aju;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ajv$1;
    }
.end annotation


# instance fields
.field private final bBg:Lo/ajw;

.field private final brN:Lo/vn;


# direct methods
.method public constructor <init>(Lo/vn;Lo/ajw;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lo/ajv;->brN:Lo/vn;

    .line 12
    iput-object p2, p0, Lo/ajv;->bBg:Lo/ajw;

    .line 13
    return-void
.end method


# virtual methods
.method public onEventMainThread(Lo/aai;)V
    .locals 2

    .line 28
    sget-object v0, Lo/ajv$1;->bnK:[I

    iget-object v1, p1, Lo/aai;->bsV:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 30
    :sswitch_0
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lo/ajv;->bBg:Lo/ajw;

    invoke-virtual {v0}, Lo/ajw;->Av()V

    .line 36
    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public show()V
    .locals 1

    .line 17
    iget-object v0, p0, Lo/ajv;->brN:Lo/vn;

    invoke-virtual {v0}, Lo/vn;->tT()Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lo/ajv;->bBg:Lo/ajw;

    invoke-virtual {v0}, Lo/ajw;->show()V

    .line 19
    return-void
.end method

.method public ˊ(Lo/ajw$if;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lo/ajv;->bBg:Lo/ajw;

    invoke-virtual {v0, p1}, Lo/ajw;->ˋ(Lo/ajw$if;)Lo/ajw;

    .line 24
    return-void
.end method
