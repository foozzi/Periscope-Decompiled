.class public Lo/ᓑ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private final װ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/\u1d58;>;"
        }
    .end annotation
.end field

.field private ᔄ:J

.field private ᔨ:Lo/ﭔ;

.field private ᔭ:Z

.field private final ᖕ:Lo/ﭠ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/ᓑ;->ᔄ:J

    .line 107
    new-instance v0, Lo/ᔆ;

    invoke-direct {v0, p0}, Lo/ᔆ;-><init>(Lo/ᓑ;)V

    iput-object v0, p0, Lo/ᓑ;->ᖕ:Lo/ﭠ;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᓑ;->װ:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method static synthetic ˊ(Lo/ᓑ;)Lo/ﭔ;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/ᓑ;->ᔨ:Lo/ﭔ;

    return-object v0
.end method

.method static synthetic ˋ(Lo/ᓑ;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/ᓑ;->ﺑ()V

    return-void
.end method

.method static synthetic ˎ(Lo/ᓑ;)Ljava/util/ArrayList;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/ᓑ;->װ:Ljava/util/ArrayList;

    return-object v0
.end method

.method private ﺑ()V
    .locals 1

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᓑ;->ᔭ:Z

    .line 74
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 77
    iget-boolean v0, p0, Lo/ᓑ;->ᔭ:Z

    if-nez v0, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lo/ᓑ;->װ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᵘ;

    move-object v2, v0

    .line 81
    invoke-virtual {v2}, Lo/ᵘ;->cancel()V

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᓑ;->ᔭ:Z

    .line 84
    return-void
.end method

.method public start()V
    .locals 6

    .line 55
    iget-boolean v0, p0, Lo/ᓑ;->ᔭ:Z

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lo/ᓑ;->װ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᵘ;

    move-object v5, v0

    .line 57
    iget-wide v0, p0, Lo/ᓑ;->ᔄ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 58
    iget-wide v0, p0, Lo/ᓑ;->ᔄ:J

    invoke-virtual {v5, v0, v1}, Lo/ᵘ;->ˊ(J)Lo/ᵘ;

    .line 60
    :cond_1
    iget-object v0, p0, Lo/ᓑ;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lo/ᓑ;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v0}, Lo/ᵘ;->ˊ(Landroid/view/animation/Interpolator;)Lo/ᵘ;

    .line 63
    :cond_2
    iget-object v0, p0, Lo/ᓑ;->ᔨ:Lo/ﭔ;

    if-eqz v0, :cond_3

    .line 64
    iget-object v0, p0, Lo/ᓑ;->ᖕ:Lo/ﭠ;

    invoke-virtual {v5, v0}, Lo/ᵘ;->ˊ(Lo/ﭔ;)Lo/ᵘ;

    .line 66
    :cond_3
    invoke-virtual {v5}, Lo/ᵘ;->start()V

    .line 67
    goto :goto_0

    .line 69
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᓑ;->ᔭ:Z

    .line 70
    return-void
.end method

.method public ˏ(Lo/ᵘ;)Lo/ᓑ;
    .locals 1

    .line 48
    iget-boolean v0, p0, Lo/ᓑ;->ᔭ:Z

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lo/ᓑ;->װ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    return-object p0
.end method
