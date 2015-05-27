.class public Lo/agq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/agq$1;,
        Lo/agq$if;
    }
.end annotation


# instance fields
.field private bAX:Z

.field private bDL:Lo/agq$if;

.field private bDM:I

.field private bDN:J

.field private bDO:J

.field private bDP:Lo/ot;

.field private bDQ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/ot;Lo/agq$if;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1, p0}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lo/agq;->bDP:Lo/ot;

    .line 45
    iput-object p2, p0, Lo/agq;->bDL:Lo/agq$if;

    .line 46
    iput-object p3, p0, Lo/agq;->bDQ:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private ˉ(Lo/ant;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lo/agq;->bDQ:Ljava/lang/String;

    invoke-virtual {p1}, Lo/ant;->Ct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lo/agq;->bDL:Lo/agq$if;

    invoke-interface {v0, p1}, Lo/agq$if;->ʿ(Lo/ant;)V

    .line 90
    :cond_0
    return-void
.end method

.method private ˌ(Lo/ant;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lo/agq;->bDL:Lo/agq$if;

    invoke-virtual {p1}, Lo/ant;->Cb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/ant;->Ch()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lo/agq$if;->ʾ(Ljava/lang/String;I)V

    .line 107
    return-void
.end method

.method private ι(Lo/ant;)V
    .locals 4

    .line 110
    iget-boolean v0, p0, Lo/agq;->bAX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agq;->bDQ:Ljava/lang/String;

    invoke-virtual {p1}, Lo/ant;->Cb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    return-void

    .line 115
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo/agq;->bDO:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x19

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 116
    return-void

    .line 119
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/agq;->bDO:J

    .line 121
    iget v0, p0, Lo/agq;->bDM:I

    if-nez v0, :cond_2

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/agq;->bDN:J

    .line 124
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo/agq;->bDN:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 126
    iget v0, p0, Lo/agq;->bDM:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_3

    .line 128
    return-void

    .line 131
    :cond_3
    iget-object v0, p0, Lo/agq;->bDL:Lo/agq$if;

    invoke-interface {v0, p1}, Lo/agq$if;->ι(Lo/ant;)V

    .line 132
    iget v0, p0, Lo/agq;->bDM:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/agq;->bDM:I

    .line 133
    return-void

    .line 137
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lo/agq;->bDM:I

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/agq;->bDN:J

    .line 140
    iget-object v0, p0, Lo/agq;->bDL:Lo/agq$if;

    invoke-interface {v0, p1}, Lo/agq$if;->ι(Lo/ant;)V

    .line 141
    return-void
.end method


# virtual methods
.method public kill()V
    .locals 1

    .line 50
    iget-object v0, p0, Lo/agq;->bDP:Lo/ot;

    invoke-virtual {v0, p0}, Lo/ot;->ː(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public onEventMainThread(Lo/acd;)V
    .locals 3

    .line 94
    invoke-virtual {p1}, Lo/acd;->wH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget v0, p1, Lo/acd;->bxu:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 96
    iget-object v0, p0, Lo/agq;->bDL:Lo/agq$if;

    invoke-interface {v0, v2}, Lo/agq$if;->ɫ(I)V

    .line 98
    :cond_0
    iget-object v0, p0, Lo/agq;->bDL:Lo/agq$if;

    iget-object v1, p1, Lo/acd;->boq:Ljava/util/List;

    invoke-interface {v0, v1}, Lo/agq$if;->ᴵ(Ljava/util/List;)V

    .line 99
    return-void
.end method

.method public onEventMainThread(Lo/ant;)V
    .locals 2

    .line 55
    sget-object v0, Lo/agq$1;->bwW:[I

    invoke-virtual {p1}, Lo/ant;->Cf()Lo/anu;

    move-result-object v1

    invoke-virtual {v1}, Lo/anu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 59
    :pswitch_0
    iget-object v0, p0, Lo/agq;->bDL:Lo/agq$if;

    invoke-interface {v0, p1}, Lo/agq$if;->ʾ(Lo/ant;)V

    .line 60
    goto :goto_0

    .line 63
    :pswitch_1
    invoke-direct {p0, p1}, Lo/agq;->ι(Lo/ant;)V

    .line 64
    invoke-direct {p0, p1}, Lo/agq;->ˌ(Lo/ant;)V

    .line 65
    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v0, p0, Lo/agq;->bDL:Lo/agq$if;

    invoke-interface {v0}, Lo/agq$if;->yx()V

    .line 69
    goto :goto_0

    .line 72
    :pswitch_3
    iget-object v0, p0, Lo/agq;->bDL:Lo/agq$if;

    invoke-interface {v0}, Lo/agq$if;->yy()V

    .line 73
    goto :goto_0

    .line 76
    :pswitch_4
    invoke-direct {p0, p1}, Lo/agq;->ˉ(Lo/ant;)V

    .line 77
    .line 84
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public Ⅰ(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lo/agq;->bAX:Z

    .line 103
    return-void
.end method
