.class public final Lo/ڋ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public flags:I

.field public ko:Ljava/nio/ByteBuffer;

.field public final sI:Lo/ɜ;

.field public sJ:J

.field private final sK:I

.field public size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lo/ɜ;

    invoke-direct {v0}, Lo/ɜ;-><init>()V

    iput-object v0, p0, Lo/ڋ;->sI:Lo/ɜ;

    .line 72
    iput p1, p0, Lo/ڋ;->sK:I

    .line 73
    return-void
.end method


# virtual methods
.method public ʶ(I)Z
    .locals 1

    .line 82
    iget v0, p0, Lo/ڋ;->sK:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 84
    :sswitch_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    .line 85
    const/4 v0, 0x1

    return v0

    .line 87
    :sswitch_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    .line 88
    const/4 v0, 0x1

    return v0

    .line 90
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method public ւ()Z
    .locals 2

    .line 97
    iget v0, p0, Lo/ڋ;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ח()Z
    .locals 2

    .line 104
    iget v0, p0, Lo/ڋ;->flags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public צ()Z
    .locals 2

    .line 111
    iget v0, p0, Lo/ڋ;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ب()V
    .locals 1

    .line 118
    iget-object v0, p0, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 121
    :cond_0
    return-void
.end method
