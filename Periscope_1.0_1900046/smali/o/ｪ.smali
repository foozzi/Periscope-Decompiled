.class Lo/ｪ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ｪ$1;,
        Lo/ｪ$ˎ;,
        Lo/ｪ$if;,
        Lo/ｪ$ˋ;,
        Lo/ｪ$ˊ;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private kI:Z

.field private final kU:Lo/ｪ$ˊ;

.field private final kV:Lo/ᵨ;

.field private kW:Z

.field private kX:Lo/ເ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u0ec0<Lo/\u1d68;Lo/\u1d68;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;>;"
        }
    .end annotation
.end field

.field private kY:Lo/ｪ$if;

.field private kZ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ｪ$ˊ;Lo/ᵨ;II)V
    .locals 2

    .line 43
    invoke-static {p1}, Lo/ᓲ;->ˉ(Landroid/content/Context;)Lo/ᓲ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᓲ;->Ꮀ()Lo/ი;

    move-result-object v0

    invoke-static {p1, p3, p4, p5, v0}, Lo/ｪ;->ˊ(Landroid/content/Context;Lo/ᵨ;IILo/ი;)Lo/ເ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, v1, v0}, Lo/ｪ;-><init>(Lo/ｪ$ˊ;Lo/ᵨ;Landroid/os/Handler;Lo/ເ;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lo/ｪ$ˊ;Lo/ᵨ;Landroid/os/Handler;Lo/ເ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\uff6a$\u02ca;Lo/\u1d68;Landroid/os/Handler;Lo/\u0ec0<Lo/\u1d68;Lo/\u1d68;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ｪ;->kI:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ｪ;->kW:Z

    .line 49
    if-nez p3, :cond_0

    .line 50
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lo/ｪ$ˋ;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo/ｪ$ˋ;-><init>(Lo/ｪ;Lo/ｪ$1;)V

    invoke-direct {p3, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 52
    :cond_0
    iput-object p1, p0, Lo/ｪ;->kU:Lo/ｪ$ˊ;

    .line 53
    iput-object p2, p0, Lo/ｪ;->kV:Lo/ᵨ;

    .line 54
    iput-object p3, p0, Lo/ｪ;->handler:Landroid/os/Handler;

    .line 55
    iput-object p4, p0, Lo/ｪ;->kX:Lo/ເ;

    .line 56
    return-void
.end method

.method private static ˊ(Landroid/content/Context;Lo/ᵨ;IILo/ი;)Lo/ເ;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Lo/\u1d68;IILo/\u10d8;)Lo/\u0ec0<Lo/\u1d68;Lo/\u1d68;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;>;"
        }
    .end annotation

    .line 172
    new-instance v2, Lo/ﾅ;

    invoke-direct {v2, p4}, Lo/ﾅ;-><init>(Lo/ი;)V

    .line 173
    new-instance v3, Lo/ﾃ;

    invoke-direct {v3}, Lo/ﾃ;-><init>()V

    .line 174
    invoke-static {}, Lo/Ꭻ;->ﮅ()Lo/ﭥ;

    move-result-object v4

    .line 175
    invoke-static {p0}, Lo/ᓲ;->ˌ(Landroid/content/Context;)Lo/ᕻ;

    move-result-object v0

    const-class v1, Lo/ᵨ;

    invoke-virtual {v0, v3, v1}, Lo/ᕻ;->ˊ(Lo/ɽ;Ljava/lang/Class;)Lo/ᕻ$ˊ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ᕻ$ˊ;->ˡ(Ljava/lang/Object;)Lo/ᕻ$ˊ$if;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lo/ᕻ$ˊ$if;->ˋ(Ljava/lang/Class;)Lo/ᓰ;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/ᓰ;->ˋ(Lo/ﭥ;)Lo/ເ;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/ເ;->ˋ(Lo/ﺀ;)Lo/ເ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ເ;->ˡ(Z)Lo/ເ;

    move-result-object v0

    sget-object v1, Lo/ʖ;->hm:Lo/ʖ;

    invoke-virtual {v0, v1}, Lo/ເ;->ˋ(Lo/ʖ;)Lo/ເ;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lo/ເ;->ᔈ(II)Lo/ເ;

    move-result-object v0

    return-object v0
.end method

