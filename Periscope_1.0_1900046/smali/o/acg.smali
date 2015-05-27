.class public Lo/acg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/abt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/acg$1;,
        Lo/acg$ˊ;,
        Lo/acg$ˋ;,
        Lo/acg$if;
    }
.end annotation


# instance fields
.field private bnA:Lo/aad;

.field private final bny:Lo/ot;

.field private bxA:Ljava/lang/String;

.field private bxB:J

.field private bxC:Lo/acg$if;

.field private bxD:Lo/yz;

.field private bxE:Z

.field private bxb:Lo/aek$ˊ;

.field private final bxy:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<Lo/acb;>;"
        }
    .end annotation
.end field

.field private bxz:Z

.field private ẛ:J


# direct methods
.method public constructor <init>(Lo/ot;Lo/aad;Lo/yz;Lo/aek$ˊ;Z)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lo/acg;->bny:Lo/ot;

    .line 41
    iput-object p2, p0, Lo/acg;->bnA:Lo/aad;

    .line 42
    iput-object p3, p0, Lo/acg;->bxD:Lo/yz;

    .line 43
    iput-object p4, p0, Lo/acg;->bxb:Lo/aek$ˊ;

    .line 44
    iput-boolean p5, p0, Lo/acg;->bxE:Z

    .line 45
    iget-boolean v0, p0, Lo/acg;->bxE:Z

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Lo/acg$ˊ;

    invoke-direct {v1, p0}, Lo/acg$ˊ;-><init>(Lo/acg;)V

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lo/acg;->bxy:Ljava/util/concurrent/PriorityBlockingQueue;

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Lo/acg$ˋ;

    invoke-direct {v1, p0}, Lo/acg$ˋ;-><init>(Lo/acg;)V

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lo/acg;->bxy:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 51
    :goto_0
    return-void
.end method

.method static synthetic ˊ(Lo/acg;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/acg;->bxy:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method

.method private ˊ(Lo/acb;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lo/acg;->bxy:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method static synthetic ˊ(Lo/acg;Lo/acb;)Z
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Lo/acg;->ˋ(Lo/acb;)Z

    move-result v0

    return v0
.end method

.method static synthetic ˊ(Lo/acg;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lo/acg;->bxz:Z

    return p1
.end method

.method private ˋ(Lo/acb;)Z
    .locals 6

    .line 202
    iget-boolean v0, p0, Lo/acg;->bxE:Z

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lo/acg;->bxb:Lo/aek$ˊ;

    invoke-interface {v0}, Lo/aek$ˊ;->ym()Ljava/math/BigInteger;

    move-result-object v4

    .line 204
    iget-object v0, p1, Lo/acb;->bxr:Lo/ant;

    invoke-virtual {v0}, Lo/ant;->Ci()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lo/akn;->ⁱ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 205
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_0
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 210
    :cond_2
    invoke-virtual {p1}, Lo/acb;->wG()J

    move-result-wide v0

    iget-object v2, p0, Lo/acg;->bxb:Lo/aek$ˊ;

    invoke-interface {v2}, Lo/aek$ˊ;->xV()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method static synthetic ˋ(Lo/acg;)Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lo/acg;->bxz:Z

    return v0
.end method

.method static synthetic ˎ(Lo/acg;)Lo/ot;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/acg;->bny:Lo/ot;

    return-object v0
.end method

.method static synthetic ˏ(Lo/acg;)Lo/aek$ˊ;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/acg;->bxb:Lo/aek$ˊ;

    return-object v0
.end method

.method static synthetic ᐝ(Lo/acg;)Lo/aad;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/acg;->bnA:Lo/aad;

    return-object v0
.end method


# virtual methods
.method public kill()V
    .locals 1

    .line 68
    iget-object v0, p0, Lo/acg;->bxC:Lo/acg$if;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lo/acg;->bxC:Lo/acg$if;

    invoke-static {v0}, Lo/acg$if;->ˊ(Lo/acg$if;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lo/acg;->bny:Lo/ot;

    invoke-virtual {v0, p0}, Lo/ot;->ː(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public onEventMainThread(Lo/abu;)V
    .locals 4

    .line 86
    invoke-virtual {p0, p1}, Lo/acg;->ˊ(Lo/abu;)V

    .line 87
    invoke-virtual {p1}, Lo/abu;->wC()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/acb;

    move-object v3, v0

    .line 88
    invoke-direct {p0, v3}, Lo/acg;->ˊ(Lo/acb;)V

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p1}, Lo/abu;->wC()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lo/acg;->bxz:Z

    .line 91
    return-void
.end method

.method public onEventMainThread(Lo/acf;)V
    .locals 4

    .line 95
    sget-object v0, Lo/acg$1;->bxF:[I

    invoke-virtual {p1}, Lo/acf;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 97
    :sswitch_0
    const-string v0, "ReplayChatQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching more from pubnub with this token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lo/acg;->bxB:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lo/acg;->bxD:Lo/yz;

    iget-object v1, p0, Lo/acg;->bxA:Ljava/lang/String;

    iget-wide v2, p0, Lo/acg;->bxB:J

    invoke-virtual {v0, v1, v2, v3}, Lo/yz;->ˎ(Ljava/lang/String;J)V

    .line 102
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public prepare()V
    .locals 2

    .line 55
    iget-object v0, p0, Lo/acg;->bxC:Lo/acg$if;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lo/acg;->kill()V

    .line 58
    iget-object v0, p0, Lo/acg;->bxy:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/acg;->bxB:J

    .line 61
    :cond_0
    iget-object v0, p0, Lo/acg;->bny:Lo/ot;

    invoke-virtual {v0, p0}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 62
    new-instance v0, Lo/acg$if;

    invoke-direct {v0, p0}, Lo/acg$if;-><init>(Lo/acg;)V

    iput-object v0, p0, Lo/acg;->bxC:Lo/acg$if;

    .line 63
    iget-object v0, p0, Lo/acg;->bxC:Lo/acg$if;

    invoke-virtual {v0}, Lo/acg$if;->start()V

    .line 64
    return-void
.end method

.method public ʽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lo/acg;->bxA:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public ˊ(Lo/abu;)V
    .locals 9

    .line 105
    const-wide/16 v4, 0x0

    .line 106
    invoke-virtual {p1}, Lo/abu;->wC()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/acb;

    move-object v7, v0

    .line 107
    iget-wide v0, v7, Lo/acb;->bxs:J

    iput-wide v0, p0, Lo/acg;->bxB:J

    .line 108
    sget-object v0, Lo/acg$1;->bwW:[I

    iget-object v1, v7, Lo/acb;->bxq:Lo/anu;

    invoke-virtual {v1}, Lo/anu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 110
    :pswitch_0
    iget-object v0, v7, Lo/acb;->bxr:Lo/ant;

    invoke-virtual {v0}, Lo/ant;->Co()Ljava/lang/Double;

    move-result-object v8

    .line 111
    if-eqz v8, :cond_0

    .line 112
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr v4, v0

    .line 114
    :cond_0
    iget-wide v0, p0, Lo/acg;->ẛ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 115
    iget-wide v0, v7, Lo/acb;->bxs:J

    iput-wide v0, p0, Lo/acg;->ẛ:J

    goto :goto_1

    .line 125
    :pswitch_1
    iget-wide v0, v7, Lo/acb;->bxs:J

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lo/acg;->ẛ:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    invoke-virtual {v7, v0, v1}, Lo/acb;->ˀ(J)V

    .line 130
    :cond_1
    :goto_1
    goto/16 :goto_0

    .line 131
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