.method private Ґ()V
    .locals 7

    .line 95
    iget-boolean v0, p0, Lo/ｪ;->kI:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/ｪ;->kW:Z

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    return-void

    .line 98
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ｪ;->kW:Z

    .line 100
    iget-object v0, p0, Lo/ｪ;->kV:Lo/ᵨ;

    invoke-virtual {v0}, Lo/ᵨ;->advance()V

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lo/ｪ;->kV:Lo/ᵨ;

    invoke-virtual {v2}, Lo/ᵨ;->ṟ()I

    move-result v2

    int-to-long v2, v2

    add-long v4, v0, v2

    .line 102
    new-instance v6, Lo/ｪ$if;

    iget-object v0, p0, Lo/ｪ;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lo/ｪ;->kV:Lo/ᵨ;

    invoke-virtual {v1}, Lo/ᵨ;->ẛ()I

    move-result v1

    invoke-direct {v6, v0, v1, v4, v5}, Lo/ｪ$if;-><init>(Landroid/os/Handler;IJ)V

    .line 103
    iget-object v0, p0, Lo/ｪ;->kX:Lo/ເ;

    new-instance v1, Lo/ｪ$ˎ;

    invoke-direct {v1}, Lo/ｪ$ˎ;-><init>()V

    invoke-virtual {v0, v1}, Lo/ເ;->ˋ(Lo/ﮆ;)Lo/ເ;

    move-result-object v0

    invoke-virtual {v0, v6}, Lo/ເ;->ˊ(Lo/ﭩ;)Lo/ﭩ;

    .line 106
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lo/ｪ;->stop()V

    .line 82
    iget-object v0, p0, Lo/ｪ;->kY:Lo/ｪ$if;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lo/ｪ;->kY:Lo/ｪ$if;

    invoke-static {v0}, Lo/ᓲ;->ˎ(Lo/ﭩ;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ｪ;->kY:Lo/ｪ$if;

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ｪ;->kZ:Z

    .line 88
    return-void
.end method

.method public start()V
    .locals 1

    .line 67
    iget-boolean v0, p0, Lo/ｪ;->kI:Z

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ｪ;->kI:Z

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ｪ;->kZ:Z

    .line 73
    invoke-direct {p0}, Lo/ｪ;->Ґ()V

    .line 74
    return-void
.end method

.method public stop()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ｪ;->kI:Z

    .line 78
    return-void
.end method

.method public ˊ(Lo/ﺭ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufead<Landroid/graphics/Bitmap;>;)V"
        }
    .end annotation

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Transformation must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-object v0, p0, Lo/ｪ;->kX:Lo/ເ;

    const/4 v1, 0x1

    new-array v1, v1, [Lo/ﺭ;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lo/ເ;->ˎ([Lo/ﺭ;)Lo/ເ;

    move-result-object v0

    iput-object v0, p0, Lo/ｪ;->kX:Lo/ເ;

    .line 64
    return-void
.end method

.method ˊ(Lo/ｪ$if;)V
    .locals 3

    .line 110
    iget-boolean v0, p0, Lo/ｪ;->kZ:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lo/ｪ;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 112
    return-void

    .line 115
    :cond_0
    iget-object v2, p0, Lo/ｪ;->kY:Lo/ｪ$if;

    .line 116
    iput-object p1, p0, Lo/ｪ;->kY:Lo/ｪ$if;

    .line 117
    iget-object v0, p0, Lo/ｪ;->kU:Lo/ｪ$ˊ;

    invoke-static {p1}, Lo/ｪ$if;->ˋ(Lo/ｪ$if;)I

    move-result v1

    invoke-interface {v0, v1}, Lo/ｪ$ˊ;->ᔾ(I)V

    .line 119
    if-eqz v2, :cond_1

    .line 120
    iget-object v0, p0, Lo/ｪ;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 123
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ｪ;->kW:Z

    .line 124
    invoke-direct {p0}, Lo/ｪ;->Ґ()V

    .line 125
    return-void
.end method

.method public ҁ()Landroid/graphics/Bitmap;
    .locals 1

    .line 91
    iget-object v0, p0, Lo/ｪ;->kY:Lo/ｪ$if;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ｪ;->kY:Lo/ｪ$if;

    invoke-virtual {v0}, Lo/ｪ$if;->ғ()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
